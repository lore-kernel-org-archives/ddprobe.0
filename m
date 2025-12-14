Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F3C1C84D7
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 11:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765712574; cv=none; b=SfU3BCZcF/nyR8zivpOkGlBDdOn35I3RoWbIpno7IeL3a9dFe2BLFSMiXwNpqlYxryKIbbMY0yGp5ZQxx4xdrxDHqK3qEMukXrjX8qWP1UqabJLSnSzeoAnGqCblV69M5AhvbKXRHsub0HqcOqAa1MMSd402RmFdKuZD+ak09kQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765712574; c=relaxed/simple;
	bh=+mIX6ai3MJa6R9rH8qZmDNQGp8LthuFG8w2jco7URnQ=;
	h=To:Subject:From:Message-Id:Date; b=NFSt7unthV4DNaAV1KnPFzA1J7O/cRPuoKr3Zo/QQHiGYzjZOVlHFmuUi1ENeD533P3dONDCuXaoBH8hqtST7tvyloQZNGeALqcdeirCwvESwhbiX8g0XXsmNzyYnw5SFI/N/r8bVs4Ua1lCeq4Iw01/0dDM4UEuvo+YFR8X4s4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tNe0tONv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tNe0tONv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA11C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 11:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765712573;
	bh=+mIX6ai3MJa6R9rH8qZmDNQGp8LthuFG8w2jco7URnQ=;
	h=To:Subject:From:Date:From;
	b=tNe0tONv4ThhKDTOjpL2I6KlUpLZU/z+n9eN2/XA6UAGgTjcl/Dv2naPBVJiBtGbp
	 7SdxeuPNbF6qkyKiVW25YAl0IGpqMX3idPjV0TPAF8O0wlXo0R04nwyRQyPrco9gVt
	 iyyV3S6tfQCwM9l+l/hvVWxCdG5lB08YoJSEXNqYxMSzMBjuY2IQV/96JhGenwwfhr
	 8EGwobpEoOP1Vs3X7OYQLEKstdXHh5i20XrduKhsCibUc3k1NB1Ro2n0JN89ENLhtO
	 wMaEYBWvMFrA6ctAOBp1St17k1/ZYOskXclSE2Mnq/fIpF0DSU5UBzaJqz039tX2vD
	 nSGhkuF7Ot0fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9356DCFD314
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 11:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176571257358.25684.8569209810374759183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b485e4ba1deb27e04159c4a25b7910c7dbeeec3bc35237370615aad4f9f0485
Date: Sun, 14 Dec 2025 11:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765712573
