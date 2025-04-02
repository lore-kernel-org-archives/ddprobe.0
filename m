Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4631B1DB346
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743619194; cv=none; b=t+AFbebPb00oTUCvk2DqL85+1J5bS9i8VZu3nS6v/Bg4Gs0PkXTG0Nd3HHSCvafMroIQ5/YQv+H6Wr6Ojqbh9KP72BxvlPZ7gOjdF6GzxT4C9U53RUoTdJ8Ern0Y5gLxV7ZoXUR6vQmsoD1ey2tVoMLnvikGOKbqH/M44mpRomo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743619194; c=relaxed/simple;
	bh=ASYY9QeM7rYLuZMX1ZfFdw5QqJByJ2AInS/IAL9b8Jk=;
	h=To:Subject:From:Message-Id:Date; b=HDjb93X0vhEx+tn48lGiiG3MK1MPCuxc7OS8Aqg648QTEdpe9H6kog3S6K4O9XjoUKSx8jgGkzdsHOGXmLacIAfa+QFX+HzrcKLw343s8JoQU2DY1DFJgTOkZK+soQnv0Y+BT+zVST66K3Wbbw47ttDT2KLzAgxmUmy9kR9X2Ys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bOC0zfYy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bOC0zfYy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9395C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743619193;
	bh=ASYY9QeM7rYLuZMX1ZfFdw5QqJByJ2AInS/IAL9b8Jk=;
	h=To:Subject:From:Date:From;
	b=bOC0zfYyRs/qf92smy8UDT18HnnH9cttO2UsZgC+Fq0f1d0dTQ6HaT7/PLfyYjE4S
	 wgfckm18Tq7de+HtiH1LiF4kNnT5ReVgVl0YhoV6N2dWITbiZPKti48RXp6hpkS5M4
	 2ByqlbhXlFvmHWKXzwGPeC0sBBQHhUqCTYrpPDogEFrQXxHPGzRybNksfcg/PdQp6R
	 BSa7KcRZFMJB4a9kEHntPF4qav33wi9LqMfYp7c4X908fURtDyv3zL0VtIH8Nbsblu
	 0qLuc3pRe5wPyq78bcYOf0mdnDdFOinradNJ6Qn6D3qFgjAcnUl0x6aL9V6K8uwskK
	 94amg2tSecEsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A769EC36018
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174361919367.30676.10009450537184585960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2609b97471565ae7a191f5b526e1380722ac11c0c3164217db0497014934079
Date: Wed, 02 Apr 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743619193
