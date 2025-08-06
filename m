Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12BAB1E1A3B
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754460594; cv=none; b=V05FIrGJQuAnqaYkd4aAEpJL8yG2qfXISo6geVr/2PG6tmirrc3X6HDnhxZ6gJYhjge18Z5NOnWBZb0c299bb4BV7RJcAfOepzTeLPLI/iuZ/7v7WJxklirTcm3wGhPrl60Br7Ovk2jREzsJRM8U22Ok7q//RDNTHD/+0kSk7AE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754460594; c=relaxed/simple;
	bh=gR13WB1EYn420n3lJ5Iz0Jxc56LcNZ2V2lxy/R6hMso=;
	h=To:Subject:From:Message-Id:Date; b=DF2hbFTesa8TChQeiigPdiAl200ryNXGkiQWQLAEpmD5913rfM8+DLDUwXg7WR1m2i5F7RTsuELNRyfn089CnQ1fnGIW8r41r2Ei262MNujxT4pKiRrTPjnLOUDuDn15sUaQq6ij8JAdcBeGoH4vrF+zJSaibgHkMxg/Bplrbrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E3VJ9eGG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E3VJ9eGG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA3AC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754460593;
	bh=gR13WB1EYn420n3lJ5Iz0Jxc56LcNZ2V2lxy/R6hMso=;
	h=To:Subject:From:Date:From;
	b=E3VJ9eGGXI0g06r8mCDTOfBKjgbxzhOwS4myXfIyrPROMvUGDvM+NWP+cmTY9cLhB
	 Lmw4VRjQEF62Y9cXLGoAhJJkhctGkttRXL5Un08Hfz1XiN7A4xgVt6U10ssGDBhmf6
	 7s/zhF92IgnzI0vd78JucrSbxTeubZKdMIN8XfyWqzxKm5hdZ2VM2vazg2AgbAa6zU
	 5p1EQTrizIiH+9CHCeV+3k0kND161Kfqwg0+IPhUFnNDQpdoI41ZxEM8DXq5CcAd9u
	 M4r7/9+73z/YAsFeP3yhkXaFrzEwentv3ao/S0TVOBx5Hq3Q9UCAiL2c5TCtG5FpUx
	 SK21fMhmYdvRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1BEC87FCA
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175446059357.6221.2607182084611704405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0aafa48373ac7a0f05f436e0fc15b16dd27b7efe35b32dcd4b5851fc9babcc4
Date: Wed, 06 Aug 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754460593
