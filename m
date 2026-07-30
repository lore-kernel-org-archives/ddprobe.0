Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FE7E3839AA
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785381034; cv=none; b=jp561A2g1C30MTOYudSBurVLERjY3bNWRsSvsK5Wa/D+xtL7ClkKZehtRwpoFmm6HHKpxXtwTuPIXQ8MzxlNf33/hSXobSSu+2RoBxs7yl5auPSqvFysHPcDWWqEXviND42LvgSNmqsnSDiJhgKn0/DSAUuSr935lwHqB13U6m0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785381034; c=relaxed/simple;
	bh=0yV0zmzgWaXXUSjoEh4IU/0jDi2br83QzadyEz8byYE=;
	h=To:Subject:From:Message-Id:Date; b=IP6KUw3QLvUFPENbmvao2lBr8bl+xGr8RDWx08kkGyPgdcQvKbvf2PPgJt/DK91jVFpUXO1g6lX0nClx6VL7SnPDr6TXI0XCCzyfitikMwN9Pv8bNTi16Oe7H2wp19UoRDvtnRIAlMfzaykPWhpN1SlJPefIR8/udwM39CPqddY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OK8GnsqI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OK8GnsqI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD75BC4AF09
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785381033;
	bh=0yV0zmzgWaXXUSjoEh4IU/0jDi2br83QzadyEz8byYE=;
	h=To:Subject:From:Date:From;
	b=OK8GnsqIG5buxb/FIvgMJiqXuaLX4Gjna2U1cgXXc3GALR39NtfPQYuJsYRLgcdfb
	 VoTn4/kTNIKPlGuJ3E8Nf/fZiGBUVmjKT5vTcnkX2jZBoTaM35f9H/UHG0Uno6Ju/O
	 X/cF1BCFiQ9j/Eaj+7So4iLkt+fS4WGc4RlTKYV+xcSHeIzAxo31HYr59KrjFCkWod
	 LUO60xnmfYFexPUa2B8/lqjETvmcU8Xc3aW0ZtVNkWr0t/1jAWTsdbD/6k/G7n2qAJ
	 krZnnEtC4+XGEQnlJI72WAzHCd9zOuK4fptliodWMZN7C/Ny61zaMhjEN2TJsPqShY
	 e0joAFkrUFBSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7A07C54FCD
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178538103373.13871.13303174338297655309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d77acc24794f2e1adead49833ef33853fd0b3e332d87f3efcde579df958f1102
Date: Thu, 30 Jul 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785381033
