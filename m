Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7A6C3314A0
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 12:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765802573; cv=none; b=bOgbWjxuwpugkQLI9pzYBgTe+MzRZ3W1YNUFPbs0w0jfZZhGA/RNvYJd2QaqCCyE2EIOCa8ZoubaNDOihV1OTFEKXMPwTjliwdwDHMdgVwTlpG6r0Iyup62s4ha/1fXILTDgEqxALl7ae5btU1EJIFSV/fB2ArAypqdh/RhJhzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765802573; c=relaxed/simple;
	bh=AXcWiagjup2JGbxQH1voluPGYBSeeppmDVCfXsybMM0=;
	h=To:Subject:From:Message-Id:Date; b=XoM4ZYgC/ZweP8GTQk46lLn2ae4A3VyZvXnJuKeumKfgfOoavCCQbD/8p9dB5/Z9WYL2wvNCp4SG95k/eFbCjm2ogpcsUPrx9yYneSl5Yq6shNwzdW5WkNmmhXAJCSFUkfMhmWX1uZXTW199ZY9McqNBaKzYbKd207qzNl5y6a4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WfnoJKvu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WfnoJKvu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AFDFC4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 12:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765802573;
	bh=AXcWiagjup2JGbxQH1voluPGYBSeeppmDVCfXsybMM0=;
	h=To:Subject:From:Date:From;
	b=WfnoJKvukAUTPk7WoNGVZVx5yc89hivJFCiLI8cWZXIfC8sfEyTdGeGBPZy/l9nAr
	 RHBWI4SM235s507e15qYR8o4XDxQUDYEDFtftcC2L1jh3mBOGf/CLHIN7goWd1OmK2
	 KZRD+7ex80K6rjApzHfImsfcg/hNj+uvIwDje21OU12hVdCj/LklDe7CShcO8E86ml
	 JGJZS12r8pj0PyKudrdyTI+0WtwR22/FsqMvZS42UM/fC5VKCqCh6iQWjDXNgEGs9L
	 auggzVmpZdMddQFx8s73vGTnl6N7atg/1gi/uXyDo762kDxEG1Cyt4N29r3zhTRXWp
	 0B9fi0hzqADMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D38D5B16F
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 12:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176580257359.21439.9810356184242660933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8e391d7e8850ae00fa6fc150255a8506058e6ee07108b72810908e91c522069
Date: Mon, 15 Dec 2025 12:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765802573
