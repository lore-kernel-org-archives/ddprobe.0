Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF762E228D
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 12:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772283294; cv=none; b=YzRgJOYJ8SMHlyXseBicmatAB3fHbVjuWP4dwb2bUmq/Stq1Kf77eX/MUzNXieZLmfiHIKyfjl56aTlo9SeVeD5aVGNAvR9MRQ7cBwME+NI+onzzfvOuLcX+9V3nkYmSESP4WcZku3Cl39D8pzAksZlVgw84lTDUMZ9ilQHOhwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772283294; c=relaxed/simple;
	bh=D17v2oeRmlVXaunB/eakY/jRPmsNnSVkerVn1ltATgY=;
	h=To:Subject:From:Message-Id:Date; b=ooZTxUkUiPUT5/9Cqy79Ad4usUyMt94L6FulhzrNNR0ITzkHGivIV4PNF9S/NIsLWbv3PAACy7uVu0mvxU0sqns9eRTvR8ZK+6Jht0ORkEh5bSJrbrtjv1uxmzA19QQLsTeZ1A+gc/aGcy0IWwdlH5NuoEDt3B2Lq/0jnAJUGno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tV6xXEFT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tV6xXEFT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B436AC19421
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 12:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772283293;
	bh=D17v2oeRmlVXaunB/eakY/jRPmsNnSVkerVn1ltATgY=;
	h=To:Subject:From:Date:From;
	b=tV6xXEFT5sqXd9FXn7nCkswLx7+a5eikq6l9PGMIqr+hL+SNd4UapjDbZZjPbQKjj
	 lmIqeFHKMb9ItR6yXM2hnQb56ITR8jpCuWWSVs9GaqYnH49pREkilaU8l0f4hneALi
	 u5k3jQTumF/+NyGvrMUMBHyqWgTcQpKAaBwag0fdD/bD8uPI/cEeoBq2+aPVlR7qup
	 0m26G4XkXpU94bLLjnT+qEa+NH+fqImbgjVeDoIq+50jgFr34CWzIkdp9y/QAm2KNo
	 glhS+PKdXVLR8yczykV3a3DisdsNBTTF9j7PSspO43zDNxS3y1Nu9lPwhO053YCGmR
	 622EbMR/YeKAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A28DBFEE4C9
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 12:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177228329357.13024.18208878377697943460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7b88c08a00ddafee851818f5bd24366348d64f1de537da36cf837573be45f50
Date: Sat, 28 Feb 2026 12:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772283293
