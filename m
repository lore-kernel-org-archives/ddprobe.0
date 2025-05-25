Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 446A7225D7
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748149794; cv=none; b=WAuB51lhz1VO09uVvQAbma7lUl1nE4tA/yUkzauhAZaZqJrALCAlSKX5XdYaqySAmmae0WveBQA1TMzzvXBF6JpzeMssqpTjcLFnZ+hTJtSpcH/50QclLillyeLs54OW8pRGEWClJ9ERh90xikP2szeW18I62KKi0RYnJVAIrBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748149794; c=relaxed/simple;
	bh=RLfsKj9PxIOI0T7LHnXdEPN0H1CV7lnCmQoLnzFksk4=;
	h=To:Subject:From:Message-Id:Date; b=LDUt6ea/VOCF9plcoHvvZ6A7ofvxrDVbvHtAlDbkQcPdDPNZf8WXXn+jSRuwF3rzHu0TdFnIYMyB7K/BrWVE2jVx8AeUgweHn15UXZznRbIOIE2ym03vdFwseM0gPPNkVGDq79QvRGPsyqlj5q13ZaJGhsnZl76PFZeMI6R/5Kk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LWNnP8jz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LWNnP8jz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA89CC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748149793;
	bh=RLfsKj9PxIOI0T7LHnXdEPN0H1CV7lnCmQoLnzFksk4=;
	h=To:Subject:From:Date:From;
	b=LWNnP8jzTrcwnCR084goK8twlEq24ql6ehRc2mZxFyM9XvcIqayaqlWebhhjG+F21
	 QU0PkGBGpWdPVkJjF8hxoJrU4G8pqEb2lIX+lWdrP8hUh0GC8oTNdoB3LduhRZZHIe
	 dc20ZcAsqDw3mPC3vkQ0BSl0o6hKCDLkKX88Y+tbfbBbN542npYybdsNMgy2ESjoO7
	 4hYvP18B5c3oJ71dzp76NoAtKqWcVMNeOh1boEGCLF5CNwgkbVp9npPrfTpaYBVY0Y
	 RF0coUw92mySYW0AO3lJIw2JCZFpz/p2mZA3xywC2o0uwxuFRdO+/RSlmmB2/CvVeB
	 cx7SaZehR+m6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96827C54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174814979357.734.390067098784661708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6873d52c3af53e042e807dc22bd78cd968e7214f8bc472fa7fec703b5a93fec
Date: Sun, 25 May 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748149793
