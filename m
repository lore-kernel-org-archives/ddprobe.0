Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FF3B224887
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734621954; cv=none; b=FX5Pjon9C6dtKBUgHX5/uj/fmb7m7OjOzkuk4J5NFDIsMwpJpOEMJL5v80xEUVsF+HAT9ZKFkXEfRgHUsJADCOs4nbj+OO5xuyQ7ixMdz4F4SpSBUPQ4Btf9lsAX7BndyMu3weUti1kixxveWjnAsHtlZ8jIirZpZeb5u6cIg3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734621954; c=relaxed/simple;
	bh=4v5zFuZHyekQ5r3Ds3muG40k1n9IMb1g1k88hPbxQpc=;
	h=To:Subject:From:Message-Id:Date; b=ly9cG2cCr6tYpxXVYVZi1SnSiQK++pD9BeyUlhe04QF+BmQfvSpbeHxWbt0hdgVuZrRKp9Fz9HUv/hyEwddolv9hJkE/59zvR+YlY7dss5U6cRJVU9GIl2LfTL1TwaIN0ItRvmFqeDNttBqp6y6vCih40Sedt2bP9ixg8wN+nVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j4fYhZU5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j4fYhZU5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6942C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734621953;
	bh=4v5zFuZHyekQ5r3Ds3muG40k1n9IMb1g1k88hPbxQpc=;
	h=To:Subject:From:Date:From;
	b=j4fYhZU5b0cj1GxlTfvBWAtC0Ojh020TrtBy+M5FMLbhk1xcg0ol5aTJi9CAPoROM
	 Bntz5OQaonGGvW5OpH5IfqiiPcLaX+tcV9SOCU2tVCIPDgjZjU50Oct+05Is2scVr0
	 RiU8aG+ISC5G2sZT54LtdDfhkwg1STV5s38Q8oKN95QoOBEGu5wULjKz/gkSTJu3UH
	 UfQBSUaDkDqar00Ypc+TJUn+RX9Du3ZuwM3Jvs83tpB2wV2H3bZf30J5dF/kxLzufY
	 FqGpx87o7s8WzA+hZl5cis66zmEefPbvZMauK2ep+xsjGalptohN8ngk6NPTgjLCib
	 PRfKJpKSNW2Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95564E77184
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173462195359.11737.5761709616826672256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e81a044cbd32720aebc2659cd48692e1e60aa7b3de9e7fd0227286e76fb059b0
Date: Thu, 19 Dec 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734621953
