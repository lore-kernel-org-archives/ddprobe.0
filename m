Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3151814AD25
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727457954; cv=none; b=kw2qc5YdDVMMKYhHIH6zeD+FUX0W6D9PnTWgV9YTzNn5dZJwuMJvvaX7OhpI1oz+RQguxJ/hQ6hY45QMwb3tIvsQOn7ajLaCHn1TAomFfYD6HWZImczg13nsDXN1YPCtgAlGucJXDFrZDL3KGbWzhtDzrercYkfb8IxfJQcjKVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727457954; c=relaxed/simple;
	bh=oOa/9RAd8AmdOgPvaRfyHaoh3wdVBxRCANq1PXJV1f4=;
	h=To:Subject:From:Message-Id:Date; b=gnTgyQcfEdT7hbKg6vA1rcdlR8uSiXxg8LmRrUsgZE3aAbLZf9K5Gf8/dq43PxqZy8sbzi8jEaA/E4VH5eabaxa09MMlUO9QDSMgvMost2WOlp82COema+SFG0m0WmX5asjIwe/5rYmEIbl5EVzFuGmGEtK7A4pRXIzRwoCJ0As=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AMt5YZ66; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AMt5YZ66"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B38D6C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727457953;
	bh=oOa/9RAd8AmdOgPvaRfyHaoh3wdVBxRCANq1PXJV1f4=;
	h=To:Subject:From:Date:From;
	b=AMt5YZ66A9KSRqhzi8Tdw5GF9rXvm98hQqhPBukoHRwOMgmxXknhPfkvGk2/o78Du
	 PnVZnSCcJ9gaHOybhy6/DKk4Sutmz80Kr47CJjD7eDcPOVX7Kmjxh2ToYOKhdb6HH7
	 312jdOmlj4Tqqtkl2HaX7mtdvT11IZDSj8OQM24PgudgAtF+gCpdlKukW4CYgST2WX
	 Jw5bS9wHgrDwP/duk7xnwojdyDyvg/LraVifkKaGDdujeHZv1MCi+zb2MdGspe/7o0
	 Gisi5VCKA1ydNNzE52Frbyvq0dBq5p8nV7zvWhHkMNwTSKGPJjK3YXPSfyn41HiVCS
	 zNdn30uw8uZdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2F3ECDD1CE
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172745795362.8047.4610701657205028664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a95d0d7667d1b2058bd2762198f54d87615c32d6292881dd463ae7412354fa88
Date: Fri, 27 Sep 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727457953
