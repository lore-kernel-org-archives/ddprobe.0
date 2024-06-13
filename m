Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C3F013E03A
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 09:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718270903; cv=none; b=KInKoULddyJ8IvtljFpfojAXmQ1uxJPcFHJpia0yK9sLmo02tV+8Dt4/FcSD81TmQ/4+swCs5OiycK7iIt8eTRtSAoMvzOX8SqsodDITQs3JrzQHSykKGLOivuhwQVhqIyDVOITS6LmL3TtMol4GYjDt5fwp8X7yYKjrR6fVUyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718270903; c=relaxed/simple;
	bh=Ycw5v1OJv9KEFaEuRfoEF1ktVlkzvBMCBy55+xjUMhU=;
	h=To:Subject:From:Message-Id:Date; b=qyD2zPAbz9MfBtaBPpyduNnZef9NAA6sULSkNiSuoAewEuYRTMnjIPln5Q4oMOFzXvQ7Zf74TsY1fqudG1lLYgXz370O9Ra8bW2ZFby2O1Bz0X91A/JLaEtPqxB5AYv5d8XwQUukA2CXuDDoyWUn01A60Zkl85SRyYwDQvFUqFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f4wRHeZ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f4wRHeZ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E53EEC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 09:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718270902;
	bh=Ycw5v1OJv9KEFaEuRfoEF1ktVlkzvBMCBy55+xjUMhU=;
	h=To:Subject:From:Date:From;
	b=f4wRHeZ0ams0y4AMedCi42JCSI60d+8tVoC8hia4HYtJvRuMVZQOQdp8D/GqpO4Ui
	 l31QRTLtzLsAvije47L5iF2YCuen6yJy7hkhkgdgr5n00w2zL6bTHZIlIo5OaKhR0D
	 tOU0SXIkhTBfLsu8NxWDjOtR8rp93HyQNRvc/AUashvLA8UPrXMAalikpHpdpn4lD0
	 M6PMwZ3WkamNoBmG8oLw8rbVzvlmeMTkXZbpG+wuSAYavQeH4VNqmtHmHhBfS92nGT
	 7bB6CaGc7O8CxkGbhJjrhAsqZUghblQ3ly2XRk8OE6Hdk24uv99xv3lPqRpExwjOHw
	 T9j42RDIhhHxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB851C27C75
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 09:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171827090281.7552.8638775313032966664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 508644edd2d55d4151f823b8d09d53874266139103d335b9a698af4ba4eb7e47
Date: Thu, 13 Jun 2024 09:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718270902
