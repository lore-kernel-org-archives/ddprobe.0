Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 237D42FDC5C
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 14:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769179434; cv=none; b=bjQ+atIdK7CBh+Lw8Reu3UgZCYzxDqvDj4iK1Yowcky1tBDFttKP3kpoGVN93CvLwbUSEQKqwfDmmImkcNe3vYFY/Skfac5/exN683mvpJL0hk3md6Voh3tsWGGkJv8p3+vWFRkgYBQ8YvC6GP7svJssy9kSabfdf7+JLtlL2JQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769179434; c=relaxed/simple;
	bh=UtZp/xOYmaSY1AzJtgfGo4odKu2GvOATSBJs5xXUKtk=;
	h=To:Subject:From:Message-Id:Date; b=eJzNOhjKJNUKH3sgYZwZN6eWdTq9W7dS6BnglePGk6RjSlqDJe0RHQL3NeANq91Qcr3aPMUcKhPv4nOQiTRQXSj88mIaUEOb2ThZ/cXeFOzffSYQfyVtzs3sU2syTLCdukaBRWX6MgIAls6cITEKqqyeyAIS1mWO6A959evo3HU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LcRuKiW1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LcRuKiW1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1752C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 14:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769179433;
	bh=UtZp/xOYmaSY1AzJtgfGo4odKu2GvOATSBJs5xXUKtk=;
	h=To:Subject:From:Date:From;
	b=LcRuKiW10vQevb/in/dizgEjb3mtYa5MCh8scj5KXhIn/u+pkYmoBePi/ijroXohI
	 csy9rH6+xsPbkzUdJmHeteFExtkT66OMSEx8CjfpLvr9mDg5yeNlJemog4C2U2M1xp
	 qSFrpWUXC9pthOyJfPBpFWD5xngN3feyLyHDuTTJmOTIO7Qst3xkFiT9HbSZiVmB2G
	 5S3LWH64vMPxAI/O4Y/sTejupedxM5xHPTNU8pWP1b7OS+DGkhjiSjE2foTkCpPTs3
	 Fv/ZTz6gGUqdWZAZiBTG2ZxTGtqc+bU5AaYcq0dI3EoseY3lfCYldcBjQcJioFLO+D
	 pxD6900grZLEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90135D74EDC
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 14:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176917943358.20089.5651126811664798802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ee5c2a8a19a68e4b0dc559f6bc4298a9e3a5d703d3a8bd3cd5e38d02eb0879f
Date: Fri, 23 Jan 2026 14:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769179433
