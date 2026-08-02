Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372072931D3
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785684034; cv=none; b=Z/gQW8xD4pQz33NhTjw3VaBW4L7y6fAtx7tHhu1XhA1cg69sa2HpBK6dO9EhQMW4THYjp3J9W5F26f2ixu/7cOx4laAU49sG3mLrqfyyD122y8K/KZ5Va9dwTuyNSWvI2TrmA1zdqwZ95DPCFZnzsdHeLyeiUvBZ+pjZMtoFLxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785684034; c=relaxed/simple;
	bh=J8qFFQx2grE0lPwItru7rarmH2APUsmOkkGGd4rE028=;
	h=To:Subject:From:Message-Id:Date; b=Dd0gYXGww0Y5L5QqhYGufkDRuN7oGUNU02UzW+bVAiXRqip9YZP1H+Z3aY/SXFHv2tQsdDPIoAC/J+A7FZroOy0UmsAlN8PvFkp16/F2LKngfBGAecAsc+ifVR7VN3sz6gZlOp7CfQ1yJZZXgljP1kqiakmbbiECoaI+qcfIhLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YtOGbYs4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YtOGbYs4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB5CDC19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785684033;
	bh=J8qFFQx2grE0lPwItru7rarmH2APUsmOkkGGd4rE028=;
	h=To:Subject:From:Date:From;
	b=YtOGbYs4zdqFJoOmXXG/q0aeWpurhDfodmOu3HacGFTwuTblRrnl8yrXwmzxUAMIo
	 p5IN8jhNkO9Mh22MUnytvXOEamWKo06uP4GmyAOpInE5Jo3W80XpfFq6J4Jma7v8iJ
	 cy7ctqcVsKhIAYURBogOw2VjELyAPfHXKtjxEP5+B0+0FNmWxQzpjfr2hboR71E4jQ
	 m7dELjtA2byaGetglbe7Sm9TI8oIDylDz6G3U3mSsJbBdMa36p7vFnW/aqeM1zXjy5
	 6t/bo8eqF44u6tl4GSHb7ggKd9dmoJAyVHl0ubX+isRHfbeE9crZx86ge73E22WWPf
	 coYNOaUEb3dWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A84D0C55162
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178568403368.11319.4903434570376513015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9204df5b5a59dec0e94330912d23ebdbb07aa641ebd6944dbe7ffadf67a7b923
Date: Sun, 02 Aug 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785684033
