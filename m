Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4055F19004E
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754462995; cv=none; b=IHLj5b1RT/fDsvCKHl2AQYd69ZOiaAH9b3ixnql/NPGKxxnf6TwIAckqboMewVrP1HZTjcxd1y50nhPfYm/DfjnLFS5AGkdf9Pf26O0D+u+0pj3tR0o0XhCKVtI52Eop+LcEmBUowjjG/wyGf0T35PCOVLZJeJfT4PXBqCpxcwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754462995; c=relaxed/simple;
	bh=NkH0BbQTsTk8d4oIYv9sG+TTqzwJsbxk1xJJyfTCkdU=;
	h=To:Subject:From:Message-Id:Date; b=BDTVU0Q7/rHP1YCA7aRhOuTCo2Jk35riX0Xojp0GKzoxTW/kA1iK8iMctN+Iir/11d1FcDz6nW3u2hgMrJHg9GqITjyer3xmlNRnxu25Pr2tppC+WH8N4ELS1NlgaQqUQxyPBN0bAd5sKaQ5uHCClf4D2DUmA6m+FqExQ6dn6j4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=asVtVoaL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="asVtVoaL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2432C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754462993;
	bh=NkH0BbQTsTk8d4oIYv9sG+TTqzwJsbxk1xJJyfTCkdU=;
	h=To:Subject:From:Date:From;
	b=asVtVoaLciEU9UoQDynN54sb/pyhf0XhA+q7Ylp4VG/jQqLFOd1qXfNUzIxjcoJEb
	 LcJt2n8wxJSrkoBddwQRjPu7ziLa6C5ZuWENxmwWZllUjSCcSffThIRTgRVYO8+mci
	 M5zgrRqzYKr379Pd31175/+CQ7TktMnt/6rGNm6J4oa7QTU9FUcRFdb9fRPXOeo/qw
	 ikQcckPAdcUtmF/tDaLHphCt4g/ps38z0BbVxOmwYr6wnD5KI4t/dgEI17omVWBBii
	 z+NcTBAsuAD3rmNGpFD7C0GcYpoS8kg2OeQGi5vDwH5Dk8uXaVSJkqh6S8r63nU3Yh
	 obpVqyU7STA+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90ED6C87FD1
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175446299357.844.18264484714616529895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a85b1f8cba7b4a6874291b3effb1d42679905e9e1fd47e1b7a864f96c9b75d83
Date: Wed, 06 Aug 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754462993
