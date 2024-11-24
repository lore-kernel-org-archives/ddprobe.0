Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1C52500D9
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732467954; cv=none; b=RFW5udoWw+z7WLPUg4teG4Vz94X5v1pharrgtY8kKMwRcrmsH5e7yDPvr1ABwm0trkCCXFcw6dcEhnM3BD4g6xio4ie6eVaNk8oQ994q5DxEnGKLkM5Fhg8ehv/uMMW45qwb2DvKubjKjpYeFTphE52203kyVavykfyGWh6HQNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732467954; c=relaxed/simple;
	bh=Pyw2wE5GoHBRhn9kOrn7MuWHVNwzPC61ne5+eVaxg3k=;
	h=To:Subject:From:Message-Id:Date; b=iiu0MKBsFX2iTzLDQVZLM27lmgMXy0B2F/SmlHyWl2ruzhhWNZ6mAVoBQnqFIFEr0USIT/wxoCdrqt6MhuC8/EL5DSfmrH+figdbpG2y5GVnmruooX0c1iDontOomnEL9HZxoSDUb6EmWB8KpuTe+ZIDstSiwKuHJhvsx2us5O8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t1zrUZ9Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t1zrUZ9Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B20E4C4CECC
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732467953;
	bh=Pyw2wE5GoHBRhn9kOrn7MuWHVNwzPC61ne5+eVaxg3k=;
	h=To:Subject:From:Date:From;
	b=t1zrUZ9QLmJ/+/0CFZb+UvFEyG6IhigxZFFzHkTB7OUuUQwnX4psNwKfA53x6Wfoh
	 6Qy6sIf/hWRNtIBogJxZY6P0y+qBJzA4C8TfCO0VHxJ0/WH2P/mmmsbyX4tpEiXdwh
	 6O7XMhYJ2jQh2pHIjQsCuCKPECLPXyys/tm+0FxyZ27IP18Z9KlJ+pRgwhUhGJRKAZ
	 2QSiR6wKmKHAaoj+MpIZI9H6rFqPOm6BTKYXTT3nPIKuioIZYaNbipn3uAByzxiCrU
	 jaNG/HjQ0jD49DPa+dyNmvRKElhzd56TCuoPCyvVxOJknXRlbq99V7025yCCKWmGXS
	 VW8uqvAmREC6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D0A4E668BC
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173246795363.20591.11791068293570463470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2309a2aab1f1446fe2fbc9e2d216a2656d0a77fa8696303390dbb469cdceb83f
Date: Sun, 24 Nov 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732467953
