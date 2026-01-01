Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 399162110E
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 06:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767248034; cv=none; b=lV/SqYWOCC6k+WF9xqKiruN6y+uYc/DIRlAWYa4D8xkbuqoq9rIA8xZxSBhHRpOH7FQd0g9vwUm7YKofqQdWIvmAGneWGsagm7yH0bEA0zMrI3zYgSxgQn3co8iF4sOjUpmH3PIxN3EEtTWm95Cp2CGbKk9q5FzujUNyQI6x40I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767248034; c=relaxed/simple;
	bh=PgqhKQfMM6xamRuYZAj58zWT48Pl7hb+yQ/fs7zkBKE=;
	h=To:Subject:From:Message-Id:Date; b=qDQEKJl0c90xMEMWf63ioa8vkIhp5uW/tKBED+bNDzVICxTAsvYqWrJfK5yQdOZ3azyfE0XN95IOCdK3XQbeqhmOgw1sO62G7igQiQijoFenjCuKZAvdc/Uu719fHIxSfM1c0uq0CSvJA80MU3aFJxmdpg9bu6QPPoCQrhYlYyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IzQIrXrI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IzQIrXrI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A546CC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 06:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767248033;
	bh=PgqhKQfMM6xamRuYZAj58zWT48Pl7hb+yQ/fs7zkBKE=;
	h=To:Subject:From:Date:From;
	b=IzQIrXrIxf+cYFFesrNMU2hD23wDEfNxQeiu8qul7SKbBjtSxAckIUrKPkYn26LoI
	 45FYTb4usO0KF/95yb8+aSsk42gAxNTqQbWbnUP+GjxJKwgVhgDpFPLU+ao6jVg/IR
	 jbjU7pmOYcL3tYz1LJ9MroAH8H5nptENxY48/m+zvVZWu2e1nuYv7wLvP1BtwZ9DPD
	 sK6PZjPZNeNjhrYQFbFVLkETVQSfmiSkFC5M1Pv7/amxDKYyrL0QEvzn85ZBTscrer
	 qo/EGlkXHH8uz/XdV17LWes14x+aggEVkEhTFvY/4zDmG2xAv6To3Ew0kd8q3OdolQ
	 brs2Ii24M38Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9473DEE57CE
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 06:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176724803357.24331.16681361131151627584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c88c015651101018be3f62e9cf20408a4ab2516a74dbb2e719e09d49cdd96b7
Date: Thu, 01 Jan 2026 06:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767248033
