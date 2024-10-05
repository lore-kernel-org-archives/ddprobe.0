Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F846231C94
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728093354; cv=none; b=QKamQqRHuyowJPgYZRfDozbkv4FFSTr/sksHnyXmH0pUYBqcaky1tandpWVDeNc85zhJArV8Tb0BnxEtkQDoWBIiFkYcdR6gYpNPUiYbImE8MJarjot6LUV+yyCpvVJKoG6e2mWNUw6pXj3P4Z/g/z2PJteIccV24Y0yOQRsOuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728093354; c=relaxed/simple;
	bh=mJ47eFgoOOxMZiHjHU+mK/yWx9XOHFVdql8ymd9Pp0w=;
	h=To:Subject:From:Message-Id:Date; b=bayglT6G9/Bf0YvMiloq4CGNIVYRGqxrtPZ6xq24S2MBTh7xQiqQ2Z9WH/ETt0ABRicfkEo1rsCmLW2eMe5dXYoL5etMZ6L1UsnuLTuRJMhcC7cv/PrBsjP6+cZ7PhkFCEdhFxjaJWufcab8Z4b5JgsYruYFt+8hz1sbt2l7s5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UXnNauPf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UXnNauPf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8CD9C4CEC6
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728093353;
	bh=mJ47eFgoOOxMZiHjHU+mK/yWx9XOHFVdql8ymd9Pp0w=;
	h=To:Subject:From:Date:From;
	b=UXnNauPfTujveDnFV4WPnBwj0TqQLdGwpCcUh34wGbthkdpiN+ZBDwn1qi2cMaDeg
	 WP3dBYMIC5aBoxzrxmxHSQzV/swWYfujwgWo2Z0fVCtOfnx87ZqQvY2WlEmHzMiLwv
	 CDJgrkJtmzuS/lRxdpa00dQkpouOlJziMuJ8EDk/hHkr4CB1RULG9rils0B+KwcnEE
	 Wu7TWlNxnWXhtswyd6CEfwfqHKALv7Fyo88JVrfZZYaKvL5wzdlGMvMqvDubhi7aq0
	 jGa3vEYWTIjn1jQuqY/t6dzRX+rC/QFxnZQcqD2dDy6o1SF6J6VRzdwSDXDaUl/v3F
	 EFWA7oV0To9Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6ED3CF8868
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172809335367.27127.3630787988753643717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d001cd971b360a20bdf90cf89760ee5d66168998b1feedcc5d61498f70d75f6
Date: Sat, 05 Oct 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728093353
