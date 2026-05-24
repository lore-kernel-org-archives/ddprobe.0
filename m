Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A1852AD35
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 20:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779655354; cv=none; b=gqFBQnnIQPqf6b2rtqv88Z5kfqvNQALUUAtJn6WUaLLPoxlnOlhqR3qdCtGdiXJprpD6ARDq8B5YOrKdQTJIeNUzb8zcjrumOnXbmhLa2zXHmVjxKsKghHW5U88lfsxgFsbjv7OPoR+h9G+j1gNurALuoXOgw2M0ZCOu0Ep5gVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779655354; c=relaxed/simple;
	bh=vjcdMsmcAhgU13gheDbyH0WKDjc0lsptVfDprX64zgY=;
	h=To:Subject:From:Message-Id:Date; b=b474Kzapm/Gfjpao/4Z8jNrIKCAXK6fmub0w3t8ygexEBYhX8Xoi6NvmTvIEFIf66aGYcMP7L9WEulXd72lsxkk0RjaaSP2pqXGkyiV+Q7P21KuFJA3SrWw2uh2vL5YlSgGiveBj272D8/QoL5vrCH3WhNm1e4gBGB8VV57dL0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ov4hfoSY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ov4hfoSY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDFD0C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 20:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779655353;
	bh=vjcdMsmcAhgU13gheDbyH0WKDjc0lsptVfDprX64zgY=;
	h=To:Subject:From:Date:From;
	b=ov4hfoSYOJAy4UKnPI3C5ttWOUx0KiqZeOhg4NQqRBGK+m3spIi7AothoZJJhlanU
	 DR9ktZHHRaQ6UVdq/iD/lZ1wf56T+QSXztpmwa5OZly9FniOvzsi3kKSMd7fmEgApt
	 R0VmnRqXTuuIdISkG7L6ZzsMH6RdU/UZUlsaipYY16TREGxLJ7jSij4PQU5xsmkSsf
	 lPZvWYHCPJigobGXqNFtJ0/jSlIEwTVqGoefHpW6viNt/rwhzYI1BVXQEuOI7Ufjdq
	 LCZ4UNXM7psGU87kAo+mS35p6fI4KBSNNByoUYGYopsIJx6595k1SdFoJaG1CzmFWX
	 MRTTOEGr7uokQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B17BECD5BAB
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 20:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177965535369.6037.1651391133878249148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 346f4efceb1d077e0c000918f71e5b0ebb6391334a7b14f7956935a91c130ef3
Date: Sun, 24 May 2026 20:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779655353
