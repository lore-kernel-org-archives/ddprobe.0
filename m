Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B92328FAB6
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746656995; cv=none; b=oY4nGkyY29gEOwreEiEBOiauwgRkHEz8syGNOCbPkCUZG5+rZ3Iai+WodHTiC8+UP0PhUHZLzNuszZIh070qxlPPEuz/YHkWT/AukpvocL29PWnQ4D3PTaR0Hs7fip99aCtvuPtwNYlGnnlql3jde8kbnqNXR48UW8ZS+tATDoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746656995; c=relaxed/simple;
	bh=EOxOXI5FLEP7kluyHvwCkqjVJQqHU0ivt9EZiw43eQs=;
	h=To:Subject:From:Message-Id:Date; b=qpt3yQAi62J6zykdk2P5ATjY+muibg5upbC/WLbBAuVPOVGp0h2ann7tyEgIkS/5FkeaPYsd/GkFb6CPxDXKBo/4cB4pFM7Jjo7wSKX00gyTTS6L7x9LncyiWktCFjKmYGlw6UFNp981GM0qTbWIqZuFPaqVQGS3zADh2WnbwfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t1khR/gB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t1khR/gB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C0FC4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746656993;
	bh=EOxOXI5FLEP7kluyHvwCkqjVJQqHU0ivt9EZiw43eQs=;
	h=To:Subject:From:Date:From;
	b=t1khR/gBfz09s0GlQruhSzqzcwR8pSZqmJVCrwU+nl4wfM929GazJP/ilNVCQi7+Q
	 At+KWknEl1jdupzht3L7zNXgiK1yfMVF+2XUSa8Dn0CvlCYEPhRGcNodzgYerzIlGv
	 XUrhmI+pItqDnWYHDm3o68EhvsisneVC93Uxv8+oIXax7f1bqyRl2GYI6jaQKUfbM9
	 DxopdtAjs9ni06UGN8ZENOAmUwEJHNttruNHImtviidU3/9Yghfu4Ka1QAseTIddiE
	 VlYaxCA0596kBdTmM8qZphmZgR4nBPoVMh3aTKTHoZ0rZcQDflNRJHNX6H663AGG8B
	 AmZlpQwwzYWHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7E0C3ABC0
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174665699357.32444.13419712356708529987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3b1fe112405f4842970246bdc35555d633a06b85dc7faf8b304eebcd4160dc4
Date: Wed, 07 May 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746656993
