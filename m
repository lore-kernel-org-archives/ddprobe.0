Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30205280CD6
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748438994; cv=none; b=kPswE2BUSvtchqkxNHLcYIPI5NVxhdUOS5GryvJEVtwOtHKncSkzbSry6xkRlW8/QQSyParxUgWGevPT5KoCBVgN4+0TXHpyRu9fZkBoQqMN+frE2plHGw5xtg6oMo/ioLzFjTBZaio/OhgOuyc4BWNXwV/LlP4UMWRPttemXl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748438994; c=relaxed/simple;
	bh=ROcYK8z+JC8n9vFTS+zId3c5YbK+4m9DJ54YucJEcWM=;
	h=To:Subject:From:Message-Id:Date; b=QpPEYP26sL7J+38/8+rLec/dpSJFCKSkBxXmd3xgHEg3oBFJT4o/bMVPcUF8UrHjylHPqpyG68qkLeUk4bm5cgWAnzmpxawTp25vDG/skEZXp/Xq3W7wbALs0y/5TAEkox3IjDlijikS9JpAzAOrd5kIfk+mo6apcCR5OKFVjQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KkUGVbSN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KkUGVbSN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C26C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748438993;
	bh=ROcYK8z+JC8n9vFTS+zId3c5YbK+4m9DJ54YucJEcWM=;
	h=To:Subject:From:Date:From;
	b=KkUGVbSNIULeyQmiIDIChPxrRlosaOAy7WPYPJVtlKfxjWQvgI/trS0xEIYAPZXcc
	 R6p5vSnPxVkRWbf0atypDqzlugZcjoyQAKY3UeCFykJNuFACvaj6TZudKoGPuIfR0h
	 hbhDc3ma91VkWg11UBi9Ls+pVSjxybxE6Dwi5dc9nOs+gnZ2rLn0mFw4lzP4wyOabC
	 aWX9faHjLzqdI0dBe8GE6+sDDhP8qBEWcVCkM7iyKGcpkOX4Odbptsyhr5DM7pQQR7
	 ZUKdeTomLGd3AC7JcFbO4ACwxZVueL2VGX3j9sIIcqqSg67AE843Kp0QHumKspRvbl
	 Mq8u32sLBvgTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF2CC5AD49
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174843899358.29452.407179308583422576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f445ab7c4d945d83523c76fe0e3bb7b3ee5a2e9859e84281be7aa0853f8cb64
Date: Wed, 28 May 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748438993
