Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319A117548
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734095754; cv=none; b=FLJIfN8U4MZXz9/vxNX2WchnKBT991XMt9SyOufGwIIHm6NW3KSiOCSuB3SDcYPIN37uxXDGeskw/hYKXMDKVrZ+MKMaAT8dxacVuPL/FmmM6DQWC1wG1nrNUJtfeH6eaGsR2Z+pLp9oWvLLa6RTAerYh1avRVhKQlMbeD57Wwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734095754; c=relaxed/simple;
	bh=qnfYyB8wyx+GX1gC0h8sGdlU58vxZPpLbhYS0zbZ48U=;
	h=To:Subject:From:Message-Id:Date; b=ib9CyEbNSUAojhlh5gzrbCesl46Rhgszlkd3Q0LVisMxaYDNZGvVTZwm221FlL6FXmTKCgUEoQBFdWZuZGZ6iY1x76QXdyYVxR8/yXwhQttNLfwtiYVE6WKg7nIdltQopZ+S66a5GCF40RpIbT5ipgc0iG9rmdRYUUTgZCTX/KI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WTWhJVK7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WTWhJVK7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA440C4CED0
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734095753;
	bh=qnfYyB8wyx+GX1gC0h8sGdlU58vxZPpLbhYS0zbZ48U=;
	h=To:Subject:From:Date:From;
	b=WTWhJVK7QGI+RfJ+Bi7msu7cVR0Ru07SuObq2HIrBLE1jQbm/H2LaDkXIAUgl5ag2
	 tPGaxThvOgNCrU8NRN/8JDIdvu2u7JpA5rGiuNjkZSM6Xhi89RW2usJ2G67eI3QY7g
	 +czSpg3JUsd2SNk0MI/5pvbziI2gck/z/+jB7shy2k4so+AeoNAH3N4gq2h6HezpRg
	 CIgrbyrJsgjwLq/XA38gVL2vzjR8MUVadqOeof/ENTTDq34zusJWN1+B4gHXYwuzdw
	 2i5ULLcv2aNeBx5wfSTAEdwz5iFG13gLp8nWjS6ecdJiWxBNjLCvnzKat5XnpoIYT5
	 pdoZ1792r45Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C8AE7717D
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173409575362.12906.11499666986316141075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23e87bd102c3f6de5f43622f874ae76c7679044ae49c381c01b88e128f734819
Date: Fri, 13 Dec 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734095753
