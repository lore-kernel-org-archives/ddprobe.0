Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A00712C534
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 05:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782365254; cv=none; b=jhSa1HfmDjTZXl8Hu8K+Q+6mlYpHVZfRTlHHgNagsoATYDHmukhHYSzwFRUhdf0X0D4sDQCOpX76bA81tPAnsIEhMcvJt5faaQtooeYYWVED3Hy1c8AtbJgUhWIMNeF0ZjvEDYfO45EWcEkfx/LR2SmP7whKciiaadVWKhwDfac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782365254; c=relaxed/simple;
	bh=6c9z84ZCptpF3KMYHCP34RQnrlFa7R5h/uX3Ojtg3tM=;
	h=To:Subject:From:Message-Id:Date; b=o/1hp+qTl17kttRTf/2p6YmUvuxS7N3cOQkQeG8hi5X5/Vn2285OmBn5IbxrHxsxUeYX99S63CtKl6JF9QJTn0FP5sr7gLW7q/Ezr+Qv5GuLj4xWgT6pRQ/DAfJdVYVUxUZY5xTgPfZ2KSXyIsLvQ7GA4YHtIAQ0ktQZ6dveOp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nGGijSSQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nGGijSSQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CACABC2BCC6
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 05:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782365253;
	bh=6c9z84ZCptpF3KMYHCP34RQnrlFa7R5h/uX3Ojtg3tM=;
	h=To:Subject:From:Date:From;
	b=nGGijSSQMQLlLkwb+9IeLv2S7UYO10rF4C5aXY1j49pENV6DZ32Cf2m2Tdewk/ZV+
	 80A6wrPiMmUhFAvneoiGrrYkS2M+IHOpz5/jinsaJM0z4q4mEdZuDfMm0lydI51oQy
	 h9JfODDErAqGb4C80YS4P2qqE2usek6AAYnzMaTed2MHuP0G3dK0AF/HM2h+047Ht/
	 HYEX5ShpKX4546x/GuWJI/BX1+LgnpcZFLGTA04B3iUUiaE2IaNrK+Gb0S2VvZB9Un
	 lAGdB3wI68HZb+KzXVvdD5XrZPrAQxvfLjXuP1FJltYhuVCRyENQMaWX/ZYwS3U4Lb
	 w90Y3aCifg4Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B35F4CDE001
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 05:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178236525371.21186.7210589974284398706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 457dd950a20b4999e0ae67fa9f1a834b7c3659dbadeddcbbc15002e47f615dc5
Date: Thu, 25 Jun 2026 05:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782365253
