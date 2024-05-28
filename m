Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E58716E87B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 13:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716903863; cv=none; b=jouNfJmubD1RLFyAuUSdrDSPOXMq3Vpg2P9SunMVhI8PjYGnADDcdfSCG3GngC7MHhW6sUdsKmh75OkPjoe8sOj9bf7JoHpcCP/zBAfQiIRs5ciECyRH4W1IGosJWcU4LLeIRPoiDNNCSEgbjCP+p7e4lequ6y/LiIb0kRa93XM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716903863; c=relaxed/simple;
	bh=MLA7sKK9+UBya4CZR9eIgTByhJitP6dUacxjfNtK2uw=;
	h=To:Subject:From:Message-Id:Date; b=BoxY65GQzgUqKLjd1PNNxxC2yhgQb2K2YrIgxfezba3gydyqg4G8TdTHbwDo0JhTHa45p/CAwR6G4xDWV3KqiOzjfn20Hm9ZET4nkYIa/LokiKJ8LDdAeZIREc96N64qrwPYULBYoJM1x4yoEDJmKvixyexilTaNcsmWJL7BbOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p1Ba8Tgv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p1Ba8Tgv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3FC9C3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 13:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716903862;
	bh=MLA7sKK9+UBya4CZR9eIgTByhJitP6dUacxjfNtK2uw=;
	h=To:Subject:From:Date:From;
	b=p1Ba8TgvmZfhLa+uw3xCNfqdntW66Ue1SFG9txRGqfiiMlsdR/LgbF8QIgrTIb4cl
	 bxwt5NTBLJ0VkqADtbo1PwSf+NeyDYg2tCK2zadTdwc0Hb+DpRx1nv049aP1RIF3ti
	 W738kLZRUH7Cjtm/0bWr5ft395N/IKpn+HDP+y7uDrJxM9k4ZnzopXtWNVH7f440Mr
	 wLoJ+Xpug+6ALfzvj7TdwKYzQPFw2yPKtE4jYzAsBK5+GEK50xIBqhxa8a/1fJ8DIN
	 UCWb4lpfXz/FJG61lQGHpW0h3RQWXDNvYgSvd2kS+FMfsr02QR9BxoOXTHgSjE2HCe
	 GEl2zFSuMM0LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFEE0C25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 13:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171690386277.25458.2146067409753839369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6486e430b9c44d82216215ceeecffcc2f704b69647feb0abf16064f2cd6ecc4f
Date: Tue, 28 May 2024 13:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716903862
