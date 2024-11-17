Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28CD215E96
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731823554; cv=none; b=KJsTe4IIN44m8ezI4HsufNgyOHaOl9UUFPutp63yqaCh/pTBowkbNmeksplryhQAxFynbEVmarhHgWc7GVR3ScLlJgK/qi11WP7RQbL6348/XWeV4S28l6OdI19UpOOhbt78kr+F3q9Q6OGs1Ww+qK5NIMSuoVVXx1QTKAAS6Qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731823554; c=relaxed/simple;
	bh=gKGzV1RBECwY0fjVY7gpBwfLeXBaDRxy6JpayMGiX0Y=;
	h=To:Subject:From:Message-Id:Date; b=qqB0DUXRD4v6JGJtQRRk8MMUThWit9S/0qCKwjjdoE0IeigmyIMy3ky99sOa4MjjEj2QPbQKmRJCVXizFIXf/sUA5sQxS24hOE1MKZfFtkHUg8z9Ofo3xE2WCi3Qo/ONSNpB0jVSOuakXq41iyKy3mumgPBXTfa0yogYLlNzXMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I/UXRn1H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I/UXRn1H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB985C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731823553;
	bh=gKGzV1RBECwY0fjVY7gpBwfLeXBaDRxy6JpayMGiX0Y=;
	h=To:Subject:From:Date:From;
	b=I/UXRn1HakrdqeIPFJd9+9t2D7g8hU/9HPBNY6ee8wpAa+gWHM74m0BdITfMEDSO3
	 0p8I6sT558ELEIZQ7ZpDx+SYHVixoZxBRoKk/DW7VS/RmL+SV+NiixUiWwYNzsI0dC
	 jYQGo/H161Njjvzbt0lYLnVzMOa2kGBvsfv7+chHvHcUtksnPtVpCsrDoJFXAOxUM6
	 5jKEaw2MQVHS/VMe7bAReHTAIo7Sm23jm9F37G1pESPSyxJIcWYN5aJg+TWaonmgM9
	 RtgEEi5G4V4lb/YzGMqvUqJBeADZMyHyEw7i9SX6EEoTUD8ZY7s8147y7ddnK/8RhJ
	 BUOlKlSkUJyZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9914FD68BDD
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173182355359.8275.13204157355847009230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad081358924e9d7731b6daf5ca5df41253f3586c409d597749cad4299c5962a6
Date: Sun, 17 Nov 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731823553
