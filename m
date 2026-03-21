Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4DD22F1FEA
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 19:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774120494; cv=none; b=ABXX99tkRrIANKFWXsACyKIcZmv8L+gLVMtyzklVSyMsoKtChnDxEgxGCCtcTOAlnnAk8Ko2zZL9MCa5nJZP9UqtC6LLR3xbMpXzUJTwxjgToHTSS5tQMMgcLgaqFarZj0h91koka6GGZDij6w3B98+bdLTu0BfFAhGD/Q67AQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774120494; c=relaxed/simple;
	bh=Q41diBa3Gi+HZNy/lCdnKqAaq1Z781PPFnT1yB2Ki6U=;
	h=To:Subject:From:Message-Id:Date; b=Tyr6x3FM6J3E9EDkrWKSzG1kqFzRdz/fE18Ka1ONfSWBOXPfbHTH8GhXJRw15ShwfF4rzmJI49vXdRB1gX5UtsYSO8eAdrhqebsmUSYFxv2JRPl5tUDrfuuf/3Y6s8jNivjg3iAxuAj1qbcalJ83C+vhS3ZZG0AMwF5YbmR/I4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rNZxi5Ed; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rNZxi5Ed"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E71C2BC87
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 19:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774120493;
	bh=Q41diBa3Gi+HZNy/lCdnKqAaq1Z781PPFnT1yB2Ki6U=;
	h=To:Subject:From:Date:From;
	b=rNZxi5EdOn/oJbv1tQJLAc1S8qsMQN1IrtROIftKgbIcgtm44z411BEpJhyp6BSKq
	 LzTBtgAcPCFEtn7gARdzGjOOK6wQDua46PQfOfwv7mRzNUa3+Vv6biExZP7fX/pmWs
	 YNM6k1HmwwxO7XjghRKD5qtuvmMoyzw06juB6592i8Tkb9bu2TVrs8pBzaNhe19KDg
	 aFTLJaLZeLuW6xeuasemxGQOiFOXPIWvRCo8VEflnrCYt0EiMqUOk66tfmIUFOxlvy
	 ZbFPy4Y03cnruSu0R/OBtQkfzhxC2ZkKq3xKeP8Evxrhv+ZJzA/fCGcyPpJo0ZtPMc
	 Yxa2UEeoTIaYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9144C109446F
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 19:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177412049357.3361.18248172883316680453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1254c68d2277fbcbffafb90e92d84abbf4cebcf210ab57904a33c2618a6a423b
Date: Sat, 21 Mar 2026 19:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774120493
