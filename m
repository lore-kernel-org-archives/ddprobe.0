Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44D3534C155
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 17:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783012714; cv=none; b=hytUS21euGmbjtrHya/86ECXyvyUwUvMNterdsIufLTuF/kL3ex0GwVCnaPuTyTKIxGW3oEdSb1LUOy8YjJe8a9jPsr/0a2AoBZGjCuJbKbRcRzxvNv/qvjq13b05HyI7GkM5gLdtBLP5q9JmbEkzGtJa30GccrmDVleugkOco0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783012714; c=relaxed/simple;
	bh=hI4EbgDaAd5wTAYx4AtihozZDwtjhtfDAoT9hgAEDQY=;
	h=To:Subject:From:Message-Id:Date; b=uiGDzkEO1Tj4C3BccpQNEl/fp7yyv+tZSuQ/Iu8XYRRBGUX7odnp6AR4eTJnuvOFl6YbXFtwoVoWJQRZ31Bsp+FOytck7EzXkwZK1yMMLkKSkCbMUSusIs5VxFVaRg9kol43pi7A268e3OMva/QzSmBzDl5yMKd80B851O/0iWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jzl/T5z0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jzl/T5z0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB05EC19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 17:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783012713;
	bh=hI4EbgDaAd5wTAYx4AtihozZDwtjhtfDAoT9hgAEDQY=;
	h=To:Subject:From:Date:From;
	b=Jzl/T5z0a5sANOZiciNpWttxsacPLd/iepPBv7hWNpG+XyBlwBFx1Zz/X880Qa97p
	 7z2oV4ZKsCsBahDaZ9wUuSv7/UHNWVel/tsvG/V3ZXjFTm51UqFdNcdhMYIbgZs5HW
	 X4Rnuo5oTtIOX8T9av7lwdFxq0Nv2r0uPHTFqZS2kohpkumcftjFyiSPrxOSBtheDI
	 2YxW26IyL9IbM8peOQw4RIEue7IZPjo2aXKQZzzZGJCcQPiQ4W4wFHFLbxvTWBtvYg
	 iyJperJVx0sK7LOWH/h//hRkHLEZz7p5dULipSNOcsyKIe3sJ6lTos1GGpdRGiyQIg
	 WRYJDnYyAWlWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DAEC43327
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 17:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178301271368.24700.569477563411565811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e281abad4a29467399b07c5b83d0248acc0574d878aa63f5c82d4c92c68eed8
Date: Thu, 02 Jul 2026 17:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783012713
