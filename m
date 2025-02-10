Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EA4025C71C
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 20:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739219154; cv=none; b=LKQadv7xXzekE9qcm/CwOC9PkrJacMAmddeEAf6b4Y6xqUMviTzt7XHvUx8WTgdAzhyGqYkkJO2u4Fd8xZ1G5hdvIVHzyTdGtWP9rF317okZ6wMQVssTjqzhD72jWjbXS9h06kfXqjsGhHX/LrUxy44Le1dXzodSLvjzuN2TwDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739219154; c=relaxed/simple;
	bh=RxxcR6hgV8/Pb5KMkwYL17D8WgDeq5V114WErKIF4DY=;
	h=To:Subject:From:Message-Id:Date; b=nE4Hm7MM2h9VooYrqbg7fAJAvatCYlr5C9ZFeRjAl7R148keO8s5xkBMn2wHK1cbZU8BWT2lVxFlMuAhc+ujATJxUHMjJfyh4Eslf5DU3os/cwmBBVXlGFnmmD6gJzC/7F9ghCF9SeIQh1gqHrQ4Zdc3DQDAwYORLN+08jkCF5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XTOCogHn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XTOCogHn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA271C4CED1
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739219153;
	bh=RxxcR6hgV8/Pb5KMkwYL17D8WgDeq5V114WErKIF4DY=;
	h=To:Subject:From:Date:From;
	b=XTOCogHnC5BPvaM4wXP3wVJDEIon3KL5kKymKjUhmhVCYB4aW7pKsv4kO3wS1M5ww
	 PFcCKouRpzM6OTelJLcrQNNTswLSVYsC3bSGDxOVB+qvE2qGh28Qsv4b0iCACqkoEy
	 OV0A8CfIV4fc3NBDB5SiBiAnrHzBy+TuKDJUgun/FIUcKlS9vd5Nh2/X14fzM5WyNC
	 QNp5uV2dt/H9gdGtjzUr8PZgXk4UHu3eolEGn3sVC8naGJon77PjDWYWAs08PdRPm3
	 W0EYCVwcBLSmXcZfp88KbCgC8jnU0XLBJI+ylVA7gtVa1zrqh0c4ZB0b0xQQfmvOGb
	 CijXvHC9E4sVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF775C02198
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173921915369.16216.5275884986519774242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1339debf695e9ed9d1cf6e20a735b051c0347d4a5b72d6ef5e3cf02ade862c6
Date: Mon, 10 Feb 2025 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739219153
