Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B01D266EE7
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754656194; cv=none; b=qp8Bdok8trtIN/Ao27yCKOtt2mSEVBRcdhbXM1uxU5BkkI6ZcO6M5YKuLIxBRLLjRFTjaAL2l5mBuzQfgvuB3fIH4plR3qz8grp4RfDBIFS8JjfOkI4q9E+wPoDasJBWvtIODbRYzkQISY5mNyBDhXIGizaPVcOt/ybAkRZmDWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754656194; c=relaxed/simple;
	bh=rfGmPo3dIfLYqybwLVd1T7DFk+21mQZ+e+gjjxpn/ow=;
	h=To:Subject:From:Message-Id:Date; b=WqDgAvTOKc8eLXLxvMIKYYJmZsptwmqlrnmAERGn2Wn5K9e45l218/3ffncycaK8pObPr97x+QBNxcIHrAM9Lvf4lNxl5cmDepAByb+vK8b4jwPtpVAPQkLQsHE1PwEfr8uRdysIv/jktY2kuJA+N63e4U9OgqXC5f9je7QLvqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dy9AIU6E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dy9AIU6E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FFF0C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754656193;
	bh=rfGmPo3dIfLYqybwLVd1T7DFk+21mQZ+e+gjjxpn/ow=;
	h=To:Subject:From:Date:From;
	b=dy9AIU6E6PtIaWGHqoNvU4BQLhfNszhaNwAIGzMfg2lKhuiv7QNkO6n61zCjxCZlh
	 N6dfeZAvgbjtSkNd79yHhvf+M6C3rouSrBXgKxiEVYjNxEn/zVgkTAuuEkz7asGagK
	 AkSnGxsC528avaTiw4SDnwKdOwtAgKG5H0WHSUs5WUQgFNinI67RpKllY1Aiut9NW6
	 R6PkeNBdGAPOLLYgUhRT2AE4RDw+C3Q+ZGdcyamprwNq8CWrETQO9k6lf2o2f2YWFo
	 Y7taT1z/f3ZfzuBzKrHCo0XtSDMGNa01eblfM9e/yahDe+G5r8//lhM8Dwzr4zd409
	 jjj4rHOZCwZag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E943C87FD2
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175465619357.2799.7678902027622370155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09b0a347cf843482a74d00e7f09d41c2ef5e4c23af8a227608083829f47407ad
Date: Fri, 08 Aug 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754656193
