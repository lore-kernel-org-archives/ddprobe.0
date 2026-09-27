Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63FCC1A9FBA
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790486434; cv=none; b=YCe/b9OQXXWK5woO7v8WI0JjL00n+bsnSF6bPnV5ThWpVptHA3x5/YDA/bOEODbGqYGtQhBgWpAsEofKYDYUCccqM1vwCb5mxc2xlvQ/8O+AtKg9bTokt2UEFex9LVdyo9i6zWMDxFgbZZFHidOXJDyW3Veiw/e3ig8x7dwIQ4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790486434; c=relaxed/simple;
	bh=fr7pIQepkgczHyKGEW3vAUjOkvLux3j4YFGqr8O98Tc=;
	h=To:Subject:From:Message-Id:Date; b=i1ei/RnA+IkavFPgtXnhSuk7QT2ZyIQ4nbtBTOD64erQlGOs99+MWRJE7o/aSp1JzmFNtQsMA/rlI668KZXG+8kcRiaGBNb9htlD8RiNjHNI7WcdZ2bSZvnT6wpp4yfw7b7Fe5JldP21vI6onk9aGdiGVGq1fjFV7dQO9mGLXo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s0cNNRgc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s0cNNRgc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1FDAC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790486433;
	bh=fr7pIQepkgczHyKGEW3vAUjOkvLux3j4YFGqr8O98Tc=;
	h=To:Subject:From:Date:From;
	b=s0cNNRgcKZz6/Xq6Tb4D9IUeCCgqVDFHLuFVWPLzHOrJrDZBjF/7hiH0A7nrrIeUi
	 F0DH2xAcd5SGg8orX4Asnp8F9904XnE1QDRe4ByUtXUo8ySa1yIe4TbK13amhpMe2M
	 TRMONSyhBMvId8a9eMfNoVWStWuNMd9CyySSV+MecA6hNS/4S6jaKt1u76/VCX9wJ+
	 IknOwFHcq13EDy6cOgddO3MC9zn3pVheu3R8WBnApA0q8cAW0jXKn4ZU7LuApVebyI
	 gzXqaEUmao1DXFeLvN+kc3IFGytJ1bZYLsfTuYFABzy8PveGQbodsaw1DKQm0cm6jU
	 VhP5dXL4jYwNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF2E6C98324
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179048643368.27241.7931403285567025952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8de3c4891dd00e05516c20f3fe71a484c8cb6500b2e59b0a2eaedfbc8466f448
Date: Sun, 27 Sep 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790486433
