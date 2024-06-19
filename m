Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63C9015380B
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 20:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718830163; cv=none; b=HxrGYmTfbDh3qwp2/8uS+qkGCGh5gGXmkp9bCBISKAHM8KPyG7+/xgsO8hQYObt7aWRSwOz/LjyMwY2sawC5l32Maa2A+j4b/h5h2jqIaRx2+ZhmWaVH18mCXXPqX7A3mtoYOkyNTBY6kU6irHsCZxP3Hw8HmUgcqwhDwagtm2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718830163; c=relaxed/simple;
	bh=aq53PEcHYMcgum5bXX9dSMReC3UCoBlz/DTlXQ46Y64=;
	h=To:Subject:From:Message-Id:Date; b=tjm8876XFkjpFZMX6L+gtOlpsXDdS+5CPTDbFC6Vc2VMRAdTA861rFOW3XD3MJtpruwMyRrvtifc8A1ZNvdga66zvKaJqT9WGSC+yOJ8FBZWCs5sD5gU1VPnE4tYcvo6eo0r1Kvba8hrVbHw4zVg2rDbQgtClgLpVjjJXr3+Dwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Um/2hxTz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Um/2hxTz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE350C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 20:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718830162;
	bh=aq53PEcHYMcgum5bXX9dSMReC3UCoBlz/DTlXQ46Y64=;
	h=To:Subject:From:Date:From;
	b=Um/2hxTzP3g6PHKy41YMQn8GtG2EbA/e8sVIRJfEHt+fi1QnFZX2PwwgHG0s6V7pD
	 zPFcQE5Ifc/9FRtaNTh5aanB0fNroTUW4c8rTq7hW07jWJb1Mw4nngy2OQdN2DSHlt
	 hkHlGbcMN3r1YvFV880UdaO6MSoIcpjUgLTBdK7V5iTKmVPP3JwyrvknBEP6BocBUc
	 m6R5lRx/I+RGqACDDbKlSQy5GiChfo9Zu+q1M3hsFDzbbH+s9QlsFyfROyCLNgcPum
	 p6N5uitkTRq/DhfBPQH+dXsDOSppdZaS1yvLxFevTjCZV5qwZ7ccfS8YSslkHzAtw2
	 BMCBExZVUerVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9D86C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 20:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171883016279.19950.2924294222125882704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0effc50cb2d5c34a9ab80dded47aab603a4bae9a68e782a7d925f392bd4c35e2
Date: Wed, 19 Jun 2024 20:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718830162
