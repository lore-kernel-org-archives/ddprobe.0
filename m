Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ED5B207A18
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749115794; cv=none; b=OJBN5htMyYIbgDW6WUpnsGraVpkUnUj+jduc/0MmgCrAY/XdKFoP3gvBghFuaDOLxk8XssUT5+evFqbaj9GmGMNUMpQg7/j3O5Pc88FoFwS/3iXXDpUYb57YJuX6gW2xXDbTWONPR0JpQ5RKo28j7djxkluM003yJ9EVC0lPQqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749115794; c=relaxed/simple;
	bh=rm9NdnZMXJfaAHuSVOjNFc7+cVUXB4WAis9UFn+Azfw=;
	h=To:Subject:From:Message-Id:Date; b=qnwWFgT4fW+xxhMHrenVAGaB7ON74j4e4XOP91+DFZybRZTjciqgLSzsxMaLb2gYPYdtDCM3rpElSzHuynzhO0wKPQdRR3AXlAoWcnGnixckWf6pktgORARfvRPyx/6a2T+Tvd3QRt9dQwyHV6fxItI1xHwVHJ/sJULwmkyNMNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I5VEm1Pe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I5VEm1Pe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D07F9C4CEF1
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749115793;
	bh=rm9NdnZMXJfaAHuSVOjNFc7+cVUXB4WAis9UFn+Azfw=;
	h=To:Subject:From:Date:From;
	b=I5VEm1Pe149Z+4muB0dXcEo2tVdONkvi0DplSTfacpy9CRitlUnZZyyO8MbX/BuSZ
	 txG2Dcd6qiiHg7gWPtZj5yErtFqjKzeBlQoBVzmvF5zu/VHK2IhWV4s6AjReOXGn+Y
	 PWjLiJAWd+xla9lIBVK1xhYYZ9fn7Mm6UC0tPXfotAiNtkiPW1e96FUMjpTE+MqRG2
	 CIBS8WNXUWTlYs9ddqy6+IXpOHUFjm3kSuwGKvBWxpmprKidyGovyaDaDhQijVWEbw
	 qWp7Q5pQQWUoa6eQu8JW3pfw9DHnkF2TuONOc3XHNAqXAicomYZcuQTxmqI0O8+oiL
	 xkhMbxAVNJj6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A66FAC5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174911579363.4061.15447816175988865251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ae9a5ff9d47313ec32ddae57832c652c6a3c7be1f22850b32702be9d52358ca
Date: Thu, 05 Jun 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749115793
