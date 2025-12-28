Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6494128000C
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 20:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766952234; cv=none; b=A9Xmuy6NGXCPB59zMka97YT3Rw83cgytLr7FBct+Eb0JzKGQQcaY0DC0tWGcClzt8zvgjoAOyBNRF/S87APj/J0eJk4cBdW2n4DY4Vmu15cftmpCdUGBYR8SnRrJWrjAqHqSPe/DMWcpH9ygxokPvdj4NShmVlXBf2rcBc0endk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766952234; c=relaxed/simple;
	bh=muPd9zbEAucQHxHBdDZI6TsE6w4Q68Op6BdPZeuOv/8=;
	h=To:Subject:From:Message-Id:Date; b=uQHokvi+LqX6sK1ZpYso8EEPmYH06bjITbN8HM88cA2CDAoKj3mreGKZr3Q09/gQ68tLOxl+abBwGDJ65+BqjdKFsYNmOgLq8flMKSm3yJ439i9i6lu23ori2BmgTWJz67wONyw1zSeY1kBwJsLsSmNAszlqkVMcSbXQ0PAVjlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HZY3+LVB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HZY3+LVB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED35EC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 20:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766952234;
	bh=muPd9zbEAucQHxHBdDZI6TsE6w4Q68Op6BdPZeuOv/8=;
	h=To:Subject:From:Date:From;
	b=HZY3+LVBsz/TN1kr2+ihagAPy2FIs6Aoi7aBNb86ZaCY77OYX+Sgfh4TR/FuyDq2n
	 CITsCAX5fZWftp51jo9d7yP5WkWMB0QhHKMTQMkqx/Xy4vb/C5BfXoUUUHvOGWO45v
	 Am1/03XGAJlnR5M41Qequet+f5Na2x2u3scbuSF2ajFLk46u71A5WZwaUr1QjKJyGW
	 cHEGerrYJBZ5Uq3eQYgUXjEVnRik58mCaS30XohqdrshtOPC2FYRX9yCfDAvPM59Rc
	 k3i9nIYTX/wBAHbsAPjgZGbvXC75CQHipZ/MvNrY3DoW10yqTQCyu/BpkSJvtoqyfS
	 uODTY4pZ+hsoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B16AAD3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 20:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176695223365.7260.9950693885437452307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6c52571619ec5961b815af5cec3561ca370eaadc4cd2a3e8e08f5ebbf3a7f19
Date: Sun, 28 Dec 2025 20:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766952233
