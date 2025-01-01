Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BFCFDF60
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735752954; cv=none; b=uo7spUVbdQpSAMNXfq6JxjhhKIs30Fejh/n5yIAO6O35715aW4S3Zv19LgPDIBHgJicW+B1oUtUC1jejxAKxDXZm9HOos8NGwNDy3IjXIJcgmP60nICbakC8/owUgwAmVLUtlO6Y+YODHsit6gE85n4HaABsynkXEQKw0/eJLhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735752954; c=relaxed/simple;
	bh=21SkNcoiKHZiIaAeuCcSzor+wSQGuwDqpnHLpZY7838=;
	h=To:Subject:From:Message-Id:Date; b=Hh6wtKmT+jYk7wtroa0clYOM6wFLQ/sppMsYbUDEYekt1tEPARXKt2vO1arGNLw/Z0xyd+KPRt+qVZTKXuIZfNY8I1J5ooLYMviDhGi79ozk5L8PhR72c/8btlJvKa8D7xmjpB1LgjCXXK3serj57uzWcMYwZzgXbo+Q2qipsYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=og58S0Tt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="og58S0Tt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD9C7C4CECE
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735752953;
	bh=21SkNcoiKHZiIaAeuCcSzor+wSQGuwDqpnHLpZY7838=;
	h=To:Subject:From:Date:From;
	b=og58S0TtdM1ONnbOilRG0GI/9iCzcNwhNfpficC9y4Cemy+322mLqvhR96uJo2FjJ
	 9shbMHkMb8bQqC1Vb7kjn8h59BhIBl9jYOgufuQYfG8XX2fyj26KMVv7449lYRMGh1
	 kzuL9my4vflxOrHmdHT/yzSpeeQsy+6l7DiRwzl9XPlV5+0Bx6g4CAp8dCwfq+O+vy
	 feoriv9kcCdl1Q6zowpql0VmLQWPtwwkPlBouot2crsPHLTBdRCtZSKrvget7HhmWc
	 aF4AYGt+5VK1xY8bOBIcWA4q8Co7nH11S1QXEEx4JHWCYsitEMuh7pIecu9zJtNpGA
	 qeB4hnmj0WKlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E13E7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173575295359.16078.5464565256954099446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5917a0b5db5f1f7fdd91407ab05731cb5bc96f9d2936d63181c8a85fe768f5dc
Date: Wed, 01 Jan 2025 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735752953
