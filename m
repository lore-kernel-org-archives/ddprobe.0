Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D3AC47F69
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726352754; cv=none; b=X7InP3w2Fc03V7g/6f7LkradIsnlJ5YCEoszH6KrXhAmZvU7Ln6dcLYKBMTFaWdbw/vAba4o6RTXvvONRiU7F0cdiiqiRhyMAvqoWSE2X0nGP97OiGhkvv5vXOxkURdILLMIIFyc0B3Dhn8D/kYjSQdUtWt2Jh4dH9bElo3MFko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726352754; c=relaxed/simple;
	bh=D2oVwEL0dYjsEPrVL7Klr14UpmE5I6iLlSiEdg48C8o=;
	h=To:Subject:From:Message-Id:Date; b=JIfGIE7ze0LnNBIfJXBZoJoAlisfX7NSb1oBghk7ro94YRHNJIiuw6FGPZoMlUevtfKxLu54vAeiF5SATNynF3yb4xW8dkTXvW3k7U1xLAvCi2U3GPKw59g+NtyvQuHhbTzuSBfHQkiUFiDjgiwg9Hw4K5CJ6tqXdZq1VMiGd2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mF5SHxcT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mF5SHxcT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0324C4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726352753;
	bh=D2oVwEL0dYjsEPrVL7Klr14UpmE5I6iLlSiEdg48C8o=;
	h=To:Subject:From:Date:From;
	b=mF5SHxcTVkQOuI3U8+PVA+ZwjoDEQl3fM8+wXRV0vU6UH2dCJTFBrpwIp2PmCdLsD
	 Ou0WHFknXtqJ1H2Jseefgz44BRIELTq1Tc3Xrayl+bevpcZmJ2vFUH1aPEA8WpsB0u
	 N0GQp/5CdAJkCKm1hQUaInyAFD42GFLsSgHCxQmf7NEJlKGXyl26EDpFTgoETbk9XZ
	 BwLTa1KkIcdI0p2ONIXg/kOuCvSuqXyxK8wTo9EWnKAZoaHYmC5EhuI067uZ6VtMV+
	 m0Jdro+PLLnT8jeaQjPDbkHjB1gAQfQ5yrPDowhvmr9dawRenEPINMeTNaNumPF4Wi
	 7L0RWZvnk0hHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90710C021BE
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172635275358.31789.17761811640974807016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 090aa28a901f6bf9cc34f7ab98191393d9ec7f012c0b80f70ed759dfd59e947d
Date: Sat, 14 Sep 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726352753
