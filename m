Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BFD51C69D
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745062194; cv=none; b=IEby0N6Y7A8TgLnbvoyEiclm8uwsaB8d34uw26JOY9tLhV5hQ9SxyFypA1rsTMMxxF3HOfIrakiC0qDnXSzgGICLb0/FfiYZEIUsW8LGlc5K9Q6WUO7+BH42alUiDF4hlPQWQV/rGbj6bHaPZvTfgG0PI3em+l3mlpqsGpe5QDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745062194; c=relaxed/simple;
	bh=hddbK0RGDCegXEyk0TqUiE5MVbuR2wkG9lOpJmTpnIM=;
	h=To:Subject:From:Message-Id:Date; b=I4mcZwk5lN7zElwy3mJz+RpYxO11H5Shst2NsurEB2c7/GmsRwdwVC8zbEeGxpdFk7iWjDGE9tfYXVmi//6+7Tb2bt9fabbQRnj9EPnix35MbhlNFUlgsl6Gu0Xt40WA+0tASuGWBpm9OtrbSJ/J+OqLq0BulPX8SfHuvXjjt90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XPM7KAPH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XPM7KAPH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3C0FC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745062193;
	bh=hddbK0RGDCegXEyk0TqUiE5MVbuR2wkG9lOpJmTpnIM=;
	h=To:Subject:From:Date:From;
	b=XPM7KAPHsMNbAwTgUmW9foyLelReyRIXX372kext7tAgdI9LvD5G+obF/yiLByj+R
	 cR4WCB+PeGNihedeP01y56g8qXDi4O3i/Tvp2JTZz85ZtpGXq25TE0zOMxJHn2sMaV
	 uAxHYglanzwFBdBL2S7xjT8w8+3b8n9ZlmaACsfrYNbUCtTmk2p3MPKxJFyEsC6GJq
	 MheT8Hs/3tQPvSsW3+Vg+FfSvdqz7OOA8nMbmt3I9WvkwczIbiksDKyDTo41l6lQHZ
	 0AbwM3xpdN4YBSR4PX/Y8s2DwWlMtd9YQZNhIalrhhJamiMa5t0ZNssaFseOJl78Ga
	 G1l2pdT9Iqq2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B8E1C369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174506219359.12835.12691223705386673778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9c21c6c84d4cb6563e511a3a5fc79e154d6ecc30caa227ac14a20cbea54d990
Date: Sat, 19 Apr 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745062193
