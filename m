Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FBE8158DC4
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730589354; cv=none; b=eANEaaFTLbP1jNnYicm3izrXR643B1ZVpBOASNQ5jwSkHqER5Eb1kj6Q+EN6sRQtExA5vlZKQ4JGINq2bEvlU6vO7qu6NThQ7COOsUsGoq3Qs6QlDZSgjExTox95zRXvd1/zRz0YuviEgiLfU8sqN5h5BALhRyJRf9Ia4gOqprA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730589354; c=relaxed/simple;
	bh=CfIsuRsrDycnWwv/Kn/QFndtmOpL9BMfWrDdQeGu4Os=;
	h=To:Subject:From:Message-Id:Date; b=WGjyZgcITxDUbCtWP32f7HyQoyTm/8G5VtrkOC4nvlERahm7LQUdZFdSI+opUZC81JZ0tyG2LLjsbJFwFWM3U4TsBKzAsf9J47Pnc52+EnM4tbzn5ogHJ5i2XYX0VGABmLWUmdL8Y0jWDuit45IzMMdnGs8uhIcNpMnwA/ZILO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gVvT/O/2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gVvT/O/2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A81C4CEC3
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730589353;
	bh=CfIsuRsrDycnWwv/Kn/QFndtmOpL9BMfWrDdQeGu4Os=;
	h=To:Subject:From:Date:From;
	b=gVvT/O/2TkQgtPM/yRP64pVBZa/5id7K0cj8yLFF6QPTU3iOCxoQlDF1w4AmQowZf
	 Ao9135OUsBYq4vvNchz1E4AMr5VvJckE+UU+RkgrLrUyFOAbY3tQ47w/q6WRJ+TvFb
	 KHFT7lPPJtL6i11uJIwBo0FTMjPwEMvkumuceXv4pRnZawiLFeKO0FvEnsTqHrZacH
	 S3x7nMj5xicJ5De7qckCCJIG4CSw9+wDeeMLVJGDjE1o60BhdTz3nJaL/fWkoV3iLf
	 y4trqnxblGdq90vGxl77NY1rY3C7PWHlQ+usAjNKiHE49uii9l1k4Rw3l9X3g95aea
	 Zbh8IH67s6Fhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952E4E67816
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173058935359.1184.16030186759249575085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 705be6480a2f124b3b43176584fc0f897bf2da403b69d2203759791f84e65f98
Date: Sat, 02 Nov 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730589353
