Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CF683749F7
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790173834; cv=none; b=UOM4YDBfeTcG3MQSVtwxBlhwhHGkshnt3edUFS1clWrGgyTilH5ZuTPYXHVo9r80rAl4cZZ4xN9L9O9T10BwvTCTq/AIOysOfE3Fvv3a4ZThVOCu2vYAX0mIxuFajdAI/0otEMr3GkFtPhic4SeRENXuPXdkwQ1l5aMEJDyf3Tc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790173834; c=relaxed/simple;
	bh=t9iltNHAmqcB01KwB02gzbNI8J6+MmO5lJCPuyJCQJ0=;
	h=To:Subject:From:Message-Id:Date; b=ckExxwLRH/RJBaDoUn1jcBaqu5UlWIxMQ8rxeWollklIYGm2kS4l46/UrKu2N1E1CM/IU0/TO0fQxbAwOuBH+GZiHTFN1ZB72SIEh68YV9JaIFop4+z24QsbYOE3cX6v8y7C0rmJE/GfmVzT2HlWHMz2+Vz4DiHH9F94BSOwriY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VgFL7GD4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VgFL7GD4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1CEDC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790173833;
	bh=t9iltNHAmqcB01KwB02gzbNI8J6+MmO5lJCPuyJCQJ0=;
	h=To:Subject:From:Date:From;
	b=VgFL7GD4yg9VbrqMmao62I6E/xVTAxAGfZRrvMHkfCNfNN1hwbi69EDHZlYC81e5e
	 qoAzrgCIhIJr4J73TYmusOhlJPrIGhVG/DKXQRJ/rDL4tjLOMzVzl06b1aotATU7Sg
	 HtC0q4YoXBZdZTlCIVIXTyiu8hM1z/6enPc8MJKLvm4BVUf1gZJQMN5r/xzrPHODd6
	 rY9VlUlkFk1+CcrnjJEx/ntTZrvQpfqm/t4t0aMS8kks53YOsHjnIWWIO4fhkBaPbC
	 39NsZ0qGJVrLpyUDnVb2XqiGO4bXjERmYXctALwOnvGuSuRr723qHy1NKLU+90Q+F5
	 olVL4zNPbPZIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC39C98304
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179017383369.28422.13279791154750834641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ac7b448e264b293bc96bbbfcc7cefaa0a8e595078f97ebdb5c463c1ee583f1e
Date: Wed, 23 Sep 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790173833
