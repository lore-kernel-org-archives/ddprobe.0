Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DB6F1C5F11
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 08:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773045294; cv=none; b=Snv6jbVU3y7kVTSK/UC56yRYj4Tw3fIFtJda/0/sQHLsoH1it8Ezz/HUUwMqW+qzdEYr/5SMPMf09hU5Zl0DMjPkUc4qed4YT9ASlFJ+NyKojAc12h0bsTTApREwtVwSlKdF70sgmmIMlj/ZquzsWk6hip40+u3bfL7aO1JrYYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773045294; c=relaxed/simple;
	bh=rl6mE/0QRfcSlIWSZUAu/8UdsrBJyNQzYuJeoVpqlpk=;
	h=To:Subject:From:Message-Id:Date; b=oegStv3MHBb6PE52f9bNwReJq1ZJKCO75Y2RtGYmS1bNEQa52ZCiA80XqoqwKv7qoSnUZOMSgJ2qjkQoRVpA8v+UDq3Q+GBRuBRW7yA2m7cHBknyz3TuEwmmn5ZY6M70c4gz8JN7Fx0Q8zjvXb80R8m+oUXV0fVdBs3UIiaAWiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=suYCoBXA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="suYCoBXA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23D4C19423
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 08:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773045293;
	bh=rl6mE/0QRfcSlIWSZUAu/8UdsrBJyNQzYuJeoVpqlpk=;
	h=To:Subject:From:Date:From;
	b=suYCoBXAeSugnMdACPQg/YL1TZMRNG6HpQHeZ9F/9Vnfte+gTYE+XGjog7riJFXKL
	 hHMFGQ4U/GGOhwSA2aRfomkQJUxKRYNTknUyygIO0V1ruPMUsrnpgxed6MpxVAdYib
	 TSvhsZ/cBxw22KWO8JDNOB042lUtgeVwnPiIJWDGBnuekJufLMSuHimUgMCYRnKbCX
	 /VG0GQDEOX2p08wEvHtsDp/33d11nx82k7b9RoRBWectPOnMNJ1awSYC+JJgN/G19K
	 K4qmKDzbrykCMYCxF0Bc7pyW5upKIETWZ3SOJVowQvvb32ZZXYv1bqzMbLTLCVxL1u
	 6tcPkcb1i1RXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9106CEF371A
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 08:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177304529358.22508.16901568490640457723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86be22a6335f502066f557795501acdd5866514b50d4c60f68fc94c9d5864f88
Date: Mon, 09 Mar 2026 08:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773045293
