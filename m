Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CE81361979
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788426634; cv=none; b=WF6f49iHMCD7wefgUqp64EDCtbBwe6a6HuoU2tGnxcbyqmP+cGWE7IbBB4YowGcTrw2ovkBe2Fkc91+DMJzUk0gCDBRLRhYIJzhmkRn3jmOaUuB6IawEB1fS4fl3VaCEDIxZi79t81zX/S0x2iDT0UlCosZ0YIckx53FB1a7LUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788426634; c=relaxed/simple;
	bh=VhZnNs3XIcW8h8J4zf4Vk4fLKhzcChqXWpQ/ivUumt4=;
	h=To:Subject:From:Message-Id:Date; b=hF9E1yOFLn3sWr8zgJbYD7qzJA2cXOJyIe4DvbhaH22HgkpwGimkWE3XxVXrbB4OoSUUaF3rmKhkkyMjwEDAXk6vKfE2Ycv9uE27iSYIhmx8LDzIqXgYXoFzaYiTghcXbFlHvNVNQDu4WN31UwOB7em+JihZT8CIoTxvHR8Q/Kc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W/anclIQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W/anclIQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA6A5C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788426633;
	bh=VhZnNs3XIcW8h8J4zf4Vk4fLKhzcChqXWpQ/ivUumt4=;
	h=To:Subject:From:Date:From;
	b=W/anclIQSOo4UFW4o0HHNqAaMdyX9Q7rLYoWBeIJHyCO37RQn5S1TJOurK82Sactd
	 0lLr8mLGu0zfEtsQXJqmYQYAoljVr9Sz3Y+tvLMo4l97MyaandREXTHk48xS1pNRSY
	 IsOkZKPtbXArhnmTwOGDcz1cfpZQ9lXGD4BnlCsGoHRwgY0tP89PvFSwC8dcXJjNCO
	 tRSTeMPosR/HF7uv20PXIsDge0SpWR64UJLhmKxT4ulpEe5N7OnOG774vgvLaRJ6Pd
	 x6nrt1tAt8pTYmccNAlePoPTPw3eDeoScXm0pqpDHx7vTbliVtuPVjOGuHl9buwMPs
	 mC81QKr0OIBKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B50F0C61DD3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178842663372.21744.13216561249779271847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0679a758de0ae267393ca942434116054bd80ed2544a960338ed247d8fc24c3a
Date: Thu, 03 Sep 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788426633
