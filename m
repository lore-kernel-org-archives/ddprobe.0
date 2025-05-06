Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 466B0280313
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746499796; cv=none; b=n3lqa/KKYRKZEnb52fTGaty5pylFUXeaU2deXqBnWqt6pujt6QZkg+FrgrHBkMzR9vEfJC+mmKBxMKsgdd3CUfUs+ArruOQHBHV6VrimFN2+rRfX/hC4eMws5SYgLa8TYw4GfYCWgdDZpgTbA2hQJSCobaOhhhoa54+tWI6ocLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746499796; c=relaxed/simple;
	bh=CIWu2ZiXLTf9djo4UiuuhdlB0J0sSG1WujM/QZsoEUM=;
	h=To:Subject:From:Message-Id:Date; b=HW8W8Ga4Xk0y2kV1t09mzGDz4DAyWqSL4rrnXTV9oyo5ghU/nDoyrS5TCWLR/z+UlST+Z1U4uGmBpm6wySGDA5MJqvfY92MqzHGKXfPD+UuNY9K8PR/i+8SOfIa0yOQgXO2KAaWBgLorLwhvOnflJrALDhUgrCro5PqOslNuuUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f9Uf7Gop; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f9Uf7Gop"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA183C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746499793;
	bh=CIWu2ZiXLTf9djo4UiuuhdlB0J0sSG1WujM/QZsoEUM=;
	h=To:Subject:From:Date:From;
	b=f9Uf7Gope2gxx9jx8KFgLE49XcCfZvpx/YhVq+29oszBI4WiR0F9e9n6ufx9jcE5r
	 3+zVwGDead357fDmUmeJHUeeZ9kHc18Wzy+Ajh8yQHpRKkjZA1hwIWGLICg0INagR9
	 z9fd85Gd1reIrsIfkyzP7xCe1I31S6bPWlf7ILZI2BlVXGBJygpl8pobdiX3RTDrfp
	 qSQKRmqA/cX6YXb66ibWcFatQQOq00QZbM1BdLb0Ohnafq8tYnAkOBhRbedbdw8rtD
	 rAg6bqs5hNlB7tH13xn5ahyh7XlxqqnzJCBRAjSVBW+Bp9+HGnrfpnCBINzjHUViiz
	 K64FrML70QvMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93040C3ABBC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174649979358.14980.97147973496083251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae22699e0628de20495b0bd3d7de4e77209a743af4d23ca3f44177c807d20a57
Date: Tue, 06 May 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746499793
