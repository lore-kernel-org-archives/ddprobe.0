Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ADBA4414
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 05:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776836854; cv=none; b=p9BL3jInPnDype/mCrFSnrl4uUHZUXvt/OpK4cd739d06hfw6j/o/nbRiylbGFgEOhb11GDNSXaviSL3U6Hsd82rLwbk3AvflMunyCu2RLwVvNh0NxDnKWiJz3QQ8CbeYhlBAhUcKkdDz+jiOFE8k2G25b/rq+6n0vaDPFeBNsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776836854; c=relaxed/simple;
	bh=WhYdfoiUf8MRaTFXO1g2eIKfeGNzSttxbmUkCA4jIZM=;
	h=To:Subject:From:Message-Id:Date; b=a8oqaNtQD/Z4zfT6EuHO1i3fexXHFo3tnx3/VdY8Snjs/6p8zm3w90ZGAdJ4gf4jn1yZPE/WVQ6vO0bhJKkYBI11NuZxfGa1OF7E6DZagCvZBUJWNHv4vTdSoInVwdBrlj6M1Lml4nqKCRtYMOBJa9EryvzfM9J/WYdqdcQyiWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WXnVtaMD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WXnVtaMD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B949CC19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 05:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776836853;
	bh=WhYdfoiUf8MRaTFXO1g2eIKfeGNzSttxbmUkCA4jIZM=;
	h=To:Subject:From:Date:From;
	b=WXnVtaMDfk1HVbVUjU7JseBfiDpgQo5jgdl7ciceELuPsy1EnEPeh88yFlqum4wzL
	 DN8k5mG0lXYQCQsh4MDOJX4zHyLnuZFu7Cd0WsjUAypSGvbw9CNWWzPmHzLw1KF4ym
	 FBKlOMqvrnhBOa2dYA4kF5o/wozLoMRdQyj4x/ncLeKkEgGBVOFVVF1pLUMixx5XAh
	 w6vivWNy4v++mzuvo9GPJRXhngeHSlv1/VZf8dUqs8e1X7KUr2zD7r8ug+5dU9ZYxG
	 XnIoSg8b0iRvtg+KkmwFjVcu9BfCozhD32MdjziwFx46GWIW+VJ6EiXj0hGe3vyp4l
	 HuQkVQYhVko1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FE7F94CB2
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 05:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177683685368.9089.11402800162409489218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f1d7e5f51fb3d1631f85ea87404785694fac1edc8d23c8e9d62988e2d3d5e6e
Date: Wed, 22 Apr 2026 05:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776836853
