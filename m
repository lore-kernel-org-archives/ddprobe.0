Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A2C4273F9
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 08:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768637034; cv=none; b=iYbwVBh+c9a+5cpTodL/B1CBmHiQXbFzJ75J20k9OPkKgwJjBDiQtJZPYDwHxHw1mMgbDOVw7O4JcJKYGO2hEKTg/sPUnUhhALo/grDqYaEKseEDqfZ7WX4E7pqSgsaDYa3O/sx3jX8+Z4crsM1Qhfrg1MjNJuiY6O0geLJ655w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768637034; c=relaxed/simple;
	bh=+/FZYilbTqkocSPaSKUKX8WlY04MOtQx1uhV9lA7oXs=;
	h=To:Subject:From:Message-Id:Date; b=ji2zsfgnAnK9dYEZOcM4CHpzpOxvtB+5dJ1MVkJbifHDz+ruKuVcZyl1EttsyctG+U9ueN+5nafcT3mjRKAKy0NoQ0857Vb5IRK7bR3F7m+ymFpayZtJv1IHPtYTDvI1Us1x9vxgbMTFdlWgwkpcSzxoDsDOuPFgt/GVtuFcnsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kCRUVpNv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kCRUVpNv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8917C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 08:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768637033;
	bh=+/FZYilbTqkocSPaSKUKX8WlY04MOtQx1uhV9lA7oXs=;
	h=To:Subject:From:Date:From;
	b=kCRUVpNvEvOhWWN2gH/nMkMAv1YFZBsFjUMEolngY6YjFfHO8ZfDR9TOz7Gy4wh4S
	 fkAa3Tyakw5gux2MJ11dieKxlSGZTnJEidz5oVEAAUtNdNIfa36RYJ+07dOClfDisA
	 fAv73r5JXoDJNG+5k+qFeUaShaigUvVkELgKqF78de6wA72J9UVjI4Aca5bghrziTs
	 V/33siOdblVp3KFlGWh8BLrg47DPpkV/L2LNsVpqHq+GzyjWBLrQ+kKzUJh2kg8mLg
	 zJrbQbgLMmUwE/cJuJfWe27dEVUZ/SePXsIykCVQWeobSUaUKE0Ihdm+pWfIDetBh4
	 NWrIHkJzq5niw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93302C98312
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 08:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176863703358.27474.5846855839628026337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8c55bbc753b9f43256c7cddcbc734148b413239294f5aff2969cf4e4fbea17a
Date: Sat, 17 Jan 2026 08:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768637033
