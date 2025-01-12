Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4BF0157469
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736700953; cv=none; b=uvFU55m48zzuNXrYEXo4NDUJAPbOWZ+pgEM5qdv8fKcjFgHkFmiEwLdJEJBL/k7S8G/sfGnHcmHtXW8k1rokctLDwzVVSrlmaBf/3dgEkZ7HXqYve8ebFt2Dh7nUeCRiht07/V93MNNvjKbEL89lEoiGDs4OKH2smMB3a5lTrnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736700953; c=relaxed/simple;
	bh=Ovzt/rDtVcYP1y18TH2ZJFIdHtjO+jmVy8P8blcgLVo=;
	h=To:Subject:From:Message-Id:Date; b=UoHglunHq2ytpsjVR6gJnHyqr5xuUoPOcom2tM8DT8Okqukn+i6wzI2W/e55vUZt0HWfnJvycEpJ5Qs3VGus+yjZTZV6IhURNRyTUxjM5C9vGf9m2ATPjUGuWYeeN7BfxQE//PW9A/U2ziO4CMXUrkmn0ouRLztsQ5tX99bsm4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s1mJt58e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s1mJt58e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE899C4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736700953;
	bh=Ovzt/rDtVcYP1y18TH2ZJFIdHtjO+jmVy8P8blcgLVo=;
	h=To:Subject:From:Date:From;
	b=s1mJt58e0b9Nv4mPKxsz1helwxJyoBnbAxqXIeMrvyTB3biqkYZMatWDEOBuo+YQQ
	 JUrA50vbeo5p+Rgl/A1USl1N7SE4lzIuiUSn2CRmFsni8to+TGtMj/dvAIlE8nlk/Y
	 k4FzFZnM1T1ERPahxrwJv40HmKCfkE4u920ykqeTFpHdcma/Kf2mH1QSOR3WQlpUVG
	 FzLXBa3xm4XP0m9atORaaeKgsqdFLxvM+ioViXcHfFIuUty9362maVi9aElGfkIWEK
	 Owby7PRKTovPE2GN9LcaIvvENAese15AIbWxvSnmHwq8NwaHs4OoG+pV0DSlJWMXP9
	 9J2Ug4TS/LdNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9626DE77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173670095360.7652.6300744377756257016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe1d1e037789fff69ef77dcf0e867645de7869376d9d29575f9eb000d81e7c19
Date: Sun, 12 Jan 2025 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736700953
