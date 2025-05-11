Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E4DB17555
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746938394; cv=none; b=DcbEyA7Jx/4DVfQH/FNL4DML1Es/av/VrSkreyTx8QUgnM3P8u4ne0bxrqpBBlAe0cjIpbYDdAg9Fo/1jDcYJX4TB59BGq5FY/ZMuXqgGmDwfvf58j2tG7LDQWEN87Z+/QKNGxqh3VrVINa7sjUgnKqMTqhy3BlpXerGPo6q8uI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746938394; c=relaxed/simple;
	bh=YwkRfZaD9p5cZG3oqy0ePXY2dBOQFNCrpirx/cdh+uI=;
	h=To:Subject:From:Message-Id:Date; b=dsJWcIv5lP9BwNv+14GV1xHdqs+97mnHtMOpp6PhqJnwAedHNocWqmce+uQVMtOpglWu3Aa5XaSRHcgKIHg/btspbKffe3vZEpxkg8rhQ7KYWuBPEVnwxVMkdKV05o/NWIbBN1a9grso0/qAI9KmEVysTH6j9kYnie3kj8C54A4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XicXyvXg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XicXyvXg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADD9AC4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746938393;
	bh=YwkRfZaD9p5cZG3oqy0ePXY2dBOQFNCrpirx/cdh+uI=;
	h=To:Subject:From:Date:From;
	b=XicXyvXgKvsC76D7qiSIGf4dtuqEtJyF/2CUYod6C9SpRubrl4/xmg6gFcbuuCRsl
	 hDn0ocSg5qlb6YbgVQA150jnCCx1ad3UVhGXPMo/+kinRwAdDnGTN2DOWFP6gdCwn2
	 X7lbXlW0GFca9ouOJyBQF+rbvXARSwS/Fs0/ncemn04hLWD811rf7HNoSdD2MJidaG
	 SqeCFC5a6/lOYC4J8VLYTtEsgwTaTPm3OPWJFMFSJY3WhWbBvVFG8IerxJdKt9L11t
	 /1BQ7nFPngd3ixGYkjZrRUyIVg3/MdjPKxdjaDqw3ohyHJK4Bccfne1VK4VESp7YpG
	 RhjgX7JY7vNGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 989E9C3ABC5
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174693839360.28147.5423701631265497886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 340825d63f18b55c1d3add371903997ddc1f21c27741603f0429eb83736b57f6
Date: Sun, 11 May 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746938393
