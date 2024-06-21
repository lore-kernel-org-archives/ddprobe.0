Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DF6016E899
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 08:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718959943; cv=none; b=PrdyzEOikUrBsrizBMwvR8fHUbzZLozNuIXeAzfMgfGrro/7LUvN2VFnkQOYymrbj+T6k/WuU4Xt3bfPTmFo4cUW8f/kFj2htDTEClY95Fhg5F34+Km6MCczL3i8yoXoXjsjx1rcOBwzx5Ps6EDDc/7dfiwZTA4BZu8MrefbFqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718959943; c=relaxed/simple;
	bh=svmvSJtBadtQdV3SP/ntE11gShiF9i6vjoRN4LtFHyM=;
	h=To:Subject:From:Message-Id:Date; b=FSmaBpJBns32XD8CL5o7AR1pc5zrtKaXIvC9FmUjdc/HaimTQYUXo+xNI4GOHB3fnNYhOf9mZ1XX7Q4x/YPCZQDs8zgj8LKqorkK9Kgxumlmc2CJbZYdN9zyITPLoDWlrunttIM6An3Hmo/1YogVZ/+IITR8uP3RzBepXlMjPzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mnnqcX3V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mnnqcX3V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9003C32781
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 08:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718959942;
	bh=svmvSJtBadtQdV3SP/ntE11gShiF9i6vjoRN4LtFHyM=;
	h=To:Subject:From:Date:From;
	b=mnnqcX3VzvFtas878J/djGFb/d6BSeG2dR8lzcmFenBiJpc1RUO7jPP71NeeeGcHa
	 NVzpjVW/tb5ma4LCx0CnMEdeNppUyn0Tdo7+P/3IP9nQAqTWDnEBbmuK1EgoD9yGEj
	 il+ZawBwuqDbxVTF27+jncDfqWnQNoDhfB0RJmg/WQbkBKhcvnuqZfikgI5jqOHTqx
	 rMfkS2mEVJtOtbrks3WJpUlR+accbZhFHf+d5MnAzslA0h/7zPueNXk0SPBKqPmD9p
	 r1kbIZ8XISXEaa58NJNi5FoxWpuaGaKcyAnfuPcCfRLXkrRuGqVJliuNFoDtfMhP/b
	 /GMjR792f+rdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6037C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 08:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171895994280.15713.2106930917765744769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb40d19841813b12de921b0b1b366012bdbd199d01bf37491f7aba2a725f9d1f
Date: Fri, 21 Jun 2024 08:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718959942
