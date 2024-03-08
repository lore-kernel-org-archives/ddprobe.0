Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98F801E4A4
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 05:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709877496; cv=none; b=DFU/F/rabAvIEnAvhV9iet2PWvgkxwQOkMp423kuDvlz0ealC1z7lnD974DckL/ZaA4+oUbQVH0pPADrZxwp+aJSbaN/3YmU2dR8hk89MCoZ4MPWiDAXRUbuVZt0mc+WrJgN0Uqugeo/8oM+6037r4+WwF/ufajFM4dnF1G9VuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709877496; c=relaxed/simple;
	bh=2JFZ8ARJCqXkqcHHoXclt/YIkvNP0fjy7PJuJDPbf5o=;
	h=To:Subject:From:Message-Id:Date; b=X7EMIdkSykJwTIHnX6El0nmWYRjDMqViJvBXf+YJ6C8LivxBBfEmIatcFV3RZ8JKWjuS1gKxagc+2W6WLJIhuC2TCrAUN8pP4VyMLhBqA6joP4XNEYC4wzXlu5Qo37r+y7TKP1jLbi7OEhVzUdyMXP7jnW3TyxitACx0i1Onq3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VD7jCywX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VD7jCywX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 783F1C433F1
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 05:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709877496;
	bh=2JFZ8ARJCqXkqcHHoXclt/YIkvNP0fjy7PJuJDPbf5o=;
	h=To:Subject:From:Date:From;
	b=VD7jCywXjJ+yYRGHIEevBCWRfyspvIYbdjc7OiPNAfWIbkBd+hPYKStMoz1Qndsr4
	 l/ZEqLz/uhPIIs1FDmBXfRieNzyCSPa1G+9szz50aLH+kaEh9poJd6OacGuUZONSBa
	 E8LNa2rc+QhSbYJK7rOXcW4vKOpProcPlZAkayBRY5osK+BtHygzg+PJNG/NnDZJJu
	 2S1QjP6W820LxiPSY0XkPdmDwhWefvNfN6DpcU55QfOUx8XLv64ShGX0fXnxlXQcY+
	 g7ZGnkTqbvCA0xlTmXK5UV2BIr9Bm1aRl1RUElIpvIIIhMNmBEn8W0yK+o8sGe8BQ1
	 PLxsoXwEA0D1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61D73C54E41
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 05:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170987749639.6619.8020341456565079380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1acce25f05e9330f46748e742d73c365134a87e564d6f881b23356db44acf3c7
Date: Fri, 08 Mar 2024 05:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709877496
