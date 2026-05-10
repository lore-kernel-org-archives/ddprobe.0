Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F26013DDAE
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 06:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778393434; cv=none; b=UM6ERYgK/ZEkvGqDRpJtcbdwHnon4KKlP83YV/+wlMoKzPuDLWK1wI1sGmyLAUrkt8gKKpkk72vey189Q24fuOhXHfv0yAPLPLwKcN2FkrRmJAPJmimvXHpFD8y3obugiq8mio0V5tRowZC7EoM7IoldWx4MIRGJF631Y8eiZCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778393434; c=relaxed/simple;
	bh=dLRC3O3HOLQ6annr7s7+Lb4KprP4nSoGBjpxBxGEOn4=;
	h=To:Subject:From:Message-Id:Date; b=GvrkkWfm0FUQNiCYTWw3JJ9dOkrqknKkyOhm8105wPAYjzQge3TNBUJm1+sWSw93Gp+R2GkZTABnvYvuoLBu5Br2367taUI+IlR9Id7cxS6gn6kC4Oya6YZAUuqk2GCqetHmxxaM0ZV08otKdcg32wA5Dd6PsjaDtLluEbezT54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CFt/wXyO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CFt/wXyO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C027DC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778393433;
	bh=dLRC3O3HOLQ6annr7s7+Lb4KprP4nSoGBjpxBxGEOn4=;
	h=To:Subject:From:Date:From;
	b=CFt/wXyOHgGecg+rApVo/z/Rfmy9O52PLWC4dFOBSdJLUdR8K8IoxnTvryL3h7Kb4
	 krC2rG/7jOFwQv5rwp4qA0OsoNZq36UCcQ8/ivkCPB5uegUuvYP2wZqXwPu47xLfiB
	 2ifZcNblmXvly1Qla2dEwcOJL/gORy6C5Q1JuumKK+6yYHH8ocP7zCZ4lktkqHbBJY
	 0MjRJrT4Xi7QoznYBg457PEvgw+ItMekCuw3Lqy/PCOG8SnTSKEBBtRyQTL0oRzskX
	 knNz95GLWVQRDGmeMYvRRK6feG9e/5VZeVy88S3iWVGdrFlSBQykWG7An2sD/4Z03R
	 9XIL7lxDqJBMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF4DCD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177839343368.14905.3200792201059845313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98e659711773935208e5033d56b9532d1c7788b992f2c43abf57469a0853396b
Date: Sun, 10 May 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778393433
