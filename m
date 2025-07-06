Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30389224FA
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751807394; cv=none; b=bZx0OK12GS0GVAacsZzqUumvHKIJBvq9g82lvLoqMZUurvQLXjajve5+A2y88QzT++wbJ1iOFg1vB0nLGYJ0u13iYXiTbpTFTX+GBXyRWFTreNerg7Ohzc9nJ9wvD5NL0rOITgWyKUl2dIjv+9yi9b4tjnrjBj361/GqpGD0msM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751807394; c=relaxed/simple;
	bh=kwyyNcUtokpD9zC4E3b+FNsSF61oxpbSbcY/1k5ZAUY=;
	h=To:Subject:From:Message-Id:Date; b=VPBDDKRd8BHM00BX/t56rMyqNLzejuOdhE2dZWcld5Qss0RYx5j9Xc0qGWCHeNk+CXEBD9qcRyNaZyXWdoEZLe63u9BiDiSNs51MDmdjqaInKoXphAXqcafSHqJwmX+EzULK/+RXZdnXJSOPWM369EEI8ATDhTf7plUxLzZgtSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rqj+K69Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rqj+K69Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A076FC4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751807393;
	bh=kwyyNcUtokpD9zC4E3b+FNsSF61oxpbSbcY/1k5ZAUY=;
	h=To:Subject:From:Date:From;
	b=Rqj+K69Q+Pz5tTtZ+gPINdMac8SVRHvXb5yBO6hBl2zXTn7I+pzsUzlJW2Hi6sVOy
	 1vrrvMzJFU+/rbADa9JQkp2szAqshLIVWXtkT3zBW4qi48e8eHrjDzkWR/6mkmUiGp
	 GiM1t0qXT/uGxBrsjTp7udhbQ15u3t93TgB80V+nWckwIzTj1M7BIqKEhEBdP0Nwdb
	 rCX/aeOTa+DPVVrJUziSA6wTxq4HdR95XK2WnudtXmIT5hOiVKW8Yn2V4/ztLwPJ6n
	 ORgbiqQtcgoKnMagt4iJmHXYRyHHvSO4XbTCDYzL42HKNLMlgz9Ud7DFsJLa+HVf1b
	 vklhoVFjzz39g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DE35C83F05
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175180739357.15609.13168636243077487334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4dd2c0d766e27120e107b581a638e8fa6f3e6d638db013e786a8953bde76366
Date: Sun, 06 Jul 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751807393
