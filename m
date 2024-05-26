Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6398679F6
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 08:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716711863; cv=none; b=P2JYL82GQVIMXFygIDdXhmgPYU3GUyUubsDwCj15CGgpW9ph+gWgsUi5TAqa7iEzF9Y8TVw9M9qPIWkx/uqPxEB0hOuCWA2Zmnj90E4IMGsjrQGHTsh8eTXn0aijwKA8HlaLAHrZIzwn0Upmnfnskggzu8JxMacYLIDZFv49/38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716711863; c=relaxed/simple;
	bh=2PFwGnSvdNDfOVH7uWXrrkg0d30cUMmZtmZpAolzvz0=;
	h=To:Subject:From:Message-Id:Date; b=Zr6wikStngSYIxfkLwHUUUAqchR7qVn5DNn4L0Wu6V07ebMhulff8+3m3n9J5HJhmuyI/Tn9jwM1zGZcB/CGc00EiANN99UpZ5uHTNFjyfeT8Cm5AfGz95gFrsO9l80MQZl/f6Es7nDfKpo9sS2EvOWnzVmoRDVDu+ignacUQek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aqGoMt4U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aqGoMt4U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E33BDC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 08:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716711862;
	bh=2PFwGnSvdNDfOVH7uWXrrkg0d30cUMmZtmZpAolzvz0=;
	h=To:Subject:From:Date:From;
	b=aqGoMt4UO675OfLPuR/zocLrvRyMEzrdpUqys4oExCtfAAv4Cyxm3sEBNlLj23t9i
	 4LOWtwKsXtyc4xOYT8Ri/zjSBNCcM/CpfYYT4nWrjY6+TUBkyzc5B2Z7FYOXi7BBab
	 op8hT21+a/EhlbYHQKnca6DYHJJgb0YcJuBp2zR/8m++hJZ5rnds9fvn3/EjksG9EL
	 b0dIKl+SpM187jDI+XUGiHcD+J8ymFgdsx8nL6Tl/pOcSB57RiWVfydIMFdJJ40yMB
	 6AqLhcI+b1VxEYktN+TwUVBX+qWkKI65hSNYEF2G0XV06/R3xDck98uD3YZ5+C+Yg4
	 Ymgw9oN1qOIGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCC7EC25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 08:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171671186278.23653.11677779952642708022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34d4810061d9443000478bd37389eded42549ff1126d42f2b745dcabf5f52ed9
Date: Sun, 26 May 2024 08:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716711862
