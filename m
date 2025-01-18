Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44E8D1632D7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737243954; cv=none; b=VgNSJsM2d0wxZFACmbvDc8IeyL5RnlQLbhvgInSHpK3kcf4n8RzvRzFyn6udMvx23hW6zFFD7oVROn36eI2xrxH0Kh+ncxlMPYyoH9PN9y8HZtHbWhVk/+lurLy8VnMj1IdQMrEoOJPNRoYtggkRbnX0kL2Wm/fQkoeJnr706/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737243954; c=relaxed/simple;
	bh=uCn31JM2mK7rCi83W9TAWdJCezPyOmxn0q2b7Mu1JjQ=;
	h=To:Subject:From:Message-Id:Date; b=u1CNVQuOd9nPQkhRnZ8UrR0MQgLcb+RMFKRqlA8LFgyURJO/UYuOjnDTiJY3fkzAMkCUXsxZXgdEXlDu2fIyHqy5HA5rIF/gkclUhh6SZq5GzIGjCEdPjA0fOCooiYZh80nxE7itmE9iHwHqNkCLmlILxaF/k7iksCqeyneFN/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mYdMhBRi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mYdMhBRi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6567C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737243953;
	bh=uCn31JM2mK7rCi83W9TAWdJCezPyOmxn0q2b7Mu1JjQ=;
	h=To:Subject:From:Date:From;
	b=mYdMhBRiijHYgO8Aq5F7/s6K5vOl7WPYm481otrz5aLdX1UpU8m6GGY/a/Mx3fZTT
	 quuPpnIwiafHXniKgRGJkSWBHezcyug1k+/cLZUjCuFp2weoDQj89m6VnwRt1Uz06j
	 jppeLmqPDQ+ufDo6cZsBKvWeCWwkw9rDfhhDsIsilKfcOX3zDc6g4i6r6wzQ0E1RNc
	 +V0lu9r4ZKGEvhOPiynpNvYTYIYUkcl0Tp0e+GI5coHOH7hVojWNF96qtXicxXRERe
	 Ss4sAJdxgpY+fGmEAXlbJuS6UoHfc3AIfvmccMhej65jhC7kR5K9cb7Nf7xV6vQX3+
	 Sr2SQ30WPS9NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A11C02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173724395358.5313.4946405670270289831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b592f3332e354c08e004600e91eaf91051f2f666118f8f21b34d9834e5c9850
Date: Sat, 18 Jan 2025 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737243953
