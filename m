Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7F7280CD2
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 08:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768120434; cv=none; b=bD1qmrzQDfhLWg7NLslcBuwt2aV8P81GlMs1Gu8nZPrNtUEBay1L3ZvkKZxl/26ytvKEUW1+c0yJkf0oTK1RSXyMmqW/82OJbMXp3BUvtItYpN/mP6CFlkzD46/4kayNX1TRhilU7yLnxc46iZXqL8G0jJjeyLEMn1lFJ6/1Wcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768120434; c=relaxed/simple;
	bh=sh3dDeWI/zcTL0x5K7JgAcqCcnkd96J0MyE3VyK5hDQ=;
	h=To:Subject:From:Message-Id:Date; b=kcoF4J8vs1pEHFb1dUI3AJGnJgBuBqY1hVigjhy90Jx9pcHHo08UXaxYrxV0bldvraCnodn9/x3YCqRSgNPeSS6O3yFoybDbVKP+KTs9Obr3PkGl19+MKSsOe7P/oQnWUw8yBNHD5OeqEKeBCqYTfJNTLcGDrZjaGo9YGdEzSg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SX9w6YMA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SX9w6YMA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78F8C116C6
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 08:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768120433;
	bh=sh3dDeWI/zcTL0x5K7JgAcqCcnkd96J0MyE3VyK5hDQ=;
	h=To:Subject:From:Date:From;
	b=SX9w6YMAPG25xP5B4vLV3PtuS6oPfcr7mXepGrdMNA6+FzgDSrF48aylhyUM6sft+
	 wvba0ijN+N+IcyXJ2cwPklvY6GHqGJwfQ6ZHbzNKAFrvuhyjTPSX421W/5tordoMFq
	 QNjAteep1aD8lQRunRXNuef0QOMJ9N6UrdhKlG9MVw4e8p8zTvdTNq8JMEVfpzaB9M
	 BjWGc08nGDcM8Hn/MhvDZKK8b8171pL2OyWOs8qa1EQH9FN6r/qgF8asC+NJ8PYbZi
	 N61MlHznOizHmR5GJAytV4QIdVEnwuZo/Ta1wS6ESkC3CEu9bGh42uowrKx3xPDxe/
	 9qMngeAk0LkvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E51D2502F
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 08:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176812043358.9595.7014858665557018585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f1b2c5e1a47659bb075b6d3553694d42e835d1eb2743726d256b24f47d25b7f
Date: Sun, 11 Jan 2026 08:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768120433
