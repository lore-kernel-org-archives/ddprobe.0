Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13F07156F4A
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752137394; cv=none; b=PZt7/wWykqvCi5Wx2PXlxP5DR0m64VC1Twv8/fKiyCTCd+WE7Za2sUYhtLkW/Nrf9frKSwdgBhNO/88HxBzhgpwwdArTUKhKJYyrVyd6RCOONUrK4k4rKxwyUAhaDehdGUuuTv8OLUs/wg8wZdFHCGrcLCy+WbGuvOPKXcCPArQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752137394; c=relaxed/simple;
	bh=9Ze71BEpuNzPT5xa2RvW12NVjlJqg8bL5PxeiGh+JAM=;
	h=To:Subject:From:Message-Id:Date; b=OKXhg/GPHKGn97QCEWxa1ShQljqh8HqBhX1BvwF7H55soUZYR33zJTw3zr9hmU8MwQrHCy5h5ws3o0EjtBF9+l9nqOPPXxESAlfSDuaCiUM9VaDr9RGHNiHfU4HW7vEJwlXJ6orfNrWUoNQNgAf8kzKnhoxpx4mXoXVhHn0S8kE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AZf01TGn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AZf01TGn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11B7C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752137393;
	bh=9Ze71BEpuNzPT5xa2RvW12NVjlJqg8bL5PxeiGh+JAM=;
	h=To:Subject:From:Date:From;
	b=AZf01TGnYY1EzgEweBtxngqqTqPNRGTD+Vypd5MrrtYrkUFMh7n5rrcmNUgxH+z87
	 tgDQF6wi/eppgrQrGffQgY4Lv5TXYApzwLcgOvd/5IB6i6sWS+Aq8OhWsFyotbRoLZ
	 TuP7KxPXNIS/CC7YxIISRbqGOTYZ+C4OlC7GcyVuOh9xSg4PigxqllYrW81bBDHpEn
	 aiY3c+tFCeD0tedqTRVCIn7wcSliSUwJzvWIcm/U9dhJoE3eUILD1PM3Dtg5V+ahvM
	 eygrCxmdUE91DaADOm5FMut3Rgi0pjz8oPAVqKM/5PbYYRfeyyFHyeZK/G8x5df9g1
	 xA/WZFniqQamA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA97C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175213739357.25246.5734468468836866262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e766d24a6dbb9b75441d2f0191fb2733fcb74484687d880e27318bd813fb88c
Date: Thu, 10 Jul 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752137393
