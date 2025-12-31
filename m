Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC16D31327A
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 08:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767171234; cv=none; b=d4iC+bD9e07s8qqMvjfQWp3v+XEVJVbT8GqKiOVuO5LqY4lMI4StDCWZRN7/LdhSJFAOqWB/A6mbQp5PYzEZrQAyiyKILvzHeZw9kXWjFvtONA6kd+JlYVTBPNQoQRIVTRiC0xe0UHUS92FYnGPC0OPOC1u7/7Tjx8jPH1Zz5o0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767171234; c=relaxed/simple;
	bh=w8m89U1GuQwB0COd/uBV7kzCfsl9a+U9AQbQdmR2SxU=;
	h=To:Subject:From:Message-Id:Date; b=GdnX+llyUQHFdSyS/hwZAVp7WoJ5hWvwqPT6jL2Be3prxYEc7yz8L2fEnBOTTLajNJ8NblL5/B+pO21FilccDNfJ2FnQ/VrIhlAA8sO61KzqnSQNaFfDn+pGVHCSBy6COC5KdqbPpupLKJWyX9ogp5cyABfr3xReO8qAkxP+7zo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lp+HGe8o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lp+HGe8o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07D8C116D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 08:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767171233;
	bh=w8m89U1GuQwB0COd/uBV7kzCfsl9a+U9AQbQdmR2SxU=;
	h=To:Subject:From:Date:From;
	b=lp+HGe8orQD/H2p1W19DifXG6hQ5GDjK1u8gWX41cwcUvZBbfLQKOrqrocd/XZutF
	 dvsjv1yX910PldVtmcLCC2VZ6nXpmezergq7AlFjapODRNJag73Z76+pVFEJKzXqUF
	 YJivnlfTMhFWzhEs+T1CzJLPXuNlhYEyqoVdIIDyPfgfPyV8u9ShPrlAOEe/mjpVwN
	 un+RcR3pMT1SZAzcMFvmSojU2MtLye36FZ6CGtIGGd3WsoZFiEcEfTXz5cR5mvsDmR
	 3jATAJ7V8JIdfTGQ1mStSnKnZs48ZBtwXCzshANEDUHrOOhgz1G2RakLWI7gmzJNz+
	 53re7+iyOf0Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F261EE57EC
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 08:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176717123357.6031.16480355494842874797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 416bd8f5c94363922244a9cf47244be2cd6cdca7814310c51c99d5639578ed92
Date: Wed, 31 Dec 2025 08:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767171233
