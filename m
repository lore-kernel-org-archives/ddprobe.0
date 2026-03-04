Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1569F1F8AC5
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 01:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772589294; cv=none; b=RQGK9YJelDpo27WLYqfzkaCVjuCvNcxL+V5zDOhN2OHBvLNoRQLnYnXI+lUSi8VYOi+lqZwv6t6t4z4WD49tpD7lRxMmitfEYdZGPaKjzfpxouCZ/aTYCkwL4LVoT8j1HavFswN+j7hBiob1Tt7Z2ZSYw8YnYc3Rn7qQg2qzmgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772589294; c=relaxed/simple;
	bh=PicJOd2htVcwoWum/400nIm6rbpagDq23LZcP3eRZp0=;
	h=To:Subject:From:Message-Id:Date; b=F4tSQIsie9AAbU7UArG/0sQkn4hLlChtTkizue5t7/UkugqmibaE3Du7VjgV+SyHuRKuU4f8LkvlT9sWo7PcAU0cHovuS9vmHG7xeMCcOMFglCfSP5Qv7Bu43xDeCjXtEvHXztkZki27En8zjZFpuvOAu08/bKQaexhJDVeGXtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tii/eOdx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tii/eOdx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFE47C116C6
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 01:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772589293;
	bh=PicJOd2htVcwoWum/400nIm6rbpagDq23LZcP3eRZp0=;
	h=To:Subject:From:Date:From;
	b=tii/eOdxKpF5VDApIqYd2RIDM5zXrQgkn1B44Y4TnOVULYSJEOm1P/4kImX5nujtM
	 yQhdfHJOsv7ki+ygoIG5aqAFfGhX4L77MBHaxUtbSx/AOXIEN3I6PsPJbJGx+ydiof
	 sKDmnrQNQwYExg7SHKBxoHLxviSZYyWskhFkgHbpuvJA0xcgqTjqiNeOE6qIW5J/aF
	 0i3gvVMpJfTNoZAOJJ19o1f/G0CAQSaMs6+6W+ieBlNfa8n5FYpOQCV8Va/Q5F+Oa5
	 7KqOjC0PeYvgowTx2gwEd2n3c9wz/e9+1LfOgrvO0LWICD8HsNAJOU8nf61EKBW1rh
	 KXrThw3ca99Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B6CEDEC01
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 01:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177258929361.15840.1226293829017982942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c58b485ceebda21b46dc4767b78891e9369b9c36c7f5d5b8e6939edaee8a18a3
Date: Wed, 04 Mar 2026 01:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772589293
