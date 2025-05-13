Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D8AA1CA81
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747150794; cv=none; b=qDVjskfQhnN9CPoxgrdZdjDVsJ8OP6J9O898TUgAWi88Elm+zspPGeiQFeirtppG0OekpUzizeVwwqwrEhpJQLKH7U8caZpgFTtwP+WpAFsEDo3e5G2hxo1KkkOtLnI0zesSUk09Qa8ZH82+jBs3/HafiblyZVPEyY78CdiKEbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747150794; c=relaxed/simple;
	bh=RvV+Ox9c4sX93rXXQYCOg+3XsLPZfET4Kv6bgxGUSTw=;
	h=To:Subject:From:Message-Id:Date; b=bESDL66quoWomI8b5a3qbOCWezYdDV8NOEpdwf4vZYM4tBxD0ZzBznsXUvF3W69umWd7OTKwWBw8p4LBSOuvXRDQEGNE+GfgxSWe1BC37a00AyJj/eDXhPuH6TKwfo/tsiUuoCSnuQY8Ln0BOxXSZIkS9ettTiu+ij9wHCsrT5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mWp1p5fd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mWp1p5fd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2200C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747150793;
	bh=RvV+Ox9c4sX93rXXQYCOg+3XsLPZfET4Kv6bgxGUSTw=;
	h=To:Subject:From:Date:From;
	b=mWp1p5fdJoKXF+d+lZpq2xR+o+liz7WCtAF5PnvL7QOea/f7JfZqUvIffLSc7cu04
	 l+0PHPEBVyqGo778RGGRrnWUlO3eSVfiz0YtmoG9l/My9+CrLz9tGzsTwYcaWUVDba
	 ctFUl6pZZJ4GmxQ/IUuHKwyNQf1assmFMgKGqB+DavPQr+5QUC3jfhAuh31rh+cDxL
	 XZCkzqFMvfrLv00QOycoITweAyaZo17B0rensRsl8htVu95rt40zF5mvzpO4m3ONFp
	 iikImmDsM3Gk/cX1biuFtfiI6Oh9dQXJdgzr8wD29dukyOt3sJpOQxoAYO9ixLG27h
	 8tIogonTAuluA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE1FC3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174715079357.32613.7858212245728421170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd4fded99dfde900d3a49abdc85c8ae50711e0fdb120d23acf7d5aa5bf4d6611
Date: Tue, 13 May 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747150793
