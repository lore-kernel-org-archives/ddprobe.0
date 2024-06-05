Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7513410E5
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 01:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717549583; cv=none; b=VOqJyubqbX9/Tswo04rvgNT8k8N0iul4Q2xcz52ohIr15QtYkq66W9JjD4R74HqvXKqiLPBa0EuF2OdoQSAHSi9sdtio+DWQMtmfbiwOSy4WViPZFLiCfVYPoEo3xLQpszliWwIL3ibViLKFTtWaS2TWERI8hd3LDhI2RkNu0eE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717549583; c=relaxed/simple;
	bh=kvx1wmSrNTsBUfK0mD/Hjkn8Tq23WRXvFtdX5VntPS8=;
	h=To:Subject:From:Message-Id:Date; b=UuEfigmbRRkGpy8mbKSDoy9TR/VxKHxywF121Cda+F9al9OKYSZY9Zr58oCHhf9vRnI1VZymYvoAoh0mreV4v9tUhN2ZhPwur7KLEmRm0jT92H/f5KZRM80O+3N1cJszub1Lb0mhr7nJ4ldcqIqhfQjuIV9KUuYZC8OsJ+65c44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tk5yTQXc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tk5yTQXc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D778EC2BBFC
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 01:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717549582;
	bh=kvx1wmSrNTsBUfK0mD/Hjkn8Tq23WRXvFtdX5VntPS8=;
	h=To:Subject:From:Date:From;
	b=Tk5yTQXcYLyB3n3GD9Bg3mMPPMrpg84XUJb/TVb4CfKOnyiATRz02leH5kOQTp6PB
	 UEFJkO8YvWWhUzE+iQege/Wxa7ebrbtaAH0RIByn5q0wiqgWSBgdZ6QQJW/IcSTx8o
	 WzoY4/CfDv4K8BQL6Mv2pdzXYs6ImFMmceuQu2mybUTRe1N37OckMxuZ0i0ibbKHlq
	 FZExx6KD/GSYpy4shFDH8as9ylLPx3ZYhRfkl4WgL8/EH+ed/ZI6qkH+fX3/SZVLn8
	 +KiwrKCTvP2YxNhKsmpS3BT2n9f+eDbfKKklxFMxQiYjjMi2uIcHUjFYyS5NL+m/fT
	 RcNxtTQbGWoKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0619C25B78
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 01:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171754958278.29554.7935736774855114315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a192e65f329911e46e6d31e25d0ae7206b531f0aaf7304709adbd8f0ab56d8d
Date: Wed, 05 Jun 2024 01:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717549582
