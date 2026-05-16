Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FA651FF5E3
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 03:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778901034; cv=none; b=JrMvC/DGxFQlBFeqToocEwOBX+hxFybGzEDi2X4Jes9cSq6gU7Ppb2iJltAZA1edlClyVw/+SSjeskEQStPN0R50tVwJA5zV3qVaPY9boHhjP6xpb2HQtTDHUTGTaWOyblXOhmuIAqdJubN7DgeBFWAvpfgigvnZQ+WJTsjANcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778901034; c=relaxed/simple;
	bh=5LNGQy8hm84XBTIpHdlIwG6MrsgDH/OZMgUgFfr9pRs=;
	h=To:Subject:From:Message-Id:Date; b=iipiyH+BWrpbJt5EkCGKRjND9qNXYcIQvOcl31fpdTEcIy3DsKKY3iYmpOXLMkklm6HVYfXCZI+RP/g05ggMO2rdPZHHHq2UWRWDwsGDuW8oJ6JbRkJ0BCU1JW2lNi9WPrd63FK0/KcNGzvHe3qczidGL92MhogJxwA4XA6tuV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tlBYJpkF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tlBYJpkF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C47B2C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778901033;
	bh=5LNGQy8hm84XBTIpHdlIwG6MrsgDH/OZMgUgFfr9pRs=;
	h=To:Subject:From:Date:From;
	b=tlBYJpkFyjoOUGRlBAG72HtV3ptRXPuCcn51KIMYehKN4zLBneAn3BhG7u4Sf1QFX
	 ITYLQnBun+Ht22Ff4DDHE+YHeemyfAfyuMqlvrSCuo+vrjA/IFgl1wDOfPnku6ftFs
	 LXIPRk6yVsWmJiaWEGtxG5bupXgYP83S+EgKNPeDO/JAn3/paY5eixmoheE+qDeJo3
	 m7lAS0dqBTbLrj/3lK4RLnrntzTFHG8eDSIRBM0Gm3nvVRBGGUC3KfrTkgRe2sv5kG
	 f+701kKnrcBEJy6oXS5bU4LR4fwGpbxwqIZ6vS2L6NISmL7ST11SvOvFaSsYs0Dia5
	 jD8uf8cqtomPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B13E4CD343F
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177890103369.23812.10977415222986436716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e86bb301560de3387df1962dc9923aa6e434074ce317855c53e31f92361916bd
Date: Sat, 16 May 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778901033
