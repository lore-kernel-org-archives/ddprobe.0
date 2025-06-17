Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32EA428B513
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750143594; cv=none; b=p7Kyh2xGBf0K2LlCIc5zQDq4SUHnWceEJ+TjR7zPmdyJNhMvAT7KwScVB2RvDOQlAAeuKBRc84HCUrmRiXmDbTfsWNl+epo5C88di/Yt8yspfCy0WH5C4BdiYYZ2iA5TlnyFzqQK2EwD07Wiq9pab0p4lPCb4l2T+DO7h26x3Vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750143594; c=relaxed/simple;
	bh=dUiz6oQ1WBpMIJT/YbGuyX9OECKZwixcPXDxHl0FMjA=;
	h=To:Subject:From:Message-Id:Date; b=H7GpXztkiK6HsetYiM7lHsWIysaGMhzazLtswy+5vjtNsjKRDm37YFFvVwF8RIG/gf5C2UXQHpBRM8AqZV28x8foJ2AVSh4knhv7RYjeL1XWLgKCyUqXn7/kwnobiUGN3T3R/2MOzT8ewz1sNLK8YaFFcb2B2ogTLzRJhFhlHh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b8nNnSVR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b8nNnSVR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3369C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750143593;
	bh=dUiz6oQ1WBpMIJT/YbGuyX9OECKZwixcPXDxHl0FMjA=;
	h=To:Subject:From:Date:From;
	b=b8nNnSVRLV8+048EYDL42N44AXLvRLrXkcVjfPri5Ab/UfZXBOlyl0gq5GmTO2JUT
	 46VZSBlHn3MdxTbX+XRoKWyIrOMiyehAXe73p0Tuy9Urphd9A+bi0ZI0semBo/6kfY
	 lbFmc/isU1dkdlA4apjMgFwsfBh6jNbwYQYmIg+mKk/Xb6I1HwOnZl7TJyd0caWHld
	 +knmkngFMUeTRzcWrjsCrfA4qLNHLl4FT7WGt4ZcJu3FYfT9pjqeIpT/UdwvxL0ndk
	 u0OrTsczpe3jNdVOYhVyBg5BpfPNCkG8IeXoECXjwBqbii4mEazXl4Gny75Z5I16H4
	 XyjSQQG+HEpOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8CBC7114A
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175014359357.1957.10227982588136747262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f002a97bc58e647a2810a5e1936db8a8b86e85faf4338230310dad46d1a36a07
Date: Tue, 17 Jun 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750143593
