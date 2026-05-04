Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E01191A6827
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 14:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777904253; cv=none; b=GJz5n0FgXnf61sYT5XlN408axF+SsC3JAvIex9a0vGtCXLgJUlKJRURP2NCxV+I/y0M5IrPUgmvVDo9wfpnZB5VZbR5yEG+ubnvWR3OZhlFLBGX8JFWri/CIBdhsb4ZPX7Su1pOmCodplA52ocnPBpTcSZEqrMW9Oo3Skjxs1ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777904253; c=relaxed/simple;
	bh=So36LiUSAuPJa/cTbYxA9EkaEZQNjmvyHFW3drUKEI4=;
	h=To:Subject:From:Message-Id:Date; b=mi/EZoOFGNyoH3n8Alewq3WsLSNXky3lu8sdksJ6RWqOeljRx3ze5naIrE2rSUC9WkCjXRaeYFxnHPRc7KFgvBnr+s2pJcnPGwlgBfwjeKM7CHYHOmbFXtq5ggrxnBuq+jWIQHmvrfj2mgaNsdoLjqAEhoUMtpRU2zgHp1ZOBoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LiPz/io6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LiPz/io6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B90DDC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 14:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777904253;
	bh=So36LiUSAuPJa/cTbYxA9EkaEZQNjmvyHFW3drUKEI4=;
	h=To:Subject:From:Date:From;
	b=LiPz/io698El/wccKI3gmCzXVtPezc40mGunpbwajUn5Qa+3bl45iB7ulG0WFluAl
	 KkeePlKHuvvKF8gLAhuHh/V6NDO+Mf1Ac7DZ3zRGUMwiRgIsnLA4br/Xv+9neLKPri
	 Wip7F+xhC3MKfNOuL4KAf3LV2cv72pc57oSdc9mpcCtonaoZy5iQJqFl5GAXRbbdvA
	 ZgR6DfT/iDy/8ciIUPs4sbcwUGjBpQPcS6Uqt5An/wE/ApqTKLey8cOTqnArTM9dAO
	 sSf5iVb0z9HIiu1Gfw1GZSybB5POYSg8vCYtqGd2kFnKOQuGmOePXEfCzShmyMym3a
	 aSBU+hhBIQzog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5D8FF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 14:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177790425368.20473.11460648420088626574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a176665190d70db90945c2a07ff4e739dc3debb91e9c47e5152faf26f3b4233
Date: Mon, 04 May 2026 14:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777904253
