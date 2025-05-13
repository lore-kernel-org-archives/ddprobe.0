Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2783F1DACA1
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747132194; cv=none; b=VZyDEZfbdipVexHjyLRbjZKF7UhfeTTEl+JRxsXD2MpKsQn1fb3AuGnQOB9+Q/1ZhQ1u/ilR6MfkbOWhINde2HDSHVNIp+hGw3twuRZAa293gwI0/Sw2zpp/SRNuwkkk59M7BK20y6Dhqs6xaOFlZJzelAr00TJwKGc6HCCyLnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747132194; c=relaxed/simple;
	bh=tBLGH2ABdqBKuFbxYALIgwDZ14ZT95vFyuP8rDrj+M4=;
	h=To:Subject:From:Message-Id:Date; b=cmIFdeXzc4+ek4DIpyl5BLhXrOcpHEnHwR6YtKpFHxbRocG6ORME4IM/czayE7x6H8am6JE9lI8+ncvcg48PxWYMuLeAvHF7D6xG34bYKQYo5uMtFaFeJnbtDQwdB2gHWaxBwPKiuAlJrr87s1HivkCiEYc20beS8Wr9lEHC60M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bsR1OoEF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bsR1OoEF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F367C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747132193;
	bh=tBLGH2ABdqBKuFbxYALIgwDZ14ZT95vFyuP8rDrj+M4=;
	h=To:Subject:From:Date:From;
	b=bsR1OoEF4WfIyR59jpSgw9NEcwQo4/Ro+5e3zIhYv5HqLwK/8xwyoSTvg4QHa/jBJ
	 BggW7fiIxAGJHy8utwqmC59kBQGFFEeQJhVTIaTkfT6cWrRqw7pNLskuK9YusLouCg
	 7igkbzK2odT1W7YkqBwsnAi/fk3vUNHjOc7cjiy8JShlQAwo1m6MAChTiY991IDo50
	 b6xg1ZgtAfhvk+tbTWTAt/0ZRcODBKg2tESKEmfrDJ/AnUKvq9khrmS+0eTdD/midO
	 hNH6/eFpi/uClkO4qNnSvyuPg0LSBNtcCqIi3pD0fRCfkSyvk6C+erRVHAPaDYMnri
	 rFAvfj2dW/vsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCF7C3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174713219358.10316.15430260607073238865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfda01da3d030913a819fc479577d6aac8d2f07195632c32c1367bf14dcec018
Date: Tue, 13 May 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747132193
