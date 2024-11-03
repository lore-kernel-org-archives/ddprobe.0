Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 463241E52D
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 13:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730639754; cv=none; b=YVUQDEvNu5kH5jEeSf9W9Wrou6/jqjtYavJrBzbHXO9HjFeATGkGUNkRY7mZjVFbiyrm8TF1KeMMYzO/0jkEsWRJw09eVzL0IXcYO1TJ48zh1v7/xsnxH0ivzUX1NJ03OW53MyHvlWhdZ6i1wtbDQc/Qgb0JcTuLOYg2rU4HUls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730639754; c=relaxed/simple;
	bh=QJI0FdeE6ay7ONj3pvGpbNCUZlW5ogkHc99yJjJS1I8=;
	h=To:Subject:From:Message-Id:Date; b=Jn4r9QruwzSogNYtIjWPr+uF9WisQpUUUpVJ0o4BYrXs0YLH8TH6rGFK9+QBty6RbYCEiUG8jQei8Yu7uF5FGcKDoPCj2TlfQRTCTAzlhohbRl2HR6p0oPD4xuUkcf3tZ0MPx3IA869P9OrVOYDM3l00306v9lLZfx/TPClDI8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oWtv4p2z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oWtv4p2z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D190EC4CECD
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730639753;
	bh=QJI0FdeE6ay7ONj3pvGpbNCUZlW5ogkHc99yJjJS1I8=;
	h=To:Subject:From:Date:From;
	b=oWtv4p2zII3YEk3qLSSukDD0YyVc05X1P380S5o0rKrTmvNRa5YYR+fjk1usSKToJ
	 2mLVcRJIIiSyvxzQxosQfkhP35rVu5JROCdf/csefk8+zmjNpkisfJ2N0jt5CPCjM5
	 DDN8pKqnKKQH1k3JsRkpA+riFH75dakemlnY1M3X7eqvY0+vFwpV9fs7uY/YymxFR4
	 7kgdhW7QIXdGG0q08wA9j75b9HXFfmHbirL1B0xlhRk0CtSfjQOT8lkRYFF3UKDB3F
	 VLafhou//XHfCvbjKKLfL81FxlC/YJieFHQSopvXAy+2+yciE+AtSZ5A94qjpo496W
	 zV4ckqxpY7uAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC2C9D10C0E
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173063975370.18697.10595100499396721799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a7997fcb7f2402c11334746c322dece808b2e69aa59f4e24fdfb4ef05e8b995
Date: Sun, 03 Nov 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730639753
