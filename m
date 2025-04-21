Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47E932AD13
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745201995; cv=none; b=qRBwnITab1mMFT7fi2vNrNV/mJlOBnTSls8di7kSxuIl17SyKIB9PcNH3oD8VmoxIhe/PC8Rwt3Zw0u30i0kKZnbNTs5ukbUY2FticbANNQwK/3jXdCiBDSTbTr4PrYETtsOsmJMc5w/viYZ9k6MDQeFLQaxAvyJHBJhLXx/vj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745201995; c=relaxed/simple;
	bh=C4QmusMASYPsOaNPQ9k+FaIeN/NXcnJGpnf07q+0V0s=;
	h=To:Subject:From:Message-Id:Date; b=L0DzeAZeH108M896Sd1VBEXDsGm3gvQQEq1PpgksiN9l3vBli+MG8vDSOIlwWKMUYs3Yo/LE9rbLxWLaEhz0gOHft7KrH+fJtjTfdngIPOIkAABUv4S1MQwkSvthjZzg//6OEwT3BabdUkLN5s/kEw2PPRXWfW+lRWBT/cHib/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lcRWX/OW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lcRWX/OW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B967EC4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745201993;
	bh=C4QmusMASYPsOaNPQ9k+FaIeN/NXcnJGpnf07q+0V0s=;
	h=To:Subject:From:Date:From;
	b=lcRWX/OWo4KjrOVTzIW0iRoqYV2BRHW4cneqDHroqEddKwfEpFoaBJZGK26r7EOlc
	 7njZsp26HC5sI44S+v3Gv2n0iGM+srXhOL27RHeREImzhWsCM+puRewPTnwWZXlX8B
	 483RXRKjMu3S5EeyrwRB1hYNFaV7UimgVig6wjZvapyFsDGdAAqewM0TtW6M3jO4uu
	 PwtYtLW0L2FNWFftihdwVQl2Ykd8cbR5k/4D1rTdr/9z+MOubM7T0K/alnGBI17H2o
	 OkbseGKEcaUowmAlL0LPVYXAUcbPjmJqhEVwYZCtDZteO3SCb1rTo1DDIwyXqY8UBJ
	 h1DKqcBUKlVgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D191C369C2
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174520199360.13409.16410395640066246402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3593493b8f2a9a56901b243c3ce2837d2c980ba23b712323ee9617380881c9a2
Date: Mon, 21 Apr 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745201993
