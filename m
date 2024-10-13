Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F037231CB4
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728786354; cv=none; b=S4LKyWwthVk9HHDrENbVAhZbUkTlrkmuIMaEXceHpNiszFYRQuESb+8RtohOgZ5jr7Uc/btTwwf8Y2y18VoWnXqygKR1ExJ8h1uXw1Bs9vDPlU+8QdyRoFNgyDc5ksjD0zh0ZJJRftDx/5s3LxAECARxK7r06kc4aLI8AysoAs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728786354; c=relaxed/simple;
	bh=vyJIe2z7Z7k48AREdXEQ1vtW4qBH3G0F/K/VeT+vozo=;
	h=To:Subject:From:Message-Id:Date; b=tn9Ff1TnsJfwa5gx7XHWBrP2wlRSDpn1LbKRF5T7C4wr+mucU+UXuKYOuHIIeGoOaS5+njjyOKXLvFEeI/H/7aKY1QyC4fV0lpDN/7jiCW2XaeAWPdqJhtdKpUmcUhrHu7yqPOl2J0dYWT0ZhZwuEzoba7+rFQS5MGlayyU9vKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gnsiOy/Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gnsiOy/Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD1CCC4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728786353;
	bh=vyJIe2z7Z7k48AREdXEQ1vtW4qBH3G0F/K/VeT+vozo=;
	h=To:Subject:From:Date:From;
	b=gnsiOy/ZaQ/wITKIRf/tz1WFHM1k0MawQANWTBvrkkN7GrvBYsFqT9+9D1Uy8zmmv
	 gCY9y87H2f8BoWDBESGWH/l3b5td13qgAzdY9sPOJi9C1b5OiVOKQxL1smfVGeXCoR
	 DuaClkfEEZJ51PGmtQXRf5j8lWV/UglyfFJ2z+DbSK5aeQrNqVsbg2PPwu7U/k/Bq6
	 8AKrrqwZQoeATsHFQ0PbXAyDCV1rvgxy2VcdZ4A439mtsCr8Gi2xVLpaAfZ9rqkqih
	 eWiX7Ebe1RS+UJ4Vcmf6DUV9Jzr9BzRn/pIaeAD3jOWtJMhx5RSzkQyNfaSHuCOZf9
	 AlBTKJaA3Ey/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A52CECF258A
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172878635361.7358.377072378797788081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff655c1bd0e64f1829dc3f0f58c557fd669ca82e0890c3de90551f8c470cf9f7
Date: Sun, 13 Oct 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728786353
