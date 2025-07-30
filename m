Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339092DC34F
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753895994; cv=none; b=U3jTTVafUFl1FlxJXTUZw/7HFvrHoeWXlDzhjwqShym6ANw32XGobc55AMoo+5MyWbzliRJqpDmQTZMUaQBn+odaeY/gGyQuEa2PN1fmnSmBShMvND4H7DWy24Ohvr+E/pY8FPyFEU+XiwiPOuUlto/wKFfP8deYPPwDwHA+W5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753895994; c=relaxed/simple;
	bh=9jfaP1fGnstSVSBB0T9AOCMpIKZiLhxXzJyufQAYXRQ=;
	h=To:Subject:From:Message-Id:Date; b=buqnzgpA8WlKS8hiLW2+kDIZuPh3w513LCcIN64oQCJ7ttX4cSZiexiUmcju0VQU6Y0uBj5p77SuVZSlYbS9ZntQxGEROWfIl9hiJw+lgeyfUCeFgGyxBpFZOFL9AJskYPMifbI+88eP2CPXp4wXqpXSWXgFIv2vIxGAbIdMiSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=msouzF42; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="msouzF42"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A034DC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753895993;
	bh=9jfaP1fGnstSVSBB0T9AOCMpIKZiLhxXzJyufQAYXRQ=;
	h=To:Subject:From:Date:From;
	b=msouzF42o3OrVGwO6XhRCVPkDiyKSqkBNCWkCgM72GM7aV/xW6k9yMvhW/llae3bp
	 HSTzZaMpkE02dpEb6TC2U/cGfvQC3OAhOHcueKezUEY29jSASZcsPKl5tO+PSRKCYT
	 LXPIo4v/TcloflIb1LJvtCcqvqv0iE8k2dhfwtJmDMoMCIu1n9AKvQw1UGxtHOpckO
	 ZBG3WO6K3Sw2AkDyryQV9YUP9VmVFTphTa96/5m/XZvVdN0bZGYubhFJrVRUsuPbU9
	 GBpWe3u6+e+WnjQqf+ho8Z8xiaA2p1E54jRl8KEb4oom0pvM3xdlzN+zOsYP+LH+7N
	 HFnTB9N5H6Okg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F94C87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175389599358.24428.8714796405410115512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83409d9cb4c887cc29eb7035448d3c0483eabce49739ca9fc4516782c14b2cf9
Date: Wed, 30 Jul 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753895993
