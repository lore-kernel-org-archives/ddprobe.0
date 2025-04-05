Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E3DB4C74
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743836995; cv=none; b=L7XHNHHuH0K2ihmps0zlQDvLN43Uv8co0aBDhOVQT1cAdH5j/OilDYZAwMY8UxCpycC/4wpszvQL2DITWSsaWY5yLoNw8jipc9KVHRABhPjNgcFRx54CMk7g1XJDV6A/+T6Ev1VSzfciGHbeVMKAIGxrCncqpFO37cdkEklqdqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743836995; c=relaxed/simple;
	bh=JN9vEzPyU+Dum94SsGZeQt5XZnfKrA/+EoHA9oyaEVY=;
	h=To:Subject:From:Message-Id:Date; b=iVleqkN3z9n3yLJO+p0YiPoTtyvLx13i0qKf55uiaNC5wdtdoOeJYZkvPjBHDjvCq2DoKzZ/+roUhl2gx4K6A77Xt1UHvLLI49xJ4waGD6L4DMYbMAK8K56FdV0tcEumXg7GqHt3/6DonJjwsO4aDgynPJDvRuLGrTPPoqT4hQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=edzvoXVo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="edzvoXVo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC7A0C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743836993;
	bh=JN9vEzPyU+Dum94SsGZeQt5XZnfKrA/+EoHA9oyaEVY=;
	h=To:Subject:From:Date:From;
	b=edzvoXVoX9obqLITAZcEumoFbHE2C/+ERvgKVX4RSo68kAOEz6duYVOFlWtLIdUvw
	 L9/NxoNmZdPpGxJmSXTW5keXvU3ew4ys9FAUeKRcyy/azYS8gpytU1tFFUV0mAi+Qe
	 qBeYxXc07ZeNIlr+pJNgo7vHRjafMXRxVIG7u8S/QWQLtPB7+66cAMDqC8TLyGZOyF
	 YM41cfYfzSm7J1QLF0tpQQiwbw3cSlgXQnKpzlUBqf5juaW6udra9Iw3AiWd8BhzlB
	 +HOFQiFoblSn3LvtnwQbCgePsyDf0P+sAl0OnNB84nas5O60jtTcaCB4wOOGxWoPuQ
	 /NdDe4ttHfdjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C223C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174383699359.30366.11103948522985443079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee88d5808f1473e635363fd3ee25c88b3c669792c32914ddf11d182ccd8a481c
Date: Sat, 05 Apr 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743836993
