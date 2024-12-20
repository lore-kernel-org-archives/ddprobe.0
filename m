Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 206351A83FE
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734732354; cv=none; b=ixO30GCl0ni3UNlCH6hShp5urci++vE3ZtspwzamkQn9DAK2RGyZU2FHWwOwr455lwmQ4MiELbWv3FTIAkydujRTFke5wZ9jTvpyIvSXXBsvF1g0OiE9WjFpuXbR07GPZ7ViLzpeSIRk2BtY1Nah8uKvZ9FWyg9AT3sQAM/pT8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734732354; c=relaxed/simple;
	bh=/3yp3+wpS8ZnqAaf1RgDOMJndL+Pr+3GwLe0GEgDRvs=;
	h=To:Subject:From:Message-Id:Date; b=U2T0LLgaWUvz5l8Ta2Q+C3IcAORe0Lr/s9mwnLpXgb4bS/ew+DeZP7A6f6YbcmXQRIBtYJKcCs3KXX+AFPbOsJf+KAilN8G1DrXQ6cwHptKGeqUFAdKbB4NUVutY2fG/8oDgnwBx0PI67T3n5SBVlbJYecHIKY430WPyV1CSsDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GubRrV+H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GubRrV+H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6786C4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734732353;
	bh=/3yp3+wpS8ZnqAaf1RgDOMJndL+Pr+3GwLe0GEgDRvs=;
	h=To:Subject:From:Date:From;
	b=GubRrV+HKDEYymPEnAfNUhERCQZ0JWp0oZ9GmlsdcB83OG72ZJ+7aYD19MamctoZE
	 i5oINscJ1TzeR0ifHOt6EYkXQppLVXAU23MTw52UZySywGnzQr7F6xXt0QLi5RAj6I
	 Co+cOMLtGyh51jTKaJfA2OfmZGtSxAhPSenhkRDGD084q5p7hm/qJYKpyaWSYBfFOe
	 e7l4NBXGlb5a8b4UO6VKQuZnCJ3VPpq6eQgscfpwcGCoxApnapxh30/hAs3cmfSVkN
	 xpSPKZZJdlwiuPnwEt/6wJSu1eYaTSN/pTg3gABnocaLFHfNgKiJ6Mlde0gad45pPT
	 H0S14s+W3KyXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0ACBE77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173473235364.2024.13443845024011335734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d355251a7d97a9d5bf51503ec11be0b5be4d4bca7d2b58d1990e57b9b62c01f0
Date: Fri, 20 Dec 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734732353
