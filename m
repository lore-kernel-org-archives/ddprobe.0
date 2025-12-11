Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C5671EB9E3
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 19:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765481574; cv=none; b=DppH/50F8cuslDAPlM3WMyN358H9G/vZN4fnhSmuULWKjX8kFv5vR4mpWQgW5nLzWuARXjgDLUnAq2fEEVNz5gHcWlIXkc/+qev/gyl2wct1psknS8/5o2TUWF0+9NuMyaquCNLqpI/y+6/YSU0ocrel9RjMW2FwwiuHeoiql3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765481574; c=relaxed/simple;
	bh=xejkMm1O77Xxx5LVFpqHyJWZ2/YMaxnzUrG+9p9W+7E=;
	h=To:Subject:From:Message-Id:Date; b=ugbfKxi76EA+DivquG4pR0mrKQcvItB4YOy4Ms+A/Zy65cfNuV7aarxNXatZgY4gPI59Ze9PO1W/83xCjuorGMfu9OE6TgGajD+DkL8YwkUWq0zMNgioOxPgY3NSca03SHEVfPG8Cs4MLtiESO/3SJudmuHcNe7PUAAeNyGE9Hs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bikaUYIa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bikaUYIa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD70CC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 19:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765481573;
	bh=xejkMm1O77Xxx5LVFpqHyJWZ2/YMaxnzUrG+9p9W+7E=;
	h=To:Subject:From:Date:From;
	b=bikaUYIa2dwycwh5BmZ9INXOuHbxojNoK0cXuMOPAmlfl5Ic9j7XS0pOAgQRzQYEk
	 FN0zNlvAeetDc87O6jdMAP0t8XGN0U60rBqQ7gLAwAIFCcPAE2Gd79/z6T10xT+/xM
	 DmkkdfxspWEKHRfwLXe1GsQRUxdIbyzmoE3WjMP1RgPLt2U35fuxVcqV+K4FWVLdSA
	 uwGNSefPdT+NO+sbNp2X6MMdljiY3wAiBq3RU8lZPkQyd/2LtEqPUOxBTWZMcysbSq
	 lW0/95hrGWsTdvVeAOR30YGDQGfjVduO0J9U/o4Tbj8Tkw1g+h5PI6+yidF62J/FRQ
	 aZByZPRFk+3/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99406D43341
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 19:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176548157361.31416.11105235563317123295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3ad786eb982a3dd8b067b1b2a8729fb842ec05295d29cc72493fa1fe3bb5b2c
Date: Thu, 11 Dec 2025 19:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765481573
