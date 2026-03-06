Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06D7637FF5F
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 23:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772840094; cv=none; b=fgJHxTaw6D1vMrww3oOrM2QpUwu/0MMOfst/sIGRPtFx7JXIboHshcE356ckyLv7QmriPQVgk1pjUMQyabTXCL/2XJoTJ05qYo0e1NEROdtn0zIzROH8RHWXY4Ps7oxrK6+SytmPXNKxsALxg97v1J2bqrhQ9j2VbocmGf58eP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772840094; c=relaxed/simple;
	bh=4/nzNCWTyXOhusG1L3fCMqTSzxpGaFK+aBrO6wPwLfc=;
	h=To:Subject:From:Message-Id:Date; b=aqAWk/WHI00qOoQzOzO6lVSQXHWqpOj9ECV4JXsPpANBBpSaqnZWRciuYYUTBVSoramv8xd1pQ4klHdzW8OalAVHjlKZq05PAsSa/DAfwd4weKLY62OaLH2aGF1ThU9EKRDe44DVhgE75ibYPGYoBIfsdFrFOEi2mgpNnClag14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cpkriIEf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cpkriIEf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA7E5C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 23:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772840093;
	bh=4/nzNCWTyXOhusG1L3fCMqTSzxpGaFK+aBrO6wPwLfc=;
	h=To:Subject:From:Date:From;
	b=cpkriIEfrVUHVWFkyWgpoyJVi3f8fQ+IXARzYRxDu8lJsbya0UU8FzsaZBOO7AsV9
	 m5AEiPg+aYFtw3rqtQf3A8reql5Zd+gdn7KXTdUSy8UsdU52a/3EfxUVtik71cpl62
	 pB25DErVhdSC05GIrsEoco8+kwWXpvjQhZwp7I7X6SjM4+kYvWPXe90ajMfYqXGmRT
	 Oo4KMg5qyE3MQJzkfQwAd7okTWAUWs/mWQvT3u1tYk0ynUIAUzmhvSC/CoiY39KJD3
	 EQ/IQazUtCaWdI2cajRLV36KPoM3ZfpI4tJtM8QrO12MeYdfZjTSNwJMc5FFvJHb6B
	 AyXvKsKHD7Jug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93533FC9EC4
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 23:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177284009359.17943.5195338072037472426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50964e0e39db10e87970314707b6b4aa64eaeb07a63ef7744410738a58d57bf4
Date: Fri, 06 Mar 2026 23:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772840093
