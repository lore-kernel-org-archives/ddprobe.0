Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10CEE3F4DC2
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 17:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780420474; cv=none; b=Jg9FbPfFZs2pqX7vlgKF5G5vFjcct9y5Fg7F1SO7efRTLKHMBjoSA9GJ2Z9a+pSUZUajUXiFW+ZNDEZFjDzOihRu33RtseYu8mOMbaszMvH+P7P8GxNJ4o8RCRCqOkxf7jIVe+6Bw3geAPjjtAVdxuCGz9F6jnWkrZmiFJO043g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780420474; c=relaxed/simple;
	bh=Dv6eiXqkaB8kN5cw+PuvnNBvqyeobxbGw3/oOdLfYAQ=;
	h=To:Subject:From:Message-Id:Date; b=RVC74q72BPaekoy5qiCHhme+N07hMEi+vbjdDuZ1TxsDOh0F9vM26x0HW2Q0v99PS7yGQ3HR1qpJaTdtdRTaT0XJF9pfLb9wwXdxfA0QILjRBYlNxvkLAwb/YlK7ZjLqgfCN5wzqifoOVcU9E+EHh2GSXLjfHuqJYrZQ87HhVUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O9HqopaU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O9HqopaU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4DABC2BCC4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 17:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780420473;
	bh=Dv6eiXqkaB8kN5cw+PuvnNBvqyeobxbGw3/oOdLfYAQ=;
	h=To:Subject:From:Date:From;
	b=O9HqopaUra23FrHkGHUnv/TbwyBZpNBqATM/8Db7Kr1N+kbX+MzD0FkmZDKUACddb
	 CvgddrlPUFWFuxpY8MDIH6zXvFz6vij095yx9BKxX1KjbD+5ZEp3tbKX34a/t0PyzJ
	 M8sn8oEb+oBG/vw0XGWWsDH/eEM+iBGHj3u/kW8ORmw7IuxiKikXDTA4L++DP2QMA5
	 80HlAD7kML5ckl8IqJhOKrXK2rilnT00qJWqbOsAfJK1NhhbMAF/dQS9jLuXxMFgdI
	 vqc0/TIOJgoXnEohRMQAS17egZ6hW4Xkeh9jfnn0qPHise/6fBZnmR9PfcJj/wS1Un
	 Qvk9gyO3iwtvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC68CCD6E60
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 17:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178042047369.12027.10632802579584936805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c8d20b069d5a07d80c2c0a96a13f7e07f92f659fc15039eb92d8d792edaaf0b
Date: Tue, 02 Jun 2026 17:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780420473
