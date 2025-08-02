Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E34C2E36FD
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754163594; cv=none; b=MDKvrhjTCCZPYvHQPjzwAd/5KS4b4Zdt/wsWeLI9hTNiagVRLJhkb64eRDGw+p3EmbdIuG2gMk+qemqeg5T+B2oAa36cag9/1YT7VaXP7fqhWUk9zcHaBMumzSM5buAhF7m7I1Pe3suPaz6PR4su9evP8gY/ipasQVndv9L6ag8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754163594; c=relaxed/simple;
	bh=lAYmFzt2t9IqWb2QSY5hZzQbFU5e43DbgILIkRchReE=;
	h=To:Subject:From:Message-Id:Date; b=P4+8yAnC3Fvhn/R4bz+7un7PaO1sHS0b0w0aTOIE0+69HS+ZawaLApFrEE4SZPozbP/6ofZxESrnOUZP1lrOA+UJDrJmT0vkKC4a+tilzBW9BptOXDOdaZnd5SLt4wj/Xf1/JAARfDTFUX2Y0zE0Y+MEJ8GLAcw8qLhEL0DNIOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M62W72A1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M62W72A1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67A9C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754163593;
	bh=lAYmFzt2t9IqWb2QSY5hZzQbFU5e43DbgILIkRchReE=;
	h=To:Subject:From:Date:From;
	b=M62W72A1p2Wq8cDon9vtvp4UeloUQH2cNaC6qCTm2rrnUvvdrNQeKaECV9RETkX7L
	 ldzHU5D08u4sydWENlAW2LdS5f4ya6Sb3QTl7eQrTZ2xlUevcO/z47o1ah6vO8MlQk
	 ZWKcQYCBnF2qpT7wDrwVkLxjL318zXkKmVyrp8kpJrAPH6YW3jNjCr2FeUynrdh3hS
	 Zit6etgp6xse5ZE9ZGdk3WmPGYBWhn9K6btPcY5/6a+VEq+PxQvbIwJeNK+YB12pB4
	 BbD9QUydNKoEl0kmJdWg4yypPYCE/TPsMhrj570bCLL+rrLts5hxsOxnqIivRLEaBM
	 M2me7fAh77juQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9216EC87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175416359357.8428.3754749632441847768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a5e973abe08f13d389595ac5290a30489b5683c3162c2ba6fb48c5b2f69fcb7
Date: Sat, 02 Aug 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754163593
