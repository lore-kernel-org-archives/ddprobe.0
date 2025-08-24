Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 265521D5CC9
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756075794; cv=none; b=qorP80Ug9MIHZif0gGoH41jm+s41IH4cNekalF2HFne/kQwZl0UXQYSRmhz6gy0y3uOOdhQXqwymlSjasXn7E1EsbU63np36IhIxb9ix+nnGjTlmRYorHS734w1sH0OgRhGCKPtgtpLHEvDTJvyq1o1NrKoc2YzlAi7IRhczp9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756075794; c=relaxed/simple;
	bh=pbIOyOHqMmvZsiT5D7vWSYTF3hp41ykJwnep6weNW94=;
	h=To:Subject:From:Message-Id:Date; b=QTE4ZlK708ReTdZ8TaCDZshCAAxjKVhdL0c0offGmPX9EpwAUGXgqcBZemGsVIGA2ax05I4LY9qiEeBwceiXU+mIvzDjBmgxBlSjNeyzJjGCtKx1D5k5+YM8C2pouRgn5boAfIpEoY302uBNpD9P377zDaSZFFPFBfMggJNbDm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oFnVj86I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oFnVj86I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C53C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756075793;
	bh=pbIOyOHqMmvZsiT5D7vWSYTF3hp41ykJwnep6weNW94=;
	h=To:Subject:From:Date:From;
	b=oFnVj86Icbn9s1yRKR90h/wG76PWNYv3q1bMUsk2Z3nXpkRq5L8q6+j1ZNQuGOn7i
	 yfPElDGmyQ3RbujWCpIGmpUTwCW5uXfR5AoATj7uor/GFjiRE1qBxFMyGSkZwqCyZk
	 XGxMqTUxG7T/On6HhgetvwRSnlcZyZKn0/Y5DygYkSQNCATTxsJLlukzT4WrrFgl4z
	 i/WBSnrmkIV6IcehCyfFv5yPtyPtlr13Ugvzbb9cK+Z8VGd/0UpIz/MbXJ4AMdCbtZ
	 qjGmEk6OevNBSggK9CmLdiZRp/5zdAEYMkckNUSMloOHx+X2S4xqwCiNJcMFWl7SQb
	 /FZOk4387v2CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916FCCA0FE1
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175607579357.16971.10827057289595895691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4aeffb1a83afbf48648f950c22ae07baf654618b5f921da8b2937d766c5a01ba
Date: Sun, 24 Aug 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756075793
