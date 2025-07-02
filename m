Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 116CF2D46BE
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751472594; cv=none; b=aYw9Wwz77KxLfiTF83fJ+vq26ctWlw/DMKlj4RiRZkY0+qbxlktOiJUW/6WbJrjjqu05S5sqOBzY6A1CMgddmrMibxzrUgYFXZ3zaMS5CutqqncMx3bzWFQz1YEyHsNchT8uXLYOn4SLF+IepOq/odIqLgtzBQwzYwYzAb6kFOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751472594; c=relaxed/simple;
	bh=XukKnZ6Y8yTDudAhVC5VhbBwLd9Fodt+1wZw6yabPdY=;
	h=To:Subject:From:Message-Id:Date; b=quj5BZ+AJVRO4cKsTb9GKnUWJGJhdyVby/LyXQ07kn1TtR4jtzCINvvvQsxvsgVWeYqpk59eSxYr85MjQ71tYMq6ISctodFuDEe5IzBJRmrUGvbh4eZ3TnddWA4km5jyXikeXpzssQi5jUN6cffzXcY5oZT5phzB1IhRah9Gt6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TFjV+6VH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TFjV+6VH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3600C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751472593;
	bh=XukKnZ6Y8yTDudAhVC5VhbBwLd9Fodt+1wZw6yabPdY=;
	h=To:Subject:From:Date:From;
	b=TFjV+6VHo6yyaFuens4U6xQcT2CGCeQ+NFJkMlfhvYzFvGnh2nPXhXnOx7HEsRQ/j
	 555VeG2uvHvoad69kRwadPlitk78+ISomswVnZGE7Rgp0fe07J3tGN0Gss5iAOxDCL
	 gEHLhpdilNTntQhbw6B4BlUb2JZpUg/dWmA7aJhpF3TrGaoR5HVrjuOGQYwiTayFVC
	 ktv8orSH7vIfbqbrW/NtegIAvBuK8JM+bSQZ03kx8h70qb9FTLr7YqNAMNNZbaeIMz
	 rhaLQwl3C/W3GaO+T1Aho2XhTDDlwUjrwxEiUgssdNLfwwOAxtXozADbmNis0hjp5i
	 qIPaCFACqw3bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906ACC83F04
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175147259358.17791.2822581561658475322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9694fdcf0c7db17d78d3cf5c0987b3c0fa0df7d8470a0054afad084d9e73600a
Date: Wed, 02 Jul 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751472593
