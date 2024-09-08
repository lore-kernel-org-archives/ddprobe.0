Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2716F145FE5
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725831354; cv=none; b=lPzFp+Z7/KRR8UxlM/sHCtTweu0F7z7nU0JKoJjwSFc79RnVTOqcJgR4fYpmVlzmfOqRzwItL0Zbh2q1A0vU2k1ElYAnC9Erpjb7H1YsX7gjLYji3f3I9PgzkI3SRG16VqXWIjiHsf0TfXLlZNFR8AZ5MCh9tImMpycY6fODYsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725831354; c=relaxed/simple;
	bh=aAzg1u/Bhy6uH+6C4GDcTPMN3lvrHT9PkO7w3DklaMU=;
	h=To:Subject:From:Message-Id:Date; b=k9jjnBffBdVg3mfu6zlxakicURxqRItGU2tjuiDAw0TuzYyzlRYd04DCapSFMDCvPbf/S7BkWoQAg1FXOhACRJYuGrq8IX4SwvyE7Sg18eMfHC5r7eWsNoKJOR1zfxhomEKTelEuhAuf9UXbtO6Avj2R2QeJ1i3vgaUNKn4HpSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JxkMc3oU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JxkMc3oU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEF82C4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725831353;
	bh=aAzg1u/Bhy6uH+6C4GDcTPMN3lvrHT9PkO7w3DklaMU=;
	h=To:Subject:From:Date:From;
	b=JxkMc3oU64+jnPv232JFlP8yXtofpkEs7nVX+vTefQ9rjoC51ixcI33lfh2df2pMM
	 dt1uAi9riXWnTl8NNRB2N2/psbQjTErzcIfYP2UB13CB1lbKWgFscZwjgq/tZ13Lgi
	 sJYLXkFsJI2EaHzQQuvyH50n0vLy2sPp3unf9bglkHKsqSKJPX1gTVzadyZhXH0r2O
	 65TiKvPvO4mVqauMgSAGKaejuw7Oixek0xnVEvvqZTf0/2gbWFrTaUqR/El37i81+Q
	 tyjGN7DYjsgs0Ro6RPDwNlv8L+oqd+/+6cIQ+OA7i1tcff5/le7DOqiakEx3g8ZAHl
	 iXEdLujyKJEsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 999A8CD4F4C
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172583135361.26846.17594506746376507779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88eac723ca86da2f7a8672a303e30d3ca58d34d669383f984380e907efc703da
Date: Sun, 08 Sep 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725831353
