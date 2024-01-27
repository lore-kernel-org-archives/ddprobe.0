Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F290A1EB22
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 10:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706351897; cv=none; b=cwqJhIv8Am6kr2LWIGgaTtmOwoG8ZjEtBXNtIXhNtPC2pRsstNkwvu2wXshUey7HLr2YW51q010YRRCxrrmh9MSVjd73KSsDrrbUiA0fdsq6JBBaWaWvfqXoYxaKpzabOexvhwP/c8hbsC/Sb5Z6EYauXvh43+ki7HdjLdNJXOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706351897; c=relaxed/simple;
	bh=0oLLImLvq94bVN8dbUmW+eYEm7yt9+BNzA0vUZR6rIU=;
	h=To:Subject:From:Message-Id:Date; b=ZYep7sWbkr6eZip0yUpA4Xx6uM9TCg3wD6NyZaQQiIyB4VXoT6F6QRxGviN1y+ObuwtijK/mVNpsCMZIWCZd2rplooQnK2kR4epDE0eR6RVcE2+V3ZfZyNSGCF7Cld9MJNeqxccYiAjpw5eEn9jlxiY8J75VwOnkJ00NacNIqto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CK8V7h7H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CK8V7h7H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 747BFC433F1
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 10:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706351896;
	bh=0oLLImLvq94bVN8dbUmW+eYEm7yt9+BNzA0vUZR6rIU=;
	h=To:Subject:From:Date:From;
	b=CK8V7h7HjCJufVq7uo8tgNPKgHIRKiawQj+So8CJlkqNNJRnVGadfKpRlMWM/LYef
	 1S/8kfdAldUMDyQF51ZAWjhuvskw8P9MYACFWAOCVd3030QEIeld0qnpVMJrjgvknl
	 PW0dwng5viZMOASm4noQxJ0HrTRWuApaRJ89+vJ4gp5FZvOiwkm7Xrh3kZi+9LemUw
	 D7xMkp3pU5PBbfBU8cb3S9rUbVwXyWZ8/JAIizmRNHbiJuQYlQ+AdclL3kUogJWAgu
	 Auw9KdvVsHVRo8N8It1mEQhanIREU4lWcbm4Od4BVgYgPBcLxig5dFmkOmUKSpP1Vq
	 DowGP0Cx1dXsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A8DCC46CD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 10:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170635189636.1497.13212248266187769387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e8c31b1d57776c2d69971cdb42317fb06e874ea7b406a90f945f947d87ff144
Date: Sat, 27 Jan 2024 10:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706351896
