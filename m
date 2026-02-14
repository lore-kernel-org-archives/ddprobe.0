Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 531892877C3
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 04:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771044294; cv=none; b=RZdGowRFSYWuNAy4w3xCrKTJ0rz9x7VcfofE9xlci9S0CvUO3UV23mTT82AmPmVuA5Q4Y24FMxugJIV4gDhXK8535pnXQHr0fh1uAepCbE9LZTk7Xn6fAr0XDtfDDflE0r0pCs9hIuqO7gM+oZ9YRba5bANpInFkG+8VE9PUvK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771044294; c=relaxed/simple;
	bh=jwQsIx8u24xlyzpcTDXofj2UERdKoCnwFI0WKAjoRYE=;
	h=To:Subject:From:Message-Id:Date; b=OpnthJEd6MkNBARknQI0j0lUHlIAa+HMrI7/etR4Y7fuXJ5K2hrcCrBqwE0CqZz7EMmIYNfmsmOEJs0HJVmzWcoS5FKfsA/gYn/DNbY1hr+GM2f9lPLDDXYBMYD7tN8wOOCOTy4jhzKvfo5jG/dj9Aj7KMdSun7KoWmTRlnaFxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rRQHrMNz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rRQHrMNz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE670C19421
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 04:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771044293;
	bh=jwQsIx8u24xlyzpcTDXofj2UERdKoCnwFI0WKAjoRYE=;
	h=To:Subject:From:Date:From;
	b=rRQHrMNztBEbRkHmgPicOvUd+SM2REgwnC9CFq9fAE3MYe55LUNLwM1zh5KLm+Ztg
	 oDoXVClgiOf1GhgHTWWF+5yeKv/b0BwOVqV1h+k2DSZH7PEHMuTlWGUjyjVOZArUL7
	 hdBDS2i0ehrLpfp3ckg2tNUj6fc3SXtBkqhVFFQdV4gmpwgmv4Ik/z91kxQdb8KBYe
	 f0Ohs6zoCYs13czsIOmH3UiphM012v2veWjZwd+gKDcZbvUWpfs20hiBVQM8I4Fpbq
	 PWtWS7ap0NQLWHjX3mtXQGV5Fqey1aS8n9k17Nypa2BwhYwZ6mrCEEWIQnqgmhZVos
	 xNlTY0Mmm9BLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA64AEF99E1
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 04:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177104429365.19630.15600497749414749830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbaef6d86e08bd42619a21a1cad2af5b3897cc54c6386774c2341bb602539f79
Date: Sat, 14 Feb 2026 04:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771044293
