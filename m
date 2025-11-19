Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DB2929D26D
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 15:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763565714; cv=none; b=jodA3DSQRtNhfmCR9yVBJAlIN74RSe14ACk7PGcBZhDSZ4fXx1o49QRhmfXU7+GRonB77gG9yvPhVl995J9pt7zJT0qDyeZAi6N0aYW+WmK8JbJ3iCyitlNSlb1M7N+eieRFmqkuQ1d2C0G+NXwd/TZu8OKDHnlLGv84tekU+D8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763565714; c=relaxed/simple;
	bh=O8LzSGlinxFlpUmEsUbglHOQB4N7HDciq7p7ZEmBre8=;
	h=To:Subject:From:Message-Id:Date; b=iND/fp3L/B3nUWTCLHmyiNc1Zs3Cl6f4tvLu5zkix/IJa63FM4kigIBCpITfCPoAeh7Rd9uXxvHpXh4aVscSwEdez6XECT2+qLTKy2s+V5R6i9JldIsJ7seBQunZP4C521mMZcSZIpbFD4+fwXWLm/JGePcfwVhe1Srgy4XmTJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VepiEdMq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VepiEdMq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6A7AC19422
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 15:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763565713;
	bh=O8LzSGlinxFlpUmEsUbglHOQB4N7HDciq7p7ZEmBre8=;
	h=To:Subject:From:Date:From;
	b=VepiEdMqy6NshpxKOqxF9qaWlAF14LusNPOsZUT6gl/8pKb2y2hH6AA9Ic+dkkzgU
	 2sCrkbrTtIGrlWi1jU2iyor2DwOCWYwidSlfLiFQgFk99iyFwR9It5NdDDYUTwOgF/
	 //xmyMT2ZxGxwJglQHForwm4XXgM85OzlJIJq0uJRi85K3hFJcGZQvsg3y9BnrMlQy
	 4b3HMANRrWNkfCoD5aYqDSVFzAYWvLBl2aKkY+XhhE9+sFGdDnjyBiTjCFnJxXB+Ex
	 outewcUOROSEBlecKzAAbuccKt4fCNC2LeKTWH0rzRSgZhK7ZNX7n2Z3ZdGTdcjkm3
	 8gt05qcdKI8Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96110CF34D9
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 15:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176356571359.17192.18161123839679067617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b64dab806d306f9d0e5c0f6302af993f4567a7002956d6269468e9e6bf303dd
Date: Wed, 19 Nov 2025 15:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763565713
