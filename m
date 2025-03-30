Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CEF7372
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743375594; cv=none; b=Pm1rm8WFGxyZDa2ZbiY+EetF6J2ZCopKvd/bmDZqAaajMFtSFFRViiotGVVUQWrls6FFL2LlUn5yCM3LuYUM2WUeMWisd9ohd1pkqpap+45PsbTVQ8diaVDjB8JLWtvrLGGHyxDSvAP6/DeU82NH3D6wiizH7igachV0Z/utFxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743375594; c=relaxed/simple;
	bh=SZozeE1ZDYcjwv/trimMgJXHBY19NhURDCQwsR7hs8A=;
	h=To:Subject:From:Message-Id:Date; b=j6Cq/TmlOZ4VG6qmh5l+mc2f18azV4uTTG4QoMSDmwrynvcZNZuRxZp2q8JamsB10vBMbQ4THzX5k6oUVhjJFyyk8e5MTu7QJY1UqbMB1+S3IMfFgi/uxwhlS2S79Hx1nNcBJUSjNdhBzMl32sKmtNTSvwOAdvMZrVN4zU4S78g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fzAldYK/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fzAldYK/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4A85C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743375593;
	bh=SZozeE1ZDYcjwv/trimMgJXHBY19NhURDCQwsR7hs8A=;
	h=To:Subject:From:Date:From;
	b=fzAldYK/eDYcx3hBAKn5i7lFpMH5E1otV6Sm2SNaM9kSpY88tfVal9QybTZ7jOZHt
	 gL2b09vcUpRNa3tUJNLrluUeQeTaZfEv7J58S4wVjda1LXphJ22bJHRUji5iKEkgqK
	 +vWIQUkDzEWDewiltMQwRZ2xKn2IT62OaaIrZ+tk8jTFf5CgGgoVKsQQAbEMoaW2Hs
	 2OPsC5/VSJXY1F3AIjPdCHDM9NaXdAlv/2YrV3ye3tq3ozHz64VYibFC8HwsLt+n2I
	 f1DNk66SD7+W/38ZKknxXu5JDSECWqEx/l78uGaExNZlFRxDtSptuPzeJDek1gzDBw
	 n5Rz1CBia4dgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6C82C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174337559365.24973.10819222060936855928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b7def91c059d368539aa151b8fb431568c1ba2422dddbb2e9456d1dc15bec31
Date: Sun, 30 Mar 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743375593
