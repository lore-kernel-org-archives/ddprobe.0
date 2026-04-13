Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D3A54A32
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 02:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776046654; cv=none; b=LWB6bI5zRSRHSXBvXwohHJdgrsiPp45mvNJkIvB3xSMnmsAMAK0zqrn2bMlEOI+HnQsTJLdM5s93guun33Jklc6jQronP39GDmgVhLYRHgQAnERVLzxYZRW3Gd8evqDX+EUYifRv+Ww9hcaLkg94AnWh8Hor2F0OuG27yryuOkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776046654; c=relaxed/simple;
	bh=UryItq2FtRLSESn/ivNKVotPi/zCI1xbyPRKny3HCuI=;
	h=To:Subject:From:Message-Id:Date; b=nNFqFA8gQqr71N2/QkBaP0l24FJ/dAqBMzUrzVNIV87qH9RwoQDXdssTG2mu27vVSPuF08dUAR8+vIV5rDx+F3kpLIGxlSDFrt7ssajk8bzMBNceHtOOec3I7FaGQAPsXSQkvp5F7eVKftRgSlon+VGjxcyKYEgCX1oxavddCLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C4vQjW8u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C4vQjW8u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1D2FC2BCB1
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 02:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776046653;
	bh=UryItq2FtRLSESn/ivNKVotPi/zCI1xbyPRKny3HCuI=;
	h=To:Subject:From:Date:From;
	b=C4vQjW8uD8XXAzx5eWcE7qiKtI/YHxdF+AifDKfu1wqui21/e/M128tRenGPeeeSc
	 t8tHs1zfwDYBx9reKZHKo7voM8TiQst+JUqbr8gHnQLjLAYBpbm9Weag78AeDV7fIB
	 05K7g0G6GaJhZ/rPeFFYirOY645DIh/VstqwW2cnbfVrUW6O6J1F6YuZe8tynzawc7
	 r4ULR4A6kQe4WR0rC14xqYgndrawk56IY4nLxr32ln+m03jQ2S5UivrwoqfKgRfPh8
	 EORNgsBvJusu9a95FQzLmUMRv0z3QqL5zSCWq6aFl/CAB9lphw9qiPKgZmmkq3LJAb
	 WXxwTwdDSKrJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF6BAE9380B
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 02:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177604665368.17349.8704409467057676384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ada60c0f701778eed0d1e802a1ea83eaf485d3640d1217b5e6b9cbdcfe048cf3
Date: Mon, 13 Apr 2026 02:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776046653
