Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06B4C823DD
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 06:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773382494; cv=none; b=c7vSujgH6SWWcX05+9klbgnjwItT8rQcNLpbl+LceK29ROmjo4YS1V1ze82r97hboOQzkW6iMl/yYFUKjogL3IYERUpnH9vFnME2v2FVCAfgUY8oUQL6QQc47mVA2+e80p9pNmHsYOceMPuNulB5PSZAIyzyMTQ801/fwBLWpxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773382494; c=relaxed/simple;
	bh=rZ/gvuLLdFgbKSD9K9IUNHnMemSzWs6IoaCD1raipBs=;
	h=To:Subject:From:Message-Id:Date; b=peyIw6bgyqiWFjuLXHZwLWOWnZdpJs01KqAo/Mog95mpI9o9muXrKg5OYCWoJyA3Q11K1UAvxsO02VoSxpm58OFYnqisLWWLvygHbL3JR1ALjrZp/p3c5WjU85ERcqAzaorJMnTUV7SR/9TQ9wE24OeBRf7PCVZaXJvJ0xSrksg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fnKq0YQT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fnKq0YQT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E530C19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 06:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773382493;
	bh=rZ/gvuLLdFgbKSD9K9IUNHnMemSzWs6IoaCD1raipBs=;
	h=To:Subject:From:Date:From;
	b=fnKq0YQTluKpgvDCIFBLwN78c7kaElxyhqC5J4SKjZ+pYyNpwJEWUkYgeWi+eDbo2
	 D0LY/6d/KYTEkCWOeoHRJXTlHp26GJIJDJlp/Z9dScn3wgZFEIcdz8Xi6s4gjF9TXd
	 oF44JkwvdPTPEcUUoG/Ew5rwVKXK5J5G+PJ1ALVUcEecSYaWSOepyNaC/W4IPnMyeW
	 vrsboKz4zGGEHlEmsTQNRqw52IVaj/ujIId8hXvjCdGie+OC/ORvm8ghIS95/2q3he
	 DngZ/a2XUacQfWNh0ptkht1EyBWZDKTH4R/dfndymQXrcWYHZl+WzDhythU8JGO2oh
	 BaPC9g6AhdKmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF5B106FD84
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 06:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177338249358.9107.6149103384532139719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ea4921e6033d413e313f3d9f2997a74f8a1d36a29cf126d3190556f01413c55
Date: Fri, 13 Mar 2026 06:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773382493
