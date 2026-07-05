Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 440BA433E74
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 11:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783250314; cv=none; b=Ar/gLN4RGjrztMYO/CeHmJaO91IX80rxDbo36sxzZWOg7KbrlJqVF2ldteNl+SCVviwrSg5xcEzzIgrpUhhgVB4qEPXkXMmEU8scEuEEdSXRU97Jh6q+X59pI4iZWY4ECTxpg0GOykh6Ez8cByrxaQ/WrqaBJ3lTpkfS5GfW8GY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783250314; c=relaxed/simple;
	bh=cK6+yCoySC4FK9YfiZbSQek3CU63p4wBGQDSDQPBucg=;
	h=To:Subject:From:Message-Id:Date; b=XYEjTMSaHMxlEQKf/7jq9mGita3W7lNT72nwTIuJaXoG114zXkZd98GY2oB5W3mjAUkToNA3lXnst8arwCaGjBLf7Ek7QUgp0f1MnUi6FsZLgzgEFx5Jl6lhl6hMs6LR/eP6RJkDhqRCe8aTaih4nnkq0acxMa8sZE1Kn3mOymE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y2K2IU+0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y2K2IU+0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0947C2BCF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 11:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783250313;
	bh=cK6+yCoySC4FK9YfiZbSQek3CU63p4wBGQDSDQPBucg=;
	h=To:Subject:From:Date:From;
	b=Y2K2IU+06NFwX/Ke37LnckSB7Ou2ZROBAJ3Wq876SEr3IEMIkoZKUcfIembRJE24k
	 C4ta59xuk86038QxPeFLGBdhvjI/UzXszrkogZmFOdAu7eeS07pSZ556U8EFFDOhXS
	 +zgolaHTfnZHo0eMQv6Hz74/eCLFWn/N97v4KxTjLwo9gHnzwiMhCw25jtoDhyZm/R
	 d1SzJtYF0Rv+TX5bayKdD2/voxs/LVtPvFoCc8rZn9SpVwHiWU7T5RK0S0fGuUe3U6
	 z6hfTriL28CT0VSZ1p3geU7qjOMSkOrD5mkdp6N7Gt8g+tpJy2Cxfw4xUJMrc18B7P
	 +3PPV+f5K7DHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3DEC43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 11:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178325031368.8104.6731791290826128532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d7bbd11555efd6e2b3c674cdb6e3188e68b6a26878ce79373000e56b409a37c
Date: Sun, 05 Jul 2026 11:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783250313
