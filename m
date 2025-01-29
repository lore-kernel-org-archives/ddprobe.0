Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63A1E19DF4C
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738143955; cv=none; b=qJpjNkmLQoR8FeBk3W71BmYskuZL4lYaJABk/M7qHaHmn5QwpatIlyTEltiQzbjfcOjOlrF1ShfOEUXkatG+eo4kmu4pRQ2Z8DYgyvPUNjfG3jMBfTU3Nz+AFOEHJRCjL8OpxRir/FKk3etVVWsjcWVUSBSwha5xA9N1maj1CbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738143955; c=relaxed/simple;
	bh=g7fjRdns+742MDHzJ1TEgSNZcdbzgiqd/EX6ntU7N2Y=;
	h=To:Subject:From:Message-Id:Date; b=a+qIGQVMeXoTGF8P+63Ah3peWLZjIXeznrOYk1XkaIiHA2JldyykVSsTGoseYdPwKfflMOW+X0oxLuJnPHHixAU9CPT+bKR1ur/Uc7PIu8tatSI7S/Fr2BRmmnrcGKeq5fUocLZv/7sBcrUmr6v2gBsKAdoY4pAhgDzjfTaQVok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O+kfxsbN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O+kfxsbN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB666C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738143953;
	bh=g7fjRdns+742MDHzJ1TEgSNZcdbzgiqd/EX6ntU7N2Y=;
	h=To:Subject:From:Date:From;
	b=O+kfxsbNp0iWoXO62rd+KHd4sN1x33KR4Ud/kSbFmfwbs6ctAcYULRcsV1IfPsXs9
	 3buINLJS64XEDgFlbs0oSDiEVPkmOooIyn0nMqkrrhtiUjCFI/kvxkDXQyDSgI5602
	 hL6fOitwvsxODP8NIeggEvDLJh6xv91PWHjaTS1QJYP+yUTKLxJl3hSb2u8Yf9iQn0
	 z+pZ/ReBlspYVAzMH9IdbFEiM9u8pF4FCbsKPm2/HUCmOSEalaKiVXQ4WVPigNxufQ
	 MpwdohUmZcJGTpaG/4zsWlB208ZK9UkchVTa7vSpbJfKYDlUBK5u/Zm1e3uBQ3o9OL
	 5+nbdfJf+FNOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB52FC0218D
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173814395368.28663.17900810533643478947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d84f991d43997c8a475f5c892ff80ab543f0bc18dcf5bd01ccb1db4d2ea45f3
Date: Wed, 29 Jan 2025 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738143953
