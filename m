Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 357402F8BF4
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758580795; cv=none; b=Rd0U8AbC4N+g/V17kOBUWbMKqkcDT5IRvsEK1ofJMC5nVMvrE1toJ5IMRfyTBYmglhn24LNKF2GgUnlrJG8YMY0dpkKAbU1U1Nmplp4REdc9KctT6DUz3pQTA3/NNetHB6y1De97xZCIAdt4j+K27w6W+ahJOXJIaDQBOctZNmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758580795; c=relaxed/simple;
	bh=MXq2z9UdPvoSFP0bO8UAC5ozCtIKhy0ZrkqW3GkLhNk=;
	h=To:Subject:From:Message-Id:Date; b=mt0+1dSR3RF9wAWlF/NTS3JepKgPp3XanDXDkNy9qB9rnPMlwq0ufvq59o81/OfUyiEg4JTCztj4LA0t/HvI37nRW51iiwylR/8vRcDgLK0lOkrvfStSYqR2mbCIqKjKVuFVPdl9MjFXzNeicytQdZq0/y/JGPrY61CFb9MByUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c74wYVlA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c74wYVlA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB580C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758580793;
	bh=MXq2z9UdPvoSFP0bO8UAC5ozCtIKhy0ZrkqW3GkLhNk=;
	h=To:Subject:From:Date:From;
	b=c74wYVlAm/tiGzJTwe2Q7Sf4f9f6XVFIfWvmHESmV7j+iUp++Nl6r4Z8vYgEh+vGc
	 DUpzZj2cnQg3Q3clGuiPMst3d6/7zi/pNpNlGyoKj9qshUCVPnrdWguPoQTojx4Dye
	 u+Qe/OxhjhiZo0beRBxKAAZcdYr9WMVr2IzQxxr3MTyf9CX5w2fGXjV7/ecwttO0wG
	 7KLxxQHApXH9dcL2gWUPy79EXUGWFPJic7DXc6YPrmjQoBQzKh3Smawt/OA5/wsQmc
	 xY91Je09TLEYY5/7WupKh9icHQPv/L187u2bR064eViheabd7QYTt1B7IWqOw6sknE
	 gPF/gLi4cJOtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94080CA100F
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175858079358.672.11811316273942322568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 722ddfa52b363df18c60b17293fa7b0ef136b18b7691f002a643c50ae0e65098
Date: Mon, 22 Sep 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758580793
