Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1409E1A8F84
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752010794; cv=none; b=OTcloA32GQcydJ+k+tKF/HDwuaoBxdYDFjOkHWUOBnYR/vrWAwuOWoVMEetowJGfHRC2pmZDk6YU1WGdr375vrNFE2yRcM2BDKoGq9EzRqqAkKk3IyHeOOFLihr7CPQ6WYu+WXYDCo2+Ll+sddx4fk91jN5CZ9YG7f/NpfM1HwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752010794; c=relaxed/simple;
	bh=R0rTlUiZBsLFp1bdo/485e3OKD0Xb00W/EcnYtzkw48=;
	h=To:Subject:From:Message-Id:Date; b=sKrZzyD6DJtMAZ4vSJ8DbPwxauB6OVhpCkbCIvUPOfTqkOspeLNkyIPF7SuoP0sX9ir/0fUR7pBzfVSX30FA2e1frKjmM80lstL5WGIU1YzwpUE/sB+a0gXeeqyrFKAmghtlZsF4b3cOykFGHZcgl0XTIlsnv5eaHVtej5gwpks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O09iJSqi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O09iJSqi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19C8C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752010793;
	bh=R0rTlUiZBsLFp1bdo/485e3OKD0Xb00W/EcnYtzkw48=;
	h=To:Subject:From:Date:From;
	b=O09iJSqiTV0fsGZTpUpZxObjxAcE31/c29auHB/QspE6YodZzpc7v7GAVZyoEVL9m
	 l+7hNtEdWOORU9E2NEznogt7HFnuLIHkQ4MJQJ3g8JBlwFFKd/a9yQdareh3TB4FHj
	 6/AD54nGD8jG7vz8BpL+OBedQvorbWqk95jJlXyHiFY3s4wPPA5IDc2lh0yUIKU0uc
	 1yXJ6ltZZ2S/EXB7gIp+TS6kx3BEhzs4kSCtjmyRM6/GFpmVS+/PW6CqvfHsuGF+yQ
	 ibzLX7sG5p14p10SaFfroq4f/D22GUYffklLWl7rgL6JLebBhgCCmnaJjmkfXoR+B/
	 +7ihL0vqjY0KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901DEC83F09
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175201079358.13048.12758777597117910183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82f54b099160a2beac86d83a2d1c01b6a7ab432c8b419c10b619156fc167a288
Date: Tue, 08 Jul 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752010793
