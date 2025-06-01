Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EB961A239B
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748777394; cv=none; b=TB3nJscxD7unk8nbhOqDsFRXAYGtiOLTbnAl6mYIBus8G7i77VDc0N5R82ldWweaCwCkCHsNkqs3T2pxZmW66b78foct6gOYheS7Tizt5wG4iqjamY/HX18YvCJIt9QLlvvV3zeffXoYsDWklWcjjb5xlk8JOekbIbH/Jpdx6iU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748777394; c=relaxed/simple;
	bh=xe+9O7D/Pq+cNMcqGNnR0k2pl+mpXT93zo/KrobMTDQ=;
	h=To:Subject:From:Message-Id:Date; b=ne1ho0XxNqWExjcv3CO6KBJ3cZQOQ9QmjvcP8EsXh839voH9HBMdEduGj+33YsNle1VcJZNbP2+lrEg6S1cRL6DESXBvTqHOovrdXWoTvwAXGZnjdw255B9333F5YLGxjoVy92IhkKnhOt0jir5ZFLx7tuV712XIkXZZ4ugfADo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dh7Z3fqy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dh7Z3fqy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73DBC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748777393;
	bh=xe+9O7D/Pq+cNMcqGNnR0k2pl+mpXT93zo/KrobMTDQ=;
	h=To:Subject:From:Date:From;
	b=Dh7Z3fqy6lG8V4L1IqsRqNVvaz9bUnmSr/ZL3bFqe6VSPsrGlnAZtmrdq8lWjb/fT
	 A2Jq/PKwLp6kT60oHZ1SdDl7gbM7FY1sfXsdSR/uV+kYa2dvbpYyufRVuVwtndh3eX
	 g/oHTnCukuzdrV5I2Liqc/bdVeNWNor8P8rgxMfbl6e8UuIq4jOnnUepT7/uSyd8/T
	 wQuDVXOeGsa+fmpHOHq3XsgXnxAKOsD3x/Hi17DNTcCWZH1M1H9prWo2BApIKHfwTd
	 oTXUqVLOmRKh8iTl+EVw9kgAg7lgXKwMpMo0Y6BJKmzRv5XPuRTWGZXqtZhjlHiIUc
	 UBH1SGKOqELlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94429C54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174877739357.18083.190765516587608159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfddc7f3af4efaadf27c9da89c5d3c1454ca7007694de1603e5302fab6b2b2c5
Date: Sun, 01 Jun 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748777393
