Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 454E414A4D6
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726530954; cv=none; b=AB/yIFncPXswhq8o6gjIW4yiIZ0f0/dj2QT+rqqAkbrnOaaEiqv03hYxCimDEVU6QnnFXP6dgJUq8GMMtksxcXa+QZdZ/X7/JiQ7RS2lbFjv4o7YkRKg76SZz5ODGJfqBvVNCsUGVm3qWTV2haxzY+VRtBBKQfvG4PkiSQPL/qY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726530954; c=relaxed/simple;
	bh=Z5F5ragFZ3JvtkZA1dHJyJgh4FCIh4ID2584/afgShc=;
	h=To:Subject:From:Message-Id:Date; b=X2JWuzSkNRFdEqiEBYUTwsozEunt2g0vjTEysOeLf+aRLVPpXbGGRwMS3QAPOr9GBgwkTwOxs9xspTpYODjX0IsYbd1vwPAGFGmYUNu6vb7TU0Iuj0R+CQKNjUt3Y1ykOrHe61eJWB1DVmUuKtSHdLdj7r8SV3rpGFrNb6q4fww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dIx/g5LO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dIx/g5LO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BED2AC4CEC5
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726530953;
	bh=Z5F5ragFZ3JvtkZA1dHJyJgh4FCIh4ID2584/afgShc=;
	h=To:Subject:From:Date:From;
	b=dIx/g5LO+Bf/GfvGN1jlkIoZmx9po12nJiYx3N9308jaSlrCiigXtABfkt6y01ZRq
	 z+XgHV0+WSVpadr2Dq4tbUymk8yrS2DIAvyhKYzlBE9YJYx5VNOTsXlq59HW9Oqf8D
	 a2V71U8nNvPMazYs3xnxvhKJ5x8tOkRWV3GObxaJfz9ul8OYTw2Dzw35Cqk9gtDCdX
	 BV4i28SG8yFicOoFsX/Fyv86sYnd645D2MNpu7RN10WsN2hKmlhQkSh0tYHJ2vsOtH
	 Dd9Ql32zOfUigcMlt4yi2lvBhhbwxV5fXOwHsKYOpFGHK5s6yh/AN2NusIjp6nDone
	 mG/3uJdPA0/hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A17B8C3ABCB
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172653095362.30155.18371801758812010122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23d24c89e135ac73abbb91d2f6f5b501e15f767ee0c2ed438aad18c6353c7695
Date: Mon, 16 Sep 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726530953
