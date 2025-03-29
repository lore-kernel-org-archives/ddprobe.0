Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E27617993
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743276594; cv=none; b=fdNL75uryKus8fAOXvG4CXXVgiVLgfxeK3P1Li+zvyAwX99iuMoI8doEFAUe9B5ZTTfBOzkhrGcC4k1Qxruq/ROcYtSV47OShqWcddrqXMo8fKMUnMOEWyM5EMzhpt51rTDJnYWVTKI+hErHW5sasBYT2jEDUlkzdSiRo+izbxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743276594; c=relaxed/simple;
	bh=4490daadXt6+RAAmwMnCWx2ct0IP15OFqNymPGRu+d8=;
	h=To:Subject:From:Message-Id:Date; b=cNl0UVKlX+WmCEVsAId+wcRTo9oCTBMejx9pNcJ9dGqjXyG19QMK9ZoFPOhNUl3RA3SmrgyV//2xUvLAfNWEq8bM+j3rVlbdOM/BxvZx7pbUcJjHUcp5PfSC+5EAb9JId1kIHt8c67FDPG1jkYBZrr/3EwSDTxSU/FLJpql4IzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gUoTGW97; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gUoTGW97"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFB41C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743276593;
	bh=4490daadXt6+RAAmwMnCWx2ct0IP15OFqNymPGRu+d8=;
	h=To:Subject:From:Date:From;
	b=gUoTGW97ALS+TujG9vnhbZH6Kitkg/3vlaE+ZVxd3bLUwIr300s2bw3PyfTWldb0N
	 1TKwuE7qS7D3SSjeYq0Im/3UetoK0XL2l0BZIqdkMD/Qa6U9iBlE2S4sWYKO5ccQEj
	 poG+IC8/pRyMeF6elHBW+4WYlzvrib7TDaKrBsPHjVibyEZcwyHLKBaGzq7srJ/69e
	 aaBXqxPj2Edu+QjXgAgV2Rpdgb2SE4kRUkYtr3W8g+NhYIjEthKMRCqiph/U1TR4SC
	 w19wBm66b1WxiL7TQUydkezVe2Dc+6Z6Xf4Vw3meZpPZx5nkZXuIVU7xsUX2Pn7y9Q
	 K624Sc77yRZUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A24CEC36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174327659363.15972.15178232002308259818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d70aab1ff8b10b83b85604560a7ba1a03d0a0a107e25725208159a0da152504e
Date: Sat, 29 Mar 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743276593
