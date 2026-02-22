Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 044B024EAB1
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 14:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771769694; cv=none; b=Edey7CJ/KMELIICHgSDO9VRrMWuKH25V/R4FBOl+RvGCaQ8+ndMu2jwTWOr2NOzfsF57g24hniKEnSmpXZwQkPotOudAWSTg/3RuBTcgOJmzD3hUUYNA2Jr3u8wIVUiCYhHPxACVHYXDhMEWkvnYgGQ86/eNu0zej+WWWvHkrNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771769694; c=relaxed/simple;
	bh=o/6ZJ3cdVXDSXIqS7Pc6Lj/4w+2V1WWsQh0RlmOVN+Q=;
	h=To:Subject:From:Message-Id:Date; b=f4VvDeFBWjSHqEnX5hbpu5ZLd6RkG1yvW8VHT7Ot1hXfJEu8Dw4JqsD2NBWfE/nl3qYXkXsAI82ktTIDkV4wVJ0BaB7WiKXOaMm96pt0EKkNOMMBaOKpvsqcHfC7LZKKp+zNU2VZiUmoYZEW0slAojZZ2yZkx9p4pbcy5DRPQkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JXLZNkHw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JXLZNkHw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB81FC116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 14:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771769693;
	bh=o/6ZJ3cdVXDSXIqS7Pc6Lj/4w+2V1WWsQh0RlmOVN+Q=;
	h=To:Subject:From:Date:From;
	b=JXLZNkHwbrdugL4XLsX+KEYS5j1GfBngFuZunK1WKQd9tAW9WL4oMaACqcFiSWK3+
	 zpEmuc8LltmP0IxqqsOXIUwobOjIbAFm2x+C5jtdbwO/6g3sYdSnzPcnghCcqZYh0+
	 IzB9C/1TA4dzzW1qGktB/zR6faAtvRC994EYTkwJnzVExh7L+kxFTZ6OErZXCdLzn7
	 YWIvs0Y08S9ComFMrzvrsNlB5itgTyJdCrshiXS6eYTyUgiI/Nm+8CvSqez/mPw8eT
	 Kv4i2cZTG0GvBZJk/To8d2UNIpG0f7alVJqCHe7rI39OaWeMpcYytwth87H3FFsQ3a
	 K9O3+gjcoCvnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947E5C6369F
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 14:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177176969358.23380.3578038254701771621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f30e78e539bc6503ec4a1f55e915e2793c458c3ff94ad875a9b8c9fdd80beefb
Date: Sun, 22 Feb 2026 14:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771769693
