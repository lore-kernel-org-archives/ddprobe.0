Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B20C11725
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 10:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720346783; cv=none; b=dTnKFKHwX0Oeyj4HTaQ7mJtc9iGGZ6ugx7ywMOFOfD0lRb24lKauwslN5NimJQght4b+8cM00S+5XD6qM9k05OAFxoVJyG+mXhagflVOtWkVagB1pniKVcLQDHFL7/cNbHWgblN8EXQQ2dfpWRKYz6hlbD7auSSsnOz8oe3z6/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720346783; c=relaxed/simple;
	bh=JBoGmWtehnX5p03F72Zw3tTf0lKk8GTOiNqzfPLiUaY=;
	h=To:Subject:From:Message-Id:Date; b=YWXFX9LaGRFYN8HVUJ+TTHrc0EpIArLX83WFYJX9NB1DFBaRqcMEnQabrr2kvzGJQalNhSwykhGwYLe+XYT+xGhKtZg4dH8t9w8xoMx44RL3DXvW0X0jFyBHX3fHPmoA4JsxKCN32fPGsZSIGeTSzZIDjCYqE6SpcqZJmdtbAjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SDjZYNqy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SDjZYNqy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0B36C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 10:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720346782;
	bh=JBoGmWtehnX5p03F72Zw3tTf0lKk8GTOiNqzfPLiUaY=;
	h=To:Subject:From:Date:From;
	b=SDjZYNqy2qvDQtBenViYK8DDm5t3o3vcn4TbSI4fx2qJKLI9043QVDRafXn5ONVGz
	 EDOg28TUs5Ae9ASysVG0q4iCB+VBb18hXamYxNka9pVzogYyEoBXaaq5Mh96aGzaCi
	 +MCo+NTqKY2jD4IUwZoTXoKvh3/blR/GG0Dxh0X54ZA3kM9WNAWG4+9nC7uLz4Dq/Q
	 vRJRsWMumoGUlfcLrXQpujjUyBpQ3t7sMQo53ZUeWYT3PF0Blk3/JenQ2/HFpsXX59
	 3TGniZR/knms1439pvTqLLATUZj55+MiSaU5hqbeBcwes6fGTqkVl3hNH9px2osfRX
	 eFirYIFAvR4sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA738C30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 10:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172034678278.19936.4375473095020034557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67b5b95f9017defbbc84523a71fb4bb951aea27ed98f6ce90a5d81b3038cd0d0
Date: Sun, 07 Jul 2024 10:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720346782
