Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2802EA937
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750557594; cv=none; b=Zg1mGx66BG09YX4mfnDltx2aJ1A9MGUghzIpxST2rtuZ20fR3jLiQPzTTmdfUf3wSHHx6FnTv5zl95l+PxYskVqZ1G+iYCkxiVBcglxaShd0VSDQ45kYmB0XhhNIMBiFo5Tjg/hC/lyn6qYnoDZVJAu6rz6BI0sYci1kU5pjXr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750557594; c=relaxed/simple;
	bh=AN4RLskRxyktWxBqc51koEgEw+5wuYMZTPCIevBJ+iE=;
	h=To:Subject:From:Message-Id:Date; b=ABVMA3eK2iO29IRQvzVZPyPmBxNtEt/H/ESsnKyXLrFYXrozsBua8oSV2O60T3CodHcRNAdt01X7cFKp3CQyRbNyrlzSmEg0QDFfD0Svg8S4ZG7CkcDRu2Us47Dof0lERoWNkjdZ1VkNPhpQPDktr4mwAOwOfg66RtUDkhNEhOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sKgqJBUa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sKgqJBUa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46F1C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750557593;
	bh=AN4RLskRxyktWxBqc51koEgEw+5wuYMZTPCIevBJ+iE=;
	h=To:Subject:From:Date:From;
	b=sKgqJBUaelq4zSdxdjJzDBECOo/pcByhjG/LNsrcKh6TgsbiKv17W6xF9u/0G15nH
	 x1qyP7428LoMfiFkrIe+wnhmoU6GxilWDRBfbWqqsnUudkH+ksm0BYqu4YqoyzjsFt
	 0NM8+eq5cC9p7PuWZ70Dqt6lwOABzG1MBYGNnSIkzrQQWwpnQfuWw1ai9QHIzlRre0
	 yYzFnUDYz1idJuyYYBiEVjdsyEAn9iCsOdgQ2SMV6xmHYuUJNg96xE/am5B4mObCrD
	 ZuhM5VD1KNNGuQQcrraareijZ7HWbzjPu6Y/EkFAABG503ns/6TJYZyIKCtR0zuGhf
	 6V0RPH+DgcxVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90416C71157
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175055759358.3111.17270792540384257724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b11471f9ad445072efe275bd013d0fc349d88f1c71369c17355c205b023f0b2f
Date: Sun, 22 Jun 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750557593
