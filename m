Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D32424DCE5
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760776794; cv=none; b=J9MP63FgfmAqArtY4uvo+pU1uUoywjwlMoMCPlNFzbLf48wYZb6jvYW9fO+AsV0QazIKNWcIDK4JNkgZITVl8WFfzwzbBAKHJNP4bT8QJ0I3rbD9KWoFMYJE1YlO/1Cc4rE9ycWnrDTLaWXkvpZwp3HqSzOtqT/jhJF+P/7bFAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760776794; c=relaxed/simple;
	bh=G5g4iZwdO0sBnvWNFN+E3+eztTBhDpoMLGr89Tpoaps=;
	h=To:Subject:From:Message-Id:Date; b=gqfSqY0yjaMkaPXHwO00yhknd+oo6XKaAtqS74eavkZ7hu8J49fzzlG/AfFI6uVqWfNlayMI5+WgTMAgnYB3Q41T1rVegJUkj/SIPLMeA3RG34oZHAoL/nDYxb9qciKlBw30D9ci94ENRjEPNRB1A5DoSmhkKofwdJdXrInWxDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jfSpa2O0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jfSpa2O0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B53F6C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760776793;
	bh=G5g4iZwdO0sBnvWNFN+E3+eztTBhDpoMLGr89Tpoaps=;
	h=To:Subject:From:Date:From;
	b=jfSpa2O0/99ohoUF+cvKzwz4MIhlgoPkRX/+xHmWCBuYplGsq9S5G8RAaj2VxrVkR
	 wS6Fir4cXkt5HJ4dKAmYXTXT1/HOc7EzQPTXR5k58OueEWo75yvknJG5fp4+9E1VqN
	 ybFPqjc1imRREc4lakBvrP81qMgYlESbmXNRCZdTWrGKbj2vLiENbJ8S4lc2OsBq1K
	 dQChLQFxLlX3qY7Wh+jdBjy/RdrnMFnwOfjolKerhIHtYd10AtvQ0Vd7JSNQQNuyVX
	 GJDq9xpiM7WDZykGKbu5wkAX2/gYry3Y4J42h7SFY1VZeTTYkYoOsCwESRSwK0VtS9
	 GBYZcCWZdphJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C967CCD1A7
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176077679362.6683.7887244222169059534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fd601c97c703962d3bd944094431ec87cbe067c8644e5a28a4dfba75e857389
Date: Sat, 18 Oct 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760776793
