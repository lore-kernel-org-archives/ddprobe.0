Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54028260580
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786998634; cv=none; b=e3hxzyo9tvx/gFIKzgHx7TwLamv4CR1L1CIHZ8VaBOkjYmjl8B7qNuX9FUkrNY5iVtNs/efbjTCSYcCnkIjMbnL7hQPHRbZO+gFMvKwE0lDsG3cHQOmb7YnKihyN4IhYDd6z8bKHQUU/XxBkgphONSNOfugH0un8QFrp4NnhiL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786998634; c=relaxed/simple;
	bh=/QY7vmdO4TNKkH35B3Sr3Pii4RzGW8WC+dgY/Nb8VZM=;
	h=To:Subject:From:Message-Id:Date; b=udF+bW6Q6lQdkgBZ8n++QltqHeBdHS4B5OpCZz185InFy2jEl0Y1p5Meo1LJlN0IqJ2nSmGpKzsAakqb2kbPZJiPCFb8AUPBCa98lMQVY9VioliniMmxNIy2qWtwQ2BZR5rC9Vs0VI/1mmR9x/C4PYPuOEwr6RL/KlBevFQBef0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rmLlMoM8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rmLlMoM8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE1EC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786998633;
	bh=/QY7vmdO4TNKkH35B3Sr3Pii4RzGW8WC+dgY/Nb8VZM=;
	h=To:Subject:From:Date:From;
	b=rmLlMoM8WYfO6mMzTcY1IbsYbci0q8f3cYA0yV7GqYhMv0sPvK75cVmmfzSxGm/+W
	 ZY1t2ubv3Rowp3RE1fmoNcxsKVvERtXvsRmH01xYlbERIRvgQSplqi/tnnmrQEFLRQ
	 mS/VDFxKudk4nUTEj6YXOTYy8WxjUZ7sPl913cJB1Wlt979xEWVoxLUhPIqV3qYiiH
	 Wk9KdJwYXwqtRxC565DBOI12gH0ZAl3TK/SEOVnyapAVBoO4S5uEzNh6mEWekrYLxT
	 +dzXOzJibQ0SJSsV181YjoBakFkadf95DhvoP9U1/Me+GDS37UjeqVajS6ceexAUM5
	 V6hIYk+NmpXRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB48CC5DF7D
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178699863369.11479.10017123080937199993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57c5c768a55a8e4838463dd9435d2c37c6f02432e4c0b2a2da171ded51bc7883
Date: Mon, 17 Aug 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786998633
