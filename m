Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262702F3C2A
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752663594; cv=none; b=C0y1vqN2Yzewetx85ZmIft3MeW10MJjnMvsfUG+SI9jizR/ZCSLdLdIKxwpNTbEQ6cnCVIa2d1wDTaRDELCBR2nOJ8pRgW6DzIYbuRV2Y1FGwGE1nkZYo6W3PDLw/p470eJLwsCmWZLLzKtScUMliLtCyByX/n0Xylo5p60q95k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752663594; c=relaxed/simple;
	bh=1zMSlpY6FnZfO+LxzVTIbmzsj2cOIg6TG3oxMPhP+eE=;
	h=To:Subject:From:Message-Id:Date; b=qpoKlIrxq2lksjpwNZwYneJlbda4kQZD+vr8pF0wDqhlBJRvLf47GYZEVWZBckQNmQEy1YbP3KzxI0ev57gn3HLn4RXPClUtupobsLYN9Fmz2byLuw1Spzhh+tSSJ605dqClb5GJpxlMrSpldeR6KDi/PMWI3TLGSSXfyDZKQEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z8WxzYlc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z8WxzYlc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1582C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752663593;
	bh=1zMSlpY6FnZfO+LxzVTIbmzsj2cOIg6TG3oxMPhP+eE=;
	h=To:Subject:From:Date:From;
	b=Z8WxzYlcf+XrVrGbz88iDKOX1jca8mi2LYqvC5bVE+JrENTzLuIC7s9J0uRh/Sumi
	 WAhggHNTvlj1lKGeQNl/t2iVGbZgMt1l5YPCOC+QYdz/lrFoKEoNiTfouT3FTWwVE2
	 vGFEyWjMfM8VVMwf3VBt3HgqZrBwx+2tJ2oJ8mbVQzzdaBDlzuFhpxtZKnuZdXTp4H
	 zJNy04EfXgyfqiNLvihfIjXRao+ROPQm2O3R8zkat6fGbhhJBv7W6RdCeeNDyaaglZ
	 fwN+erNHhjOPJo+VqiZyVNXUZ1HKua5ZY2yuyUlrCLnDRsSf9TUx7LKczgYg/L8Cor
	 dpfuNuP21GOqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDB4C83F1B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175266359358.6423.5797214405844295007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c487004b2818c17cb1600308c403e540b164e3db7d73294f8d188a5e5da3a321
Date: Wed, 16 Jul 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752663593
