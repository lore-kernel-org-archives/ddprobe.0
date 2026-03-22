Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 177A01624D5
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 18:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774204494; cv=none; b=F7QDmS+A7fJTF6OWoHLscshLXdlobbekr+ToapE6oESeT/HC0KJo5d/b7JKiXpV9GEmxBwPuXzVo6976px79j/Dxb8QU4J/g4QW0zpJWxmvTzTlVfZlYdFEW0DXOiNRp8pmzRSJ68/TIWaIvv2GIN/OzCN25tQkiGUIZP04ujW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774204494; c=relaxed/simple;
	bh=mnZIdCu0mnI7zFFVlQuaymF09QvysYDAtDwqgy54FGg=;
	h=To:Subject:From:Message-Id:Date; b=mZUuAALPzHVrDXxvnJHaQZ8hj8fDFnq5ToVCzW+uiV1yNGTh6ItPqi0ZsWifdD/FlyT5gqjdRGa5+XDZ4w4ZdwxCeYYTND0+esatcBBBr9bmomq0APCgwRVRWCPvxUU98rC7WSb5WrQcm0IZ5aN1oahZDZRF/YmRCgYm8S17hqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tiP1AaZQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tiP1AaZQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80B6C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 18:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774204493;
	bh=mnZIdCu0mnI7zFFVlQuaymF09QvysYDAtDwqgy54FGg=;
	h=To:Subject:From:Date:From;
	b=tiP1AaZQHyPwhzhP2wRUATh0jH3K3wmV2y84N6P1rfCyzU4fYgd7q9PnQIh+4hU6L
	 pWZn/xYIma2TcF/4MdSEUrMy2+RTBttahY0VnK9EjpW9twCxUwTiq6yMvaUdqoI1iS
	 nmSJ9Sv6jg8/F9m9g8eBLx6FohR9RCQ1ar7CG/MnHyV9nbaBZFGxV4Mn7OEuDMNv79
	 asX5Iqt+dgBAWJlr59VcBEitbNAXj25Xcxpp4YQJzpZtMokAh+HAbSH/UhTPdIS+Aa
	 EU0lg8m4jJwoWJfd5bNPZuQ0e5jwI690ybckLPd7lITZ2ihuANYspCstYMfD0p27Gw
	 +j/13+qHX/9jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CA4FC72CB
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 18:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177420449358.21752.11941141859774103199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 521f083361e58238d263eeb269f58bee491db7758d604359eb00702a26487fcd
Date: Sun, 22 Mar 2026 18:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774204493
