Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50B4722D7A1
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789857034; cv=none; b=dkp/0hSdVMLic2ttyyrQQVu/fIlPD8cEaEq/93i1C6HNkhbQlgrihcsgefyuDYabULavf9aAQu3Wh/qbb3Z+uW+zi+w7JRriB3SfZyM3R582pAUha0UUK0mtizIXp9Nz3XoTghpt+X7XC/oYO00Nj3pfllVJv98g4Uagu798hiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789857034; c=relaxed/simple;
	bh=NWA6XhEB2Pk2Cph+tcJyR/maflcWJTovfA47lYTncrs=;
	h=To:Subject:From:Message-Id:Date; b=OzGNPXEa9c2sTzhSONZNdW9N8bGQyfTNBaue6nwG230GtQ0DT2HGHLfRU0Mpx5KNN2ygt39IkFeW0+ci5LWKixWeKO1WN5fNwlI9SzExpvCX/LyathNjdAQLANBfy3j8CKR7CVje64is0CDYfHBF9XgE2o9Rj020u8Shk+TGG/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pK7dzAiW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pK7dzAiW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5083C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789857033;
	bh=NWA6XhEB2Pk2Cph+tcJyR/maflcWJTovfA47lYTncrs=;
	h=To:Subject:From:Date:From;
	b=pK7dzAiWauTmjTlfp1IQy531rSXuwOOai0iZHXv1CiTY9N6wRIl42N03rwQl/UqqU
	 qI9qWvHT4rTNncFbUGjhkl8+keH9ZEZFekvFnOOen47mQsfhVrTfzDjnWwsVbLlOr0
	 n0dkf1+MqaNfMSKRJgxQUqXhPhTwrD/3rTA72uql0+L49+sULFxxVDoq4fabbvUNAA
	 MMV52I7sctdBe5zItZZny09xnq3PF9lh9R/1TMp7RPVz06XxIS94XgQKn4swYdGd1I
	 XGIOC9L1nnok7uHh9QIQVOjfczYmsgmXrH5pYBnd+XeHkLb9XzCZ5bC1Q3xcSIgO3P
	 T1zndQgpvM9sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B00F2C982CC
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178985703368.26448.6952740833953661892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fe526f1a397ecd6f362a5f704980b1ca8ef89f2be2c0b1b1c79d7765c23e4b8
Date: Sat, 19 Sep 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789857033
