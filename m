Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 442FA17BCE
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751748594; cv=none; b=gvcrg7hDg+7TuDRWRV7USVXXTDgZhDA6Yn3MndIZBBk/RmfzO/t3ywDTd11WMAWpC+ETKvVnKRprN2nYV0Er9CsfW5a+EueWLgF1/0eOu5oFMWGR4Rp+oeImsc/X/eMyggY62fubzXH2etQICx2Y7JmmuKiMn7QNyl5LXMz268A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751748594; c=relaxed/simple;
	bh=H8Q/hgKE8ACk3IgmpuBm5L019rGEfqYppeichPpEogQ=;
	h=To:Subject:From:Message-Id:Date; b=g8NQDfFXFQYAgn3fVGG4a1tS3MHJ/x+02wO+n0Xa7tTkxYPl7jhKGKgUaT9FS21VDloLVb7ZHwEY0I2q9AcPv1xafQ8bjMo4+L3px8hIQnjUDCJVov7pc+ZUQYgdr+0UPcizegdlud9f4WyXqMzruXRgkHqCRB2bTo9f0hlWcDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WiwAR9nl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WiwAR9nl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8175C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751748593;
	bh=H8Q/hgKE8ACk3IgmpuBm5L019rGEfqYppeichPpEogQ=;
	h=To:Subject:From:Date:From;
	b=WiwAR9nlwC33UeIiX9Hr8I07gCsiMTbla//HXK2Oh9jod9HFI+aDJRrJD0fpEcku6
	 Lm9gC3TiY0He8Tk/1Ar6val8mUNZxY8mZQydxAgPIhB55SfRjwHRfOtmIrc2TQ/U3r
	 XKlRhj0SKqZDpJpv2QOdGPpkun+jh/2pVZt50QsvMifS6IUZL0tyt3rMi+GGUvof3v
	 5tvcEfWXF/XLqrcIk9Q8CGYinoTtVFjgEl7iaZyhuxlV/Oyg5hmEIZMwoRcAE4jzbf
	 Kc8lDEApZV1AUYGPp5U6radaNV5Mk9yWo72he2Flvc4sQ7qN4cBi9LpXquCSpGTeiU
	 6gAIKEwUvspDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E1EC8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175174859357.22257.14569838999005726111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e57703b2dba5266dafe75c16532b34694722d24388a03dbc2810dc54441a2ab8
Date: Sat, 05 Jul 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751748593
