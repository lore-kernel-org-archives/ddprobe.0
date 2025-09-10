Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C32EA18E1F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757471993; cv=none; b=PhXc9ZOCP8lkWylu+Y90hlud3q2LhfdXCSrg4qMQzyHJNMQvAOzqTXk3RMswO8uKKgL/hvgDXq0jhQfT1J8wXf2RQWaboTAtMNH9aJzjBn63d06OBJRQIo/10niRje9Mve1ddCJpNevwmDWX+wYOysCFYSIEqn/J91g6Ax0U1Yc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757471993; c=relaxed/simple;
	bh=jVp6pdoZr8TNh4ni1BRLTpkPIVGbA9wU8JQRiTFBoyU=;
	h=To:Subject:From:Message-Id:Date; b=WOI8sPWcI+aipVz+Ne/NfyDMQ9H+eDrZiIgMT//dup/xZkNafBLKkt3tRUB2ksT+iw7O15LiOPs+AznuEfXFOFa5urhnImLcrxQDRXLWlLeJARXcRXh3hCtW/OLKhKkwgJtidUsAeBhh9x3gn7IbOeINT6GcCqqAKmmun1g9eD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nXc12xn6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nXc12xn6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F3EC4CEF4
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757471993;
	bh=jVp6pdoZr8TNh4ni1BRLTpkPIVGbA9wU8JQRiTFBoyU=;
	h=To:Subject:From:Date:From;
	b=nXc12xn6BiX/9de1fVIiCM22YnLGpwKBdO2aZA5ijJPlNNp6j6v0TMAnLQjTF3b39
	 wMd2Ngk46NiqP0MKf9m8UDGNqJSIoMAc5vyxWgKIuSuWHRd/CPhTr5J9mDznw5Sm4c
	 yBQNdsWkJlBKUEj+FY72hqel4FYNk0uaL1r5XyGVDrQXSkgYpMhtf4YYRUwXsQu4m5
	 UzFrGPn+bJ0XXPPQdGnPkr6rPSSTKEl092UdymM3gIyEMJZlxCwN+Saxz/6xsjaf0F
	 54eBUAcAU8kgfl6v3WbSrYA3m6g7VthM/IMToXp77Q9jOx0yZzMrrMEtFA2Zwq99OT
	 9cSe7bxHOmlLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925E5CAC587
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175747199357.17313.7831206338098009085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4678af0c6964391d0acf7567129e68b6eb09ba245d960e9272e13061e0655e91
Date: Wed, 10 Sep 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757471993
