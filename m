Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2721B2F852
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748327994; cv=none; b=mPvtoUIkLyYmKMIM+XZonYvprYmN2/d64g/lCF1ri+Ibk6qQ/tfosxsG7+L6t118b8UccZ7qhBygLezXwxp/Tq3GJQIasLwUxpAtqIjFEeC+uKTeaUiISaP/j3VLrdUDAxuF+7oih1hRU3a9eEhNwGvONUWe1Onac///hAI6ahM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748327994; c=relaxed/simple;
	bh=RpEP3IMQc+L6XverwwFK3/1ar4hA4SE8upFV16p0xFU=;
	h=To:Subject:From:Message-Id:Date; b=KX+HbNwbh/ossFKafzJmgCUUYpAQnpUD+dfDPQYeGmm6j+AP+hDRuVIaOHUFClAtgghdR+cWBmzOT9eBTQihDlKbvsNIVytR8kkYq94ySaueWgxCwrfyi521W4cfOMZnIsyDURc3mRUKr3A/XO36tefZLL66b1sH99X/x6GdBgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YeJirqdr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YeJirqdr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A160FC4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748327993;
	bh=RpEP3IMQc+L6XverwwFK3/1ar4hA4SE8upFV16p0xFU=;
	h=To:Subject:From:Date:From;
	b=YeJirqdr5LjuSuL+ymeCC00x9LWkONXTahi+i+As6kuDXQhr2dlmws1evVXMhbu6H
	 gjKf0Z3YVrN2bc5j40g2aYLIOhpXJD2A8JFL6tX6pifB9Y5HxWBoW11dydzML46lRW
	 PT0MXpF4RYnAkC07Waa2v6X+J97racBBRo0htHt2DoyGIEc2Twe+bxfFB5iG13fuU/
	 eL7azFAKhruouIkJNJ9+oJfASwq9jutrrSS+BHLnpxgY0H3xLmMxtK27lLgZNfDTw6
	 DX0/M9TpDaZZlekr32nk83hrf29NkLpQ4WUoo29eus2f/nexVjnRmYQN0SVBEzgPT0
	 T4aAjEqxkNBIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF00C54F30
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174832799357.4306.2170424333619069681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ba86b3bb74189056e261ffac4d29a92d2e48382e1c553e2696bbc5cd3bd584c
Date: Tue, 27 May 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748327993
