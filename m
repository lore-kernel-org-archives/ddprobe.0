Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 401924071EC
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 18:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780770874; cv=none; b=CuscNmlhJppRB0ybmn3n0AMkzHebfhD/FDYj5XzESYqyvSPx00I7m4YAUxgzLIHQsPtc/OpL4hwV7Q02qugDiYCtLOTESlaMj6eRbMbHJPC2SjeVM10v4JPLp7HlbE8AYlT5VYoEpCjygdxkI3lU2Bhu1k+TK9u3HEUbeN4w9Zs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780770874; c=relaxed/simple;
	bh=JAHSyKB48T0K/tueRIl2lZyVMFA9+jIIuWHoiMx7kVU=;
	h=To:Subject:From:Message-Id:Date; b=BppHPcWiaNep4K/jVWpllWAch9T1XWb+vBO+nDqiXUnQbO6G2B2jzChw8LbbZWB9kbSh+mds9Ebi7i1pc6JrHX3SdbDuFr59DfLLpFeavQxp8qwEb8UQTVi+GYXAPGWVfFW24g65IlGtWn8FkREUmv8oJoXRrSLqs4MNykyPDgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rqXZDcnb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rqXZDcnb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C84D4C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 18:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780770873;
	bh=JAHSyKB48T0K/tueRIl2lZyVMFA9+jIIuWHoiMx7kVU=;
	h=To:Subject:From:Date:From;
	b=rqXZDcnb38fGpVcTPfVxSBZuorH7sMcixGnWDJefME9WPgAToXju4t5hKhhtmhX4o
	 lJhXT/+AC4dUJE66mfaTvPl8M2RlYAeMie66PxjpXsMHoQDCq+q4qBvkUgm9C9mHEd
	 AVA1Pq0XvP2pDwOd2qBxKvnrX85e6WBU2JYhhgr5+zOJ33TjbOaVRlLTekuZyQ2Ck3
	 mCNu6viuZL3f/7mFQreH7ZJejalVSGV5kmo1ScAOyoVzas41R4dQdcnNP0tvtJm69F
	 8ZM/c8YM61ApWRQZDDELhFBjUjscnfxGElDVFYwmLwpxk3DURZ5ECO9luzZQwSlqLg
	 FV0h41sFYvKjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF0D6CD8C8E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 18:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178077087368.8848.5962461097964887951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d706966324b9e0f5830f27823935ab9f013c4aa35bc2c3b04c93953a5806b088
Date: Sat, 06 Jun 2026 18:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780770873
