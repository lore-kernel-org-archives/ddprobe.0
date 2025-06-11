Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E85C1DE2CC
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749661794; cv=none; b=lg/i8/CYChCC1r8NGFpErdIDLUPdydHctyUgjwhHw2Zs3QFJ9mECYX8GTqP4IpN2RUjwX2e5ctwT8assVzQNUL57mig2Q/ktVxlpByi3iGo5SrYYX5pW6fR18dlDk9zoIyw7DAtv8OgHD9Vec9TOFDYKKUNGMpFNqpnBn5sJFMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749661794; c=relaxed/simple;
	bh=yjEuwERqrlKoAwZ38+FHTojj5RQPghtPm69DI1p0CJs=;
	h=To:Subject:From:Message-Id:Date; b=sDLuUpjqEogh7u1/Mv5QvUYOcD8TdL4VJIAgV6FoqiQJXUNqPpS4uaZEkVGDTXWwqKrktMKsqhby5SoYOzp2BIZVQWLsXwVN7C53XghRq48Iv7lIzPh3ToPogzsFu7meW1gyECkjgWX1m/5QddZ5YtYK0rmQ4jKMzDp9k7jyKN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ln4j8NTl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ln4j8NTl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2EEAC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749661793;
	bh=yjEuwERqrlKoAwZ38+FHTojj5RQPghtPm69DI1p0CJs=;
	h=To:Subject:From:Date:From;
	b=ln4j8NTldgceXkaHq9ZIafarPeB6VFLLxGYAr3QrajSeMzj6cGyG5mbkr5kQHF8ht
	 3hZicgEj9gp+o1tdRQvIdBIDsjaYD2PxpAzK68RY0FJiMJ2OGRojM9bichm7AG+dDK
	 CpkB57afCkjphTmHBPHlN3aqBAdNtzwaDfxZ16HZ+rU17MKEB66uG8k//bg6H73oxk
	 85QuXr3kBrIar7WFCsSr7XAKUcSC/vn1Pfr13Ah7MvQ1iBIImc0BQxF/7ON6BVi30L
	 J6j1aFT7Z8bqQcLebKukm1G6cax2YkyN/bC7NG+yz9Al+0zuUHysyMPxhaST6ZmxJO
	 hoaSlDjswP0Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A8DDC71136
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174966179362.20163.7347581833584794107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04b0cf0a7febe885887ffed512608f5a7fb0816bf2dbe14a561cf399af100a37
Date: Wed, 11 Jun 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749661793
