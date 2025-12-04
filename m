Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 356682F6160
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 22:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764885774; cv=none; b=XwoAUdokJDWG+5g19JW7zBq8rvw4ny4fgxJ0jrrY+rO3rexEABSS//CibOQZexDpBABuM6Zt5bPpZ5aJRySsEWZEJmLm0MaNtasdHheGwAcj5C5oett9GWnGlxSuD1i0agckR32Pe+rgL8pEZhKjmuvgVRvs5JepqxrPpUXbAUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764885774; c=relaxed/simple;
	bh=HQBzGEre7jxm0dzC1A/MvW1yY0325vDne41aub4fFyQ=;
	h=To:Subject:From:Message-Id:Date; b=M89ETmd0KJeZ4zn6F4rs+rKtBa+eO8bJ3A5ZMkPr0Dapat0nnHZBHpcnQbyV9kJ6Q469ggT6Q4U/AegU/SNrc3J4QfAlFQTGdBAEr3MWTv0QM4oclapd+qttuNuJ+f3PXGxRsZqyeZCU3WTwVlqy1HuitOCHkDWEZHJf/C4mfFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S2Cl/PZZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S2Cl/PZZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF115C113D0
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 22:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764885773;
	bh=HQBzGEre7jxm0dzC1A/MvW1yY0325vDne41aub4fFyQ=;
	h=To:Subject:From:Date:From;
	b=S2Cl/PZZJOklYNagCOd12J6//4me4asZCVdRfm5BySSn0e+jBoj92+OMV4LHcUVMr
	 qUq5svsMtzVDdRpNHzX8kXc7Aj8ZJ6DXWpcGO6vY1/g6VQNXdVyE1L0esMbIqkfWS3
	 w5hxLG+QW2gc/lMpdQjczArTsGMhUb/GIdA12FWfp4FqpiUHVlpSbzqPGGy1ytBF7l
	 qxti5CTOXO2VesBDtqoXu690L6Jed+Ptp4xrplqdo5EOdMmWvRAepUYQ1b2nl/qf1v
	 6WT4V1fEvfZIeCvhkWaQuHk+cFRznYS4a7+lcNvis/ypHRhAD1wjEp+ALDsKXju4m7
	 MyDyhJl5fjd5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CE80D2A551
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 22:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176488577361.9292.9923933061295855737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 730bee9c356aeb54ef4a0e5bc293c7fcad60510a4121bdd0057cc28c67c09e95
Date: Thu, 04 Dec 2025 22:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764885773
