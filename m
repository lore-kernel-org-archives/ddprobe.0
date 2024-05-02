Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F96C17554E
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 19:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714679543; cv=none; b=DTYOlnP1NXD5Q6b7+Mixwykqtrc5nMwspNAsU4YWWk6uVLQjKia8NxvM/If/TRFItWJ84ZZIfrCnpGYsPEv0kAz90c/kSDX/Na4tUOFThCts0KHoOQ8DX0R2yMlejpDIBhYexbi151v84UE+K6LiJPdvZ02WUvrLIWRl052uJoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714679543; c=relaxed/simple;
	bh=GfbvK0fbRb1Un+9QC3dbvubfvd/sD424u4CyJ7YAeyw=;
	h=To:Subject:From:Message-Id:Date; b=mTHECnfqo9DlAEJjnurntYHvW2vgt/s+p0sEYyKoTbC9rtYMri4vFjT+/XbtF4PX28oLpO4fSLcGnjuhCO157J+kaafPc1G2ekUfG54WRMzNnZcBIsSkEGvmbX8WwcEzu46IRvrbjTYnsEKsIi6hUJ+Hvj6ZFBewgtdyYzzouf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z20zWNyq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z20zWNyq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D609EC113CC
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 19:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714679542;
	bh=GfbvK0fbRb1Un+9QC3dbvubfvd/sD424u4CyJ7YAeyw=;
	h=To:Subject:From:Date:From;
	b=Z20zWNyqGC6vakTWHPuY9Gb0nzRr19OpDzA5mYfVWiGvjguj7Yawy9opcqWFHh5BC
	 itPvX1w53OcLrt47V6OQhUrPG30crdKAGBrhjq9HE57MqCzi7dOZQu2Sih/Gu7WXGN
	 SpcyZYM51qkk2lwycDEdoW10peFN47M8ADQ9WiKpQJc/yiZz0z+dZN5W+dGzBNugrh
	 7shSRbny/4A6NGlq1aPL0CG0BFGubkdblZyhkAbLs8/dFIXhIy75fVpkz6n1XTTtcI
	 yp0XGgeZYugicK8PkhR9atEeGdxCvwmumIT2tAzmKaD41ZjvO1OJ4ZdXdqxKZWjz9S
	 zGvkUm4+ywh0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF00CC4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 19:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171467954277.22808.17992676984712814551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7caa522f058ccd4d1b80d19f6382aa974647d43b01e94d9ebc1e167653591fb
Date: Thu, 02 May 2024 19:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714679542
