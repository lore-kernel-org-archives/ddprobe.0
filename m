Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 732F87F
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 02:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717814243; cv=none; b=qJx3qTiVbVgWk1+dlY5cissh4dXy9G7xi1wwzEs0gjpoYDRsfGB1262M+4iK7MeWYipJA/3qbobts9NRCuufRZFd1q9HG2nBWw4Vs2SO43lzcIQkUWYpIgC+snS9mBhR+s8n60VVfv1p3itAa3xxsS/TWlsOzONjf03iRE/LkyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717814243; c=relaxed/simple;
	bh=UCDhqHCBtGwlfsASV7HVWWKzZmXQKAydEhgH6liMtlg=;
	h=To:Subject:From:Message-Id:Date; b=VeHkGYS8Dc2282qlj7/ulfCkNEYP3XnzZG8yPdKlO02Z9wFHTTfHz0wfu83vQKuPpCwaZTbVEEQ7x3GhYywEXRLWTRGrglBqn+EcQmwe60ZtNoDmqfT0AAW/GyJikIud3VTxbWtKTM438SPQWAs49PvuBFxtBksREl1nVS+VsUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q6K554Ua; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q6K554Ua"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8B77C2BBFC
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 02:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717814242;
	bh=UCDhqHCBtGwlfsASV7HVWWKzZmXQKAydEhgH6liMtlg=;
	h=To:Subject:From:Date:From;
	b=Q6K554UaN0gVjyBwl9k7rTidIoOw45ytXO8l+v8Cl/0MWSTN67ADnVReBM7IGCTzi
	 5xakoxhZsbWlkKKIHH7lt94bBywPXQFtgVEtpScMNDfrNu6ryn8cnUstc/FPBVqOMj
	 VX7CgZK1GCdlnx6i/ze1sJjm2WqZf3J9P2t4G/sU2zAe+SYErxNSAnTsQsGZUu+8qi
	 bI/TEHr31Y1sCk969AyJkyUQbKFLrrcFq9sTrOWCkCxEU1/37dzo3Pj+1y2KNNq3Bb
	 ZrZaTDkeM/iXNvgnPVyhpeqc9rD46d0AqFf52W0X4D2ky4l6oEJ3Us9WbrZJzyIcAS
	 LAZikuThkb7AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C256DC27C53
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 02:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171781424278.1775.13692575634728984979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a00619b5f3778eced426f7f97a73663a3072255b6fe514021e054a5ed816fc1
Date: Sat, 08 Jun 2024 02:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717814242
