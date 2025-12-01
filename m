Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4672BA55
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 04:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764561774; cv=none; b=IlXgZMWau9yM4yiPVcG1ug59PO/FEES1m36WIG7kI9KRIOT0EC6OjtzxEWmL7z9Wkjwux4itAgYfWssAGsESUCqfyBi92iu+F5GTeX1e4neU+GKE5iXiY54hTpUvxiaqG7DMXzmXG1q8JkosZuzDisKl2gr/VaRu66U22z6GzdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764561774; c=relaxed/simple;
	bh=rQkc/OQ6Uee8RsmpmOyKLV6vEzRlpAiDMxW3XUYNiyA=;
	h=To:Subject:From:Message-Id:Date; b=UwYbrrGZZeXJzNlAylP35zOLbK3IzZpr7XJ0GyogTtRZdSSzcinRbByrMaBHbcL8zdvCHcs0IHEwmCuUNJuytEvgiiOVgDNaNVRPIRr+WYEei1w+3qgCEoBenoH6Htbs9eQX70ASFW1re+vSkC5U31Qo98qU0iUk755KsLur5FE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZyR/gXhJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZyR/gXhJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0317C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 04:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764561773;
	bh=rQkc/OQ6Uee8RsmpmOyKLV6vEzRlpAiDMxW3XUYNiyA=;
	h=To:Subject:From:Date:From;
	b=ZyR/gXhJOyKtmDox48J0bJ9o+V+MHxH5KOuWITuX0oYM6gdzCD9aZ8g93eCwU//z/
	 QILwteEuoI9hwPMKixKxppphdXlcoYxK0zDXgS6Qwn6sytmxyPJaxi66Mn2Mnjox94
	 hcPIGX2k37NhpsFAvMosdjmH8+RX6m5vU/ZO8IdDvkefUnHWYPE4gw3bh2oZvr+K6q
	 TaLBeU6IdX1CjX9bWUKzUcanXwDBGUxOITyeg3tR0eKwiCaErY/vVxWpqAAGsIJCzV
	 EMx3yw5SYGWiHfxmiGsqY76bDbvv09LhjQdmmT0kCOLgzE/iPcLEhRKzvF2ehX4l/O
	 tA6ToahJU1Seg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981B7D116E2
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 04:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176456177360.26942.17044665907192691822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 344e5d44384a4c8fd64b136163802422b022fd112cd1248e6975d0a1a3bf7fb7
Date: Mon, 01 Dec 2025 04:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764561773
