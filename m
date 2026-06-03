Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15E753314B9
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 11:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780487074; cv=none; b=Q5dXUTwT7spEiFdrEb/ZjWUGbk8g4SF0ohGcLD7b1dYiUn9k/rwoBTATaxRmV6h9bHmEznpBy2ZEnPXqe86UuuYFY1y22JkcrWj90EsLD0dZvOs4Eb3+GwmoDgsw99BNHBJFv0v54DJuu4BYtFlsV9+EL1RILRZcZC4HA+7eiBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780487074; c=relaxed/simple;
	bh=SI1Wk0K8hcS5q3gOJmNnq0swdUWRQ9m8GrbnUJaRpdo=;
	h=To:Subject:From:Message-Id:Date; b=p4X9RI3zWKSAMP82hKL3wRZbtgO0DI1F0hdgGEdtmopPEGFzDKm3XzQcdnoNTwVmspY/QOan6vnwP4tjWuWAPpH5CAhnYwr4JBb2ORGoEyBy0icX2n7DT7/eUTnlvSONlsgYhkyPZGomcFN7V1v+kxGspR/jcnJ5uMCd8Vbozdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aj8jqv8Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aj8jqv8Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0FF4C2BCC6
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 11:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780487073;
	bh=SI1Wk0K8hcS5q3gOJmNnq0swdUWRQ9m8GrbnUJaRpdo=;
	h=To:Subject:From:Date:From;
	b=Aj8jqv8Z7XWwf69nG5q4EL7evQ0QPtO44djC2rPMQ8GJhhSYLPPam87f0h1jJVkpa
	 8DTibtMeUx3+v77l0m4YY0QVM2jQT9msEe9FXbDcB3zEekFlH3as6i8I0Lt6stIWwc
	 Qhi0r9eUi1u2MwFF+19/zvKDlD3EwUAZ4OS0vK6egZFeNlUUqOXf9A7OQ5T3OztgEh
	 dH/g2bmPd6b7Nr/fW9qrqP6pN0KNGmcNRFjp12UgaxDALE+yPkx3uQQj83H18vl+TN
	 Cz10c+agJW/umsrjDSb1Z6tDhROhWtwq/TZrMzftJy+82olh2SAF1IRbtU7YVJtqI/
	 L6hGRKJPVhyNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9768CD6E56
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 11:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178048707368.13515.17895984858312914152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52f181f582e455c71afefdd06dc5c17d29d366d275286d5025a281a6913248b1
Date: Wed, 03 Jun 2026 11:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780487073
