Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1D015687D
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752258594; cv=none; b=qoZ+02PHDdC05V/gY47tbBMPcuEGCdLbjvag1HFraVa+X8p+v6m0rfsoUEiIuT8pfpEFzJnr2nbyFykjqTi3pSR/9ep09tfqCofvaI9E42VBWKdb0UfUN+1+/+pmLsVPVIakxH6VarCWLpb8IP2vHcSdCEYUmAJv/um1j2Jx0Tk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752258594; c=relaxed/simple;
	bh=uOBjh7iOU58TBISrhA/cGS9/VxLgRJo9oL08tXubRbQ=;
	h=To:Subject:From:Message-Id:Date; b=a5iDoU9UCG5k7ApVypbbfpO59uio2uS2W3RFOVxwl80eiKCb9SJfuWLrPU2Wy5aj9Egv1mtx4mVJ8T88/fSZUPd+7oudaB6A6s4rxZwZLHn+ywIeKnfJrgHK/g+UXZrim+M2Z0D4NMO1bsEJXx23Dr+0es8gvRBPD0qwZ0qLOG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UeVNVUGY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UeVNVUGY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7896C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752258593;
	bh=uOBjh7iOU58TBISrhA/cGS9/VxLgRJo9oL08tXubRbQ=;
	h=To:Subject:From:Date:From;
	b=UeVNVUGY2AJ6Z43BJx9x2/wuxQcDuDeORxOHie5I4WiaRWgnz2Qxv4f0UzRVkfVQc
	 HBthDzkghEDKMf/6TdwRzziFyVgbyXPMBY9ZX5TCUcwjGUPTxwyNexxog/5stl9Mkd
	 xVVTvGwmijuDWySxe0nmMc5M1/SE0ygAITdWD0AvBmhwQjMR6D855QaTvu83Ejx+Vr
	 lOwR96EUXUjUskw4YGMTqi96oOt6c30fjOptgfeQQeNJPPWFKDLuRdbuRO2s9KVTmV
	 YEEmDn9O6LFyuHBxWpNs68jB89T/b+lPIFzXzpUAjGAnIfW5JdCk5+gowRdhLjAbNN
	 gtCdeJW+V9pig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952C6C83F1B
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175225859358.26976.10464253113317123825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee144640a314b81f665034b93014cf09a4f054c62956999315edd9aa2a43b5d5
Date: Fri, 11 Jul 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752258593
