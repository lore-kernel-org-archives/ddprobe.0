Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22E141DC198
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 02:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775095534; cv=none; b=nd5ULPu7l8JP92N9KVrM02OzDtTKTa5YBmmaetpThukSw0K39Ty7i/2/249Nt3oEMr45o6cKuG+xMTx73e4DJRsg5uPEQVfaUXD3LiTqGcwl1ud01TUyKGp2IormqXj1FIDQnwo03gJP/BEo/o/hcmEubB4Duk3lopbuZ1zNZcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775095534; c=relaxed/simple;
	bh=3/XE5u+wXQy4eJfXBj8+MQPX8tzw7MQV/W3QVpYDFaY=;
	h=To:Subject:From:Message-Id:Date; b=sXS1gRkQsvuGu2MEEZl8ONbvJA5UbEL6Eu2sOOuGxzrK05eI6nJfWjYfIW1Pv3Mc4/4VfNE0RT9f2g5jiA7B5mm/wmEseDf9NWimhh5DnfA+B+hCrjKwhWSQKa9hSzFKKqq8dLSS1E9HqmjujDJ/NjHWL1q1pggFZ0rBUc6ed7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NH5PmiWR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NH5PmiWR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD986C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 02:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775095533;
	bh=3/XE5u+wXQy4eJfXBj8+MQPX8tzw7MQV/W3QVpYDFaY=;
	h=To:Subject:From:Date:From;
	b=NH5PmiWRBKrYx3MKi59WqoNb5nSojRhKr2CFqH6MQ6AFJBNUl7n/rT+ODYzGBJ4/n
	 T0Udv0UskymO078OrezIjMrrzRRxLawWSkKI2yTG2QekDy3kCFtSaodfRDCc4sRhCv
	 rOoyt+ZS0Tvi6MuQVTOhDsOU7bGsffXuamI04pKaPjDZ2O6Y0F0dYV8ZR2trjsSjaW
	 T5mnDDrAsP1UA8ulND/wvyPU4Ag04cv3WABCjykzUqiwXC41Ntddabe2p79Kpta/FA
	 Mg310yHSi4UJLbydftjHSAc4NGE5Wg+EyKPU0r4a2RpA2YXa48fkY6eZOjEnsOoR2R
	 hA2HbloMBIZNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE1F111224B
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 02:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177509553368.4168.9008947364818951787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ee9f9199f6c70d75be2499c60e8691f0fb24b3e79cafae251a4fbfd703986e4
Date: Thu, 02 Apr 2026 02:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775095533
