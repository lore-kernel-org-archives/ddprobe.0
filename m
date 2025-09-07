Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B4DB17E0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757218794; cv=none; b=GfPpQG/hCIkRjyCuJ8/Hif0YvWvzRDzlNofBJl6TcsEqz3XQwERL3ecOdOfICnqZiH8TCt4wSIGHaJt7IB9LlIrDlfLYC494S7zc4JPoyrR+paI+sCawsPcIj2Z6Gnf8nU8BkFRjUGKQdChW0QDNuqj+Nifkct58Tzgp9jyXWsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757218794; c=relaxed/simple;
	bh=7AO1I5HV7ifrOHZ2GbCMr6FpFMWhryw5T3l57EFwgyQ=;
	h=To:Subject:From:Message-Id:Date; b=Y7UgdBuZ+Q7k1AUx6ZJnaxOt7L49Pssal+9K1SGFRs1nje5z7DJarVh7Z5XsWAIJ7DrvIsPYZtIrjR7Ws/f7P6Sq172HBZ+Ar2Xe434FCtrCkxUzK5knzBWYRB51AVxGbwyjmM0Xif1Urok/0URY3+OY2fjvnJTw9RaY7jXv3Oo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M41n/yEk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M41n/yEk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB2AAC4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757218793;
	bh=7AO1I5HV7ifrOHZ2GbCMr6FpFMWhryw5T3l57EFwgyQ=;
	h=To:Subject:From:Date:From;
	b=M41n/yEkBq67udxK82JPt8+xvtg/jbXnJcleU141H2bz2iY7BFQMsIg33x0u+wQ5I
	 j/yI/5gDc4Yim6OoCXQYf/vX5VvQIV0eNmqfnIEdyO10Gb3+dUcMrKmqTzoC5SL58G
	 qhO0tPNGi2jPu1HfF3tG7l7kOdJqds1lG/+PhsNQUiGm2nCr9/E4FF6M2r/ETLDI0e
	 ca9N8yfE5VkX0AmO6cq+p+SqEMNcDV2qUKRA5jxp9JgC7BALCpS0V8Hi8JKaXa5tm5
	 i1H1DgbpEEvk6TNNQQgIpUXEyC59S2tFkK2UEWyY/t9F//Z1dXcMwRB/cgbyll7dhP
	 NTxtvnc/hmuVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9759DCA1013
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175721879358.27728.1393513044303801881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0b4b34888d4571d155734d2d62d6a9a5cdccef678f9cfa967ae34fc669b0241
Date: Sun, 07 Sep 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757218793
