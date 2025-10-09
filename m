Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 399F770830
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760044194; cv=none; b=tvMZLlwCxD6y97qcD3a5X6zXlEU3hu8+PZndGOoZ40twf6YS/5+WB8LaPnFVLoKOAEzWIEyJN4X5UQCF2nQ2F29SxJtTBRLQVukKIycYt7Q1RqLRgM58LCwViw7hS4JoMNenyYm6csDjqAaltmBNFT8OcdskD7JN8D36gJO/oZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760044194; c=relaxed/simple;
	bh=mvWQrS9QV8cY4wK/Dohlb/K9GUwW+7xCRPUSFptimhs=;
	h=To:Subject:From:Message-Id:Date; b=LIfAkuqCC3fvvXdbWJVkzxQBX+AeSiMwwqguj3aCNEydF98d/YuAqff9e6ZxAo+Hv/55BbeVaq2HpxXnItlSt+sZ9RSC8H9RyzWlQScNGiAo0Rmvm2hWBW0X1EAqMjoZ04jQBNkZFnydkRlisL6/L7WcBbmhugW9j4tp9x0R+mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K1OUUxL1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K1OUUxL1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0909C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760044193;
	bh=mvWQrS9QV8cY4wK/Dohlb/K9GUwW+7xCRPUSFptimhs=;
	h=To:Subject:From:Date:From;
	b=K1OUUxL19io4aBmSL8aI2bsYLp3HJdcnu8+QVLmyaBVBRCIFF+BKGWrlajrJWs4bz
	 XHQ3RppyDcdzmwb2FW+bb2c8dYV1SyNIsUOhteZSellCo98mOSM6uKe9K91VpiLKwU
	 ZxLdhFkh+TfdYHCECgizlcFPeh/S5nvEW9hdjkwGwNuwmxecjIiF41GDYnpvugBNvP
	 /al+1UFtZ+qQ27ALY7p086deCg3Guql8L6ZBPPC9Wm8OHsCSaQNFM4w9xHcRtdCQTh
	 8mFnaogHPfeWNObghkigKmA52i9yollrVOq/Znn8mNlipo+Kg5VFnoV+9YxcjOq3V0
	 hsJwg/a/VyMFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9019ACCD183
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176004419358.14438.5332546803210003805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb1db5e69cdc3906cea925212bf3fdf4ba784259d788b3fc6dd4af8e503e2489
Date: Thu, 09 Oct 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760044193
