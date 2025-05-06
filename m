Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 362562D6445
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746505794; cv=none; b=T8yZvoWO5M+fANpHdVgTLiXpFqH3PdiKXetMCVhQWzMXZXZlnAuk5sejykcp1GM82qRXKVcctlRc5HnOo73qrL0Ez/KojfkKH5Hpz/Ag/vgHRkKCTL7s3VNARtwZFUdqAjTvHAvfVZzRPovV3nh9CG84ScMqjd+sXqsqpbrdKTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746505794; c=relaxed/simple;
	bh=o1R1uS4mdmziynn2yf/4D5S0D9r7/qfSP3Pauw/JiN0=;
	h=To:Subject:From:Message-Id:Date; b=oF1c9/spoIz+GQrAr6GvynkEnK5h6NDYV9jXwjif7Bf1DETY3o4RCnvjl9/BYOmCiqRKoKfscKxaWc2wF1TV5NOT8gkRfpk7N7Uv14MauDrp+plGXunk3O69OIiF2mEj29KNzuVA+/JzduEofrk3VF9ulJ+ynEKHXx1t3UDdT6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nRbIqBa4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nRbIqBa4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B1BC4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746505793;
	bh=o1R1uS4mdmziynn2yf/4D5S0D9r7/qfSP3Pauw/JiN0=;
	h=To:Subject:From:Date:From;
	b=nRbIqBa4/uPtPCt0+qxo9WWuahtIo0Fd0c++gXbnX3/jdlGaNtG/WH+4hvPwhdAdy
	 ZamXJW9CWCSYhIv285ktzZj9a0rVKfF7J435ScT+z/afdYwbQib7GckeLae5zn3BC2
	 dZLeCLS1PDsFRSOgQec3k8uYwpJQm74nYy8dmgSboNNiI/3/hCU3uOy6kBZQ8rZRsM
	 szdywb29F6UJwClgPP4D8TzTTjuVmLgRAuqkIblr+HKRg2dmshcURFYQx62uqvlyQw
	 t6opfH2yike5vcP/fI2i8EjrcdOrwiAaQdnd2N2h0ElggNSa/yHuIW6sfywpn4dCtO
	 h8cVlzBPXGbjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972D4C3ABAC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174650579361.12847.9079658462325329363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0645a0a1832dc1ce8ab8053c84fd82e9f3cf08fc36d77cecf4b705cba5ed528
Date: Tue, 06 May 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746505793
