Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49427189F36
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733216754; cv=none; b=ABTiMlIbOCgm6G1I8+pVTuoMter9v+ZoUCWJRg+QdsMgEoROVcQuZud8UZSGVKIg/RwseTfKj+fvRqazyAjv/sJBVA7lVT+wXvpuQgkS0pfB9uLEAuyWxicgmZqQajtLtiUMhsCc081UR6wVHjxSSnADM5f7eISmPt/E+6kNqL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733216754; c=relaxed/simple;
	bh=sF00WqUrTWECximbIbh1hJC9jfOrCTkWtWK4/pR/6Mk=;
	h=To:Subject:From:Message-Id:Date; b=pk0sG99zuPHYYkOVYYDkQ6Hs08CKJR2nt5qDWa2SePYoB/l2rDTAmkv5sZ7dpUGquo+LEclNKIH4cxGhUNpX3AyQ1SV3JciTxKvvQIFoZW2yl8qJlVi9COcuDkg5AoxNYsXCBdaSTum4eZRhTDzxh15JDJL8GDaHXXhKGFcJOVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k1ZXXDVw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k1ZXXDVw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE23C4CECF
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733216753;
	bh=sF00WqUrTWECximbIbh1hJC9jfOrCTkWtWK4/pR/6Mk=;
	h=To:Subject:From:Date:From;
	b=k1ZXXDVwTt7M6aNQA3XpxbRL1Rt9xUnvJR1kpK/qfOT2Q8YNeJHBoTtoU7HqoaudP
	 zleuqTj5NtF4AWXS23lBOAurfSqhfnm9wQdx96pW3fa8XbqFMP+uuhxraK6WiL8Uw1
	 R8aqScMAg4gODui9JB6ZPEot6e1jh1M9agLicMcAFolMFy/814aFocER5LvcvUxvmA
	 ehZFXvaGAiOaH4WYkp9XwiGSLRFdFLPhu2tOM18ziR8/JVOKniW16F7zxK7egDRDs1
	 GIjTe00JdIUhAIPfmRuMaGDtpQ9z8gZGtbUaGoxtgeYoDNSipGsFTqt/zc94eq8jao
	 JC6UpJoEnNNww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99031E6C61A
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173321675361.26390.4737042994566312248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78bcfbe8b7e368cb361e4d890085041f36e534b5a1f07690796ddc7320c3cebd
Date: Tue, 03 Dec 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733216753
