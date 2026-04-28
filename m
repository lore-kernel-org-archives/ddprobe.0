Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDAB543DA28
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 13:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777381653; cv=none; b=o71YK0qSojC1ts7YZyjbbvYxfPZDzzlRuVRp0EDjni9JyVGW+/9yi2+f6UZvORjRCqAY6PeKDyTOPzuWlMPPBCYomOt0L4Ki6Oz3n83Jvxp+hQ0yMrgbOgOI3r0El+o4l+wq/7ACKzuehewBEYoj+Xg6V/wUrJPU5dgLAIdYG8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777381653; c=relaxed/simple;
	bh=3RIrIPwHvPSMjg+SKGhfphnu3KXWXSIZrjnOPNAdbeo=;
	h=To:Subject:From:Message-Id:Date; b=JQjOk5UtmTkP1XUPR2uMoDWtcyNcali2DCLAHXo3ikHyLU3iZveA9yQb76WvPsXoo0d3XpFwkAm4B8CzJCAginavd0UltZmatcz8gnnF7TN6sTK5wjMNH3pA/tWIDybEYWKQ7HpFm/ho826moWcVe/uJKczaADQN+Me/AsoAf5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=seJ7RNMN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="seJ7RNMN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6B1CC2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 13:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777381653;
	bh=3RIrIPwHvPSMjg+SKGhfphnu3KXWXSIZrjnOPNAdbeo=;
	h=To:Subject:From:Date:From;
	b=seJ7RNMNOBh1bu7XdIghYXHN1iu37DbN22qgANBOAU5+KxyAbGuBxuNb6I8u7+VlJ
	 eaFne4GXhn88AYM5sa+/SP19rvphdVAaJrswSd9a6ePuO6yN1a9/JC8dbqlp9rdb1P
	 P2vlFcswOdmAVcBeDI5s7oQ061bYEkbjHUcey/jP4A6dXDQYWIqFQbIsfHCMUWTb6W
	 dqeEsHvAhaxSaP03wbu69bPwW+t4Aii1lKU/XsqeFyrce4Ek2Dv8VAzcHTslYY1FeJ
	 903RpXGMJUzkybLejlvzF6T5k0skRkx1DFjTOR32KEL4SmCsn2JgV6SQ5PK8+wIEHF
	 NYykaH/QRCufw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA765FF8868
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 13:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177738165368.29443.3396143744998400606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98788f4963e4acec18f086d3b87559429d15dee312c0d26bc9c4a3c48b62642c
Date: Tue, 28 Apr 2026 13:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777381653
