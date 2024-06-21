Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AD0E17107C
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 11:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718968343; cv=none; b=YnVALrt3CkMgXDtyRmgsVGdIB7u6UVWk+wA8+AVkkGAJQoO+YUin4yAumg1LQ6exCrTkIsUsWFRBzH6VO7IJKcfYZWFTH8T3noHg4uZrg/n1/QmO/opWEl/oQPVW9dPh7mCpBQKGOg/JHuoF7hgRrikhQNjE7//gTrHDAZEqU3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718968343; c=relaxed/simple;
	bh=MMjBWhojdawt9P+mzndbtyR0MhKA5dtqKhrRQiLe1ts=;
	h=To:Subject:From:Message-Id:Date; b=lQAJB5+6FwK7K8vFJnhnIXK8+/+mBwNvQageEgoIm29K43222VutfcWRB322usZMduG/X2sRgkIQF1iN3cBjbg9rs9VjTrGnnXqdk7/cBksQjaasIx/mUBezaAViXigtU8gEU6vo8doVINHaXqbEIyyIH1lVR3R4Jo0ViGXij10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=syoJTXTE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="syoJTXTE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE408C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 11:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718968342;
	bh=MMjBWhojdawt9P+mzndbtyR0MhKA5dtqKhrRQiLe1ts=;
	h=To:Subject:From:Date:From;
	b=syoJTXTEAvH6GIeAWzXl5FMTx4FRs4fVWWv5M1mryqXGbdqkmheiBebd9YB3EPuph
	 c8QMv1Y5WS0iuscSgpiS8VvklcUHdy2SjXZI3UWq/Q3r2PAA4MHZWa1GOFqRK9wJF5
	 WW2z4EFVh0oOcdmEW6noZ2Qke0Pxb3K1h5Yv2CT/2gJ4vBiD9vsCekpKXQITbWywQi
	 JJ85PW1Fwo6SO/pnw0dzZtn2iXWfIMeANWIg6xsdr7wnbpQj6BVVmFXfiGQ6f4NWMj
	 Dc0COiXZ69YLBr4UI3W8VhtWZ76YSfaRLjP1xkUVakEwiDyq2AWQrJQhViNic+AjiY
	 IzZzqmS1dz1QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB2A3C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 11:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171896834275.23962.14098163539743805596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f43af2921ca33b23268b3e30efa78d38b1afa461478ee565336217e37f951ec8
Date: Fri, 21 Jun 2024 11:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718968342
