Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47D553A1AC
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 14:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718892023; cv=none; b=NkT/zRTtd6gmefkWY9jXGdXkrp5AvFWHPDMn5wuJGCNxzHq4k0qRlcteSxw5y43+fXNowVOY8/G6LEjX2rs+1D600aukerRRf1nhwiwmICXQ8She49nS2M4Ja6UDhde9i0eb1/0Vxr1+kd/ueijxOVOuCdK6CRqpEKehhL8kFaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718892023; c=relaxed/simple;
	bh=Oz+ve9ApRuYt1AMuepP1R5TJwLZThG2+YwPUF72M0aI=;
	h=To:Subject:From:Message-Id:Date; b=uQCYk4StB8q8KOky/X/iooQ7mQmiM/27Ia/jmMMll7NFpEGtNy1pLVFO7fbjA8SaL+6Lb4QcAWicmPHXU3u4Q5Tl+UFgkeP5LRcbjA7VK+6F6JkUJlcOCGxz57jP5Uv2iTX69RllS8C7+UMePatlCYDuJ6hVQracpQhUsceb104=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KtDgs9j2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KtDgs9j2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAB6EC2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 14:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718892022;
	bh=Oz+ve9ApRuYt1AMuepP1R5TJwLZThG2+YwPUF72M0aI=;
	h=To:Subject:From:Date:From;
	b=KtDgs9j2Xfp5cphRFhYx6CkCzG2HWjHlJk4YJ8aMV5tggQ1eFJj6SgUCYiT6P8SPL
	 KN2kSLZkkxK5pg9NYwVsVuAiu7e5GRvDAmLFwIS/9VMToJ4ddgM4GuqYOT7uYT9eFA
	 sTKn2Frue44fO8DCfVUYuRh6gWgIBl9CiQT47CZyUuBWzMqMM9dDU2/KGRmi1ixitH
	 QPgXm5ZRD8Ka15sv4JLxz1rja1jdnEed98ClWzjt/K+qh4hTypc/4qqHaucU+PyEhn
	 C0UrjjE00tmHLcrNUIzZhsS2TOfygLFJUn1kiX35ccdGTyWO7cisC0G5NsxdcksbK/
	 aKzIM4HFSZaIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA29FC27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 14:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171889202281.10236.16593793005295278817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b289b3b336f2b837472e37dab1284f0fe3bea846c182a2c2b819f85abd2150cb
Date: Thu, 20 Jun 2024 14:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718892022
