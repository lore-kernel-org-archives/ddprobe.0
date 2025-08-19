Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13FD410F1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755621594; cv=none; b=m3fI8pqqGzzJBi4bBvIJy6NYOBdtfLo3iU1R8ntPX0IBnH8R3YRK42op4wFGeH8h08QwQ+tV/uEiYO+2TE+IdhjJ6KuLmj8JcyFJFljNVnk3rcqFbRwpyQxJa8Hg53tGofpbORKzh0YD5ARizvEv7fZLuqyuGIk14c0+YSjLtqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755621594; c=relaxed/simple;
	bh=8mXDY46dj6mXEHue9tKGqoamEyoJmtWMyT1J8+v4PaE=;
	h=To:Subject:From:Message-Id:Date; b=UFKOw/CDXW16mV7Hd2MF75TVSJfUweqlODVauIhPp2h/y9v1mCXetelJqakFEKFhA/4G2V+OX+7pcHL7ANTIC44NcfswidC/r70FtobPbPvusKGBwKp/YvHOTWl0vNuMbdNAdPyM+s/35F5kpKp7V3qTtldI9NY9znjAtMmCzP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m9UCKnry; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m9UCKnry"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FEAC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755621593;
	bh=8mXDY46dj6mXEHue9tKGqoamEyoJmtWMyT1J8+v4PaE=;
	h=To:Subject:From:Date:From;
	b=m9UCKnryXsKkfQhMZSFADlTKmVzdmhpxYA9BMMunRwSNoGbncu1fiQh2CkbTB8Fjn
	 x8hWORzpxAPC/JNaZYqWuIMXLT9oTX1qmzMNZX01I7r/+h82jkTfctBrsg2zwD5+6p
	 KFMnN9vW9ZzKuvxTtgO1rglY3lRVW4gHrrYUguuSZDRwW4wdlXkjeklE0uXyg1WZv+
	 BcU3WuwWSDef8eU270sW+YivnFra9wZpoB5qKwU8orDstKejxOyN6BlTkD5yRcl15W
	 tH93ATNEFdKBXnFrQ16pEtgTLvnVGpSK48M4wtEVtbraqiIWVrIEdcXO0dSRExpZev
	 SIBvUok6R3hpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90792CA0EE6
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175562159358.26465.967959849167927676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5903d91a4454adf79b52c8ee06948f75969636d8c348dace615469b6f0d18f6b
Date: Tue, 19 Aug 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755621593
