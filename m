Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379FA268682
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747917594; cv=none; b=k5WxPEeM++xaVi2rnsccwo4Uus9J5/MBO3YLDolgCQ6nYJ34ExHSgc9MxjulUqr9VNEZp8HY00zapXkB4AfHz797mdw3VpwUTL6wnu/yGfIdUE4L3M0djMn4jvQq/X4t5YUYxhI3UUi1/KgEg2JOcdrl7/ONLiCRjJk76Lugsq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747917594; c=relaxed/simple;
	bh=9vrMj77yca+7NqAT3DMxVX7YB516xu3EDISCsL9fd/M=;
	h=To:Subject:From:Message-Id:Date; b=O9BjlFpjH8zT8G0XIpLLpQPDyQwBSVC7pve4Wesfauxd1P2kQ9gJ5R7rixhymcuSFC6xcoWW55d06moaEZgxPvKIfYwpoEa3MTZ4+JlQ4JGbEegkn6ALkH5w72yd5y9aDmPVHqFMSuq0d4sTtJx8ON7IDkoeEa1bUoZMf2C9EHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ncj9CAkh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ncj9CAkh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E7BEC4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747917593;
	bh=9vrMj77yca+7NqAT3DMxVX7YB516xu3EDISCsL9fd/M=;
	h=To:Subject:From:Date:From;
	b=ncj9CAkhqqVypGA+TqpcT0xu0UcPflzb/QmToRbDzQRBvkbyZ0urq+OSqXXnSm/GI
	 rmYgyCkxV+xaPhybHfw3ORcr5sGyDZWXRWLNwOBCeGWRdndIJezXB6P9ldlQ1D1tTG
	 PRYYsk5LAtmpPEU9IaAgxJ5mN0jXbpY/dD9bxd/DQLWNuBVsFgnn85DHlFqpDu9Cvf
	 Z4T3jpBLzjPXsrgfoABBPkm2uKTjBlvy+YC319iohNLerwJNU3uU/PL5r3+Cp0T3Qa
	 QIirVKWhb1n5dQcUqUO0f2hXfmo86+wLqY+rm3HKN6Em37HPJJRTwJifJgQ7LXy3Jm
	 EwnEn8J0wPNnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC0BC54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174791759358.6056.10727887617938152593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 254dc5cdf2b15ba66c7405dcdc26f5a8ad46cc30d24a274f53fa64ad1b718196
Date: Thu, 22 May 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747917593
