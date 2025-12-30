Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F9862E8B8A
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 20:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767125034; cv=none; b=EaoMumb6YopESOQbmJaJ/8B0F+zKXCSzE8g4DYEPhps8YtgL6LXwIbOdxPBUUtiMkAPkdZG/SsL+bzOntSMiH8y6tlUTKeuRvwk61zWk+oqWUrnS8W5eBkJ1WgJ7k35+hNYkCB9vR6cj2miChZwT84bYC5JloIGX+GfJ3J5Qcnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767125034; c=relaxed/simple;
	bh=FbYZzwgQ4SaSEllZm7/+zFR4MOQOvmHdAaWA+XBCkqg=;
	h=To:Subject:From:Message-Id:Date; b=fqDBVl+JTpbtsPhUI9H2rJTuXB+8LA28XzO5ODFQ9jYS+IARi2rBeE+1KJZrcyGRlaFmYbhrr0oYdtqvV/Y6gwAPrJ1404QP3uQUzNGTqmaHcP4c615QriJ9GBHm1Pon2UW5k8GAcxQu/LQBL413fFVgXM282YMuBqM9D6M9CsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=niTbVIAU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="niTbVIAU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22CFC4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 20:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767125033;
	bh=FbYZzwgQ4SaSEllZm7/+zFR4MOQOvmHdAaWA+XBCkqg=;
	h=To:Subject:From:Date:From;
	b=niTbVIAU9g1oTau7yy5rEGcDq2146zTYbqpzprG2n7kJaaoZ/XjZV57WR8r5ovQPQ
	 cllo8rj+kwYKuX2jzYeI8s0lU/YM9D6bJrXXd7LmqpVV2ESKdE8CzqNffBqFBeRNy/
	 fYQ1pH36S3Uy8T6RA2wEXMMfuqIO2ufiV2lkDvPBcuJt+ydTirRd8UZlP5daPn+VW7
	 nKIjwI1JBDzXAilt9eC4GLr2GiO4rVa4E36gOzdXx+rQrX8tMK1Iws1+VXwXJLcAbK
	 WgiVawtzSSw5th2VGFUJO+gByXWJSusNCeWbI9LOZXgGDLXw7El1bBdzccF/c6HBCn
	 fnwpf6LxKAsBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B66E95A8E
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 20:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176712503359.15861.14910608094824223872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55ba56c625aee9c011860c38e9f99a68f840f20287c5af68af4e7a0002e6e674
Date: Tue, 30 Dec 2025 20:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767125033
