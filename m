Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C0B7176228
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734510954; cv=none; b=XEMyYRp/f9subeAQK+IDDOoaR1IqVqAOhFz664HdFO8lmJuvptzCHopmYD3MBoLrQL76hrGPFXd7BuT/cuzQN3mixVjhs+YZzkEDdBajLTw1zZyMqEBT4o+6FrbXznxCSRJISn+dSzXpWPIFCm1yX4SOWyeLuM+00kx2m926cME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734510954; c=relaxed/simple;
	bh=860wLL3qaLX9A2nfvW7eVSXkUu5e0506bG9/nwvy6Dc=;
	h=To:Subject:From:Message-Id:Date; b=uPpOIlUqhe39JxlzEoAnGg59T5M0yW2sd87cBN1NbpYHY/UPobgUpEEdnQQgvqfq4KQdopUobZp3ra4gCeOf3ey7JJBb1Wl226oUg1GXcrbKueMwL8DZUwP3QLBSbBF9PYmhp3STwtEL4KhRopHH9M0JkICwyJ5go+4S+XstRxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d+SytRtn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d+SytRtn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5952C4CED0
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734510953;
	bh=860wLL3qaLX9A2nfvW7eVSXkUu5e0506bG9/nwvy6Dc=;
	h=To:Subject:From:Date:From;
	b=d+SytRtnV2b02EuSLkLbZyOXhqDkboDBvErhUWQ5PKHbKOj0lTFOculfIDuz5eV//
	 9VnJbruo+gp/WHqYJsmMFrpwFs6u/BfVV1VKBJOYP/+NWjS1G/yaszUTzBpAlAgW5j
	 f3kEZB0h2/g9dT95TUmdM0IJuRA8s+UoCIPqfUY5luLLIdA8rAkRcSr+93zm/GCs0X
	 XGkpg1B9ka0twmALxIR6oNunbimb1FzeaAiRzGPgyiBfHb+9lY+nJF5VbKJyoOmsFN
	 bdkgYXL15TBqerpvgq6LQxDA3VIe2jO+0W1X0Q5FF0OmmYJRWS+Cm5ep3+0DsyuEQx
	 zYmUmzIgMUPwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AA10E77187
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173451095362.21792.10496611752808176407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78dd017c3e3b903803303ce748b973e1eae20a35bda38b537690db0f9a67bffe
Date: Wed, 18 Dec 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734510953
