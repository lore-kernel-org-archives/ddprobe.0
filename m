Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68E5646EF61
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791402034; cv=none; b=i8yXkN3J2d/XQDTU8DLo+ZEdlvZ1satsNjRZBLDyNfBjD3N4QEV2NyptDjctTQj8uSdvPVHY6g9ywoXt6gnt82ohCimcX61Kg3eECxzu3jsOC185q4kYnRVcspp03tu6Q4fyRUfMCfU/l+LFgVvaXvzN6sY+mbQODnHZGc48P8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791402034; c=relaxed/simple;
	bh=FKAZMobNvd3jBy6ceR6WWQbDmby9gSMSVsnfiKJwOP0=;
	h=To:Subject:From:Message-Id:Date; b=CxkopPUHxApmBoWlajM65x2sd6kyynpwx+XsqX8Tu32hTQpsEX0dvaPQWohQtNdhLO1roIBlS7gSql9rggLN6o+IXLGlWPWXIIilraia/cjN7Qyw/H25TVMTWj6Ym6TLlOzwKyHy20KGa/asJWxR0lvyhdKFr7baZgOK6R7WXqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SHOEV8kN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SHOEV8kN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF1BDC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791402033;
	bh=FKAZMobNvd3jBy6ceR6WWQbDmby9gSMSVsnfiKJwOP0=;
	h=To:Subject:From:Date:From;
	b=SHOEV8kNAnvEu/isX9NFJ9bknkz138MNjIOCiH3Q1m+QN6IXVorTR41/oz2CzrD+w
	 d7G/me1WfLlHdvNquQixY1G5lP1wxlujWgnlMEaGK+uwQOfkILq5V1OYglAArDHvc1
	 q8nVM9eWVMhbiqmbK1s9AMDkin758xjxBSKhbOyWzCwr43OmFKny/9B4wtYvKMpiSW
	 URStTvh9ZN/+T/aUJEi+L0A38sFgDU8SqswwMxgnf4Zjqv8kRLCedRAggALYD4VfDp
	 REnoDGC0oviuncs4uc86a1PPtHfpgl+OqF0E9+UostvYNhCGpKTqGPA9nleewaE+fu
	 pFc57K2izmOXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEC6CA5FFF
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179140203369.21430.10257322193250999388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b785480c368e198fd7696f972351d973c51196f74b3d2aa30ebf32defc8001a
Date: Wed, 07 Oct 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791402033
