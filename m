Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4117285626
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735129554; cv=none; b=u6wSBb6OUEgy7zeStr6EdAc2kEEvfWJQgOoYPC5sAFHCXgwZGo+MxQYKQQtA9qCm9Y7X4N3bcrxQxkt9vsi7cvyG6G2PtssKMqH5Ceu36ofmnRXGkFjsbsajaeHmiFi0V2HeA5J8+uCq6t2AgSOahHgpedW7owEF+98IiqGxdMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735129554; c=relaxed/simple;
	bh=vxPz6Oik4Pf6GlPqb4F9713Kio1JUoWw4uB6fPJkj1A=;
	h=To:Subject:From:Message-Id:Date; b=eGBB0/AIF3iSaIu7xYwVjCO/CqJLeBPG//RqgaPosPe3Zn/TpB6B3w9MOsttVqRNYYHtxUcx3lByfeiicpxLR1YaL3U1CPE4zu3s5Wsck1NL1vS+y9eMlzrDHGZZ6ccKtDw315V8oPujaS3hQD6S/1P5INO7qT/GQYhuOq9LE1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oGL5l7vj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oGL5l7vj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9E78C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735129553;
	bh=vxPz6Oik4Pf6GlPqb4F9713Kio1JUoWw4uB6fPJkj1A=;
	h=To:Subject:From:Date:From;
	b=oGL5l7vj1y7/3bG4pqs0PSZrzH3TiY/PQJoV9CJHFkCyL05WQ/DfjnALvUOeIfkml
	 wptSDR/cgmDeaePbKqkpkAMXTUgj2DTyRODZWEKB4ge0vO6SY6LI9C78rnZcUpE8XE
	 X4aByCPGCS3gD5tYc4O6BOZR/IzcbA9GH3aOpEWlEXvuz3flGYUajG3AMbKXYHA7b6
	 IF/n7qexVZo+5XQFWTXuFR9X73GrZsfOvCY1Mzzz/m5L4DJsWI/5PwisR3gazsg88K
	 jpkwESuziEmWwxBUcidij/lCDBCIOH77R+cA5jMjBQC1x7JEJj5Ht4vHTdql43Ez+T
	 /3I2hrMbcHVug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1B22E7718B
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173512955361.17948.11679666696586839673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05b36e7deb692fa7ddf91920f54b57900a013a908918edd73f4c1156d4bea9cb
Date: Wed, 25 Dec 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735129553
