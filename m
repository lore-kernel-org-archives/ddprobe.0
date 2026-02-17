Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05A273783D5
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 19:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771358094; cv=none; b=gro9JGguD+56XPn1lJGEMtwLwX2yUoy9YEhw0Lcllym+olTl9o3am5j24CrN1d7so9sa0hHIWfEFPEzQJldywqYKXK0cNtFGgHAKwqaAoBmjuxlxbtOnnqQzUnThf8E3dSV8PrmAvO6BzrovupdyNLVEhKsH82aSarbYfIzyons=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771358094; c=relaxed/simple;
	bh=+AAeFYxdvTSa+kbhe70U1dVTuEUnWCPqfBtZkSwZ+/c=;
	h=To:Subject:From:Message-Id:Date; b=LhP+KBFdgokA4T3rDPh/Rxx0LTc5BE39ThGO60s+sGAbShsOCQ+gAxGoChRi783Jnc+/gL1Dm4YhkGKoE1mVImksnc7pkYZyQaoSE2X2/Zlv4QSoWI/2EPR0pVPdQ2gmQqvBxnK1Q24KAu9fw/pQziI0BEQ3g/RILP+2g60y8+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rlboUruv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rlboUruv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A503EC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 19:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771358093;
	bh=+AAeFYxdvTSa+kbhe70U1dVTuEUnWCPqfBtZkSwZ+/c=;
	h=To:Subject:From:Date:From;
	b=rlboUruvceb6Y2FABz/GvB/KJHe0LDbW4yFG0+HmExWY/K8x4Q3HophWYvapeFBN7
	 5Ye/0A/4VcQgfCl57KHhqeqIJGDO9J/c7Lb1PfHfk9bC50PeCdr47bMVioFCS/jm5f
	 ehKbmhf/7Fxl008WZR/IGErkZHAb92ioQS1jJ+n0borOEIWnNZXW2h70PD1/AEJxAB
	 o8TcuC8qiWAMljBt/zmCAL1YEKstdtNjTM7Nl06tNMmgqkfU64wYbz7kKQr5qBsWzE
	 Trvj3+6hUqd3391ScvI3DMlnqsaUfI2uOPDP3WNxMoBQWL5RStX09OyFtIYbwMgOUc
	 3SZI8egyQWCSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942EBE9A03A
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 19:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177135809359.10594.12574187169340968564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a924b7c62b4dde2ea895848265211b5b7c00c6d21f0e4f8fd4c24dde128c382e
Date: Tue, 17 Feb 2026 19:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771358093
