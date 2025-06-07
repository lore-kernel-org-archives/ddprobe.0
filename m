Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2186170800
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749287994; cv=none; b=UqRp/RcVm+tyZQ4dsaT5T/P1hYyVbAygbi+LIYtrl0c7huxA3FjQcsgki6l1g2DvGEC0LXkRGPYVkVU5+pDR4ANFQHv2/+Px0kK1PN64ws5ZbHeHS4obBu3UpvsaVeNkOluE+JXjgPmok9yq5Oey+mRJZJ20F9cNdBvW7bc5VgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749287994; c=relaxed/simple;
	bh=VXVm2oSKg9DJdRaanybAp+hyPpV5Yc5ujImWct/0YjU=;
	h=To:Subject:From:Message-Id:Date; b=O0YyjjFqUkXLh7s7F9ApxlZ8rotXKLVjAy7HWl21X60iMW7sf/jNQzVfWDhfrbGfh09Fm8Uh5R++t4qWIRGNw1R+Y+zapd2rtXEp12bRHZPYcVysHT5N3oU9QImMD59YLEPSYYNXMCndrj9ryIWvYK3Y03BEouumFlxePjHeElo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WPGOy840; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WPGOy840"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB52FC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749287993;
	bh=VXVm2oSKg9DJdRaanybAp+hyPpV5Yc5ujImWct/0YjU=;
	h=To:Subject:From:Date:From;
	b=WPGOy8409Tv/IZNVJZrUTHYGbBY+5GPDE/db/mqw86xWsDgYzLPAFKm+ckVPNsI7B
	 zEyFMx7mJVUslzXThyiQENz8XN/Dac+iE3qAeB6Efh/unuEsZy5/PuE7toD4XMtRMR
	 rwvX4zWtuaG68AKQXcGe/9V6sGOFz2ChBiBQVBhKrCiIG19X/7hag+CurgUoUm8zZ7
	 M8mLattce4PDPzWrnqBGYPxcx32Ic9lacFkUJiZgzl9hEU8ENm5wlpffiEmTNNN1Rl
	 fD0Gf1yQ17yUOgwYYOIhBHA3pRHCOiLuZtJV06205cCvBzjApw0Ys7rz3/MuZxFABZ
	 pHMLFDQoeAILA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962F4C5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174928799358.12615.10859162300661806340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3e79cae4d684b9e33ea080844e725631d4cd547912f39eb49634788b7b98590
Date: Sat, 07 Jun 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749287993
