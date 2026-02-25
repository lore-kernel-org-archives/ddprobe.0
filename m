Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07BE230171E
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 07:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772006094; cv=none; b=M6q7OxvzE1K9HoOe8UQjeU3fjQe4sveqmANd+1Z0wMHwyw5ri7AGonL7SVGtd6iWBvQbenEluu/XniSl6f4jLD8ipOKdBBgvrYV/hNyVrJ2S6T404oixytJRht0DkCklmGF7Dj/VRBmALC4phyzfVR8WurakQQq4jQbG1jsIAJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772006094; c=relaxed/simple;
	bh=Pw/d9JcUGP5oJmRUvY39jD1GoUReJofyWtSfBpbWuGM=;
	h=To:Subject:From:Message-Id:Date; b=UHj7HVdGmY9+OTbeLCIRES+xnShqLT+m6w6Kg44fCjTU5A0wszluwDeD5gtaaY3UsoODNROnUrs3G35zw01QIMUzi2ghsY/BUK9Ojs7sS3JFEg4vrVAs8iLfGT6crXlmLxnI3bMHVhTK1uNxy//ybatUrlSvCR2XMxx/Ue9cw4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GANBUfkc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GANBUfkc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF5E0C2BC86
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 07:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772006093;
	bh=Pw/d9JcUGP5oJmRUvY39jD1GoUReJofyWtSfBpbWuGM=;
	h=To:Subject:From:Date:From;
	b=GANBUfkcGp0UW7MlfZEPSgouGBLewJvP0K6up4obQ/wUirT5CZz3v3TUB2zldPFym
	 paEBapPnL2BQ8jM22NIqyq4+fdErGiYVZEE2ndqSSETsweraIbgx7xHaDFcDIHJoGF
	 M2aeL4rqYgqunp4CXK6MDNDagYU0NDQo0eXwt1DYXH/p/Hfgb8exm1kz5ILecjrYfd
	 vejX4T0ZdDjukAMj7cx5P8x18hYXViySSmydum5qHDmRimWIPgPtVHdNggW9ZPG+UM
	 kqJPOIjMKgc4BwH5JJOjxo0sf6Uc1lK9uUfhyFbnyXLtY3FXP1HJLORX6/QylkoUim
	 fSROrNjuvr0Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EA3DEFD204
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 07:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177200609363.8687.15591786193551877470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dba29a1f2d0ef8d68147dea4854275f0ed11d8e0e96ef4114ec9d51705acea4
Date: Wed, 25 Feb 2026 07:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772006093
