Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0997C286D7E
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 11:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770204834; cv=none; b=R87xD+XLEfO8uKqh9s8AC67bAfT4slge+DGsaFwJCT5l1GhkXHmpiNwzpk2rdfkcnWCaUI+376l1q/zq+AbKVYdDgAz/z3WUoshLio0sYlvpgBnuPKSpXZKD1hLZWIKY4j+KsQ1dMPuGZZlddxsxH4YMc5QQ+ziYR3xgSw8RDcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770204834; c=relaxed/simple;
	bh=BAsTPPNhJ59NG6k6f8g640g5Cq87+Ua4wh63hYjyAOA=;
	h=To:Subject:From:Message-Id:Date; b=klB8f0b+/mU+1blc4nD6CSWHY/cOF4F1JjxTN0z5g3n6DM7nAmtoBWLRKH6cqob43/mVlAyyY0NRJNIgRVFYLs2ObduVxV7N9HQXZKxRpvoxtyep9nTbGtIqiqgrh9PZDVtjkDuXkCviWhJ2bElp1vMOGtA5prscSQNCSKsEWmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rEZKvSHD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rEZKvSHD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89DFC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 11:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770204833;
	bh=BAsTPPNhJ59NG6k6f8g640g5Cq87+Ua4wh63hYjyAOA=;
	h=To:Subject:From:Date:From;
	b=rEZKvSHDDx4h+JRr80pr8WRnj7Xb+2pfr5bhu6F3UgRPOSmbStcyaYRJZSWI2lfs+
	 sC3z9RDn4pQn8KQ3ShqgToGjKm0IgybhNE0TdM8NBG0h3cO2K72WMF/jhOuEQv/Qz2
	 g8ikqQzhUQzSaPtcT+y6eBqyi8ZcbQ9f49P+Prhy8AW3YtmohHzrZ27iCP8msTBSzS
	 /jUZz+rTxbrTDzRWrkQlymaDbZk8ncLOrlwLE4r2cxpwROPIRl5Wn+9HGyu5BQtDih
	 q12o6lhn60yeVhGUAnNkn+XsPuqi1C33WDIZZKkBpYKBOLRgqabHrSlb0nDjbtS99y
	 PZrnW1lRmBA6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94834E9538A
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 11:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177020483359.18301.5759315594150859919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c63547696f8240dd0bcb95cb1724a70976beaee9bc2a0c0aa8680bb504eb4bf1
Date: Wed, 04 Feb 2026 11:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770204833
