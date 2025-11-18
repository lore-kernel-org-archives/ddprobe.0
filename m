Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B04B2FFDDE
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 11:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763464314; cv=none; b=YQo9XgufmVqGTCz2Cp2+3gjOu5eRzXgDxtL1M/S6aU8DZhrwc4E0P5g1vdSNEn+Qj2beUGwcE2i37zXEhsdVqErdeA0VdJK/LjS86L0rm3EoOY1pY3VDbeLGqohKaa90C5BToLUTG7CiFHaCcMlcGt0jbisA2WyL1BVR1+NO5n0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763464314; c=relaxed/simple;
	bh=wYtfC2vv3WtD+u5m5V2dUMMSOQs08Gbq7TB7PpgtHao=;
	h=To:Subject:From:Message-Id:Date; b=tpGR8900qcjpCx2GLkEBXFKHx2+D0JtWEjuoR3TS0f9ZZoZQJyZ6h2WJ846GhH9Z1ieijTezFDkToZqfJQhh4qT5orMR1anHsp0WZAcVwbxZoAAJ4+XO0KShzNMIGvStDl8+9Tqbwbv9GWn2yPcKod7Qb8dKZzUw4yQf+Z4qDGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tOoOwzlh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tOoOwzlh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE832C19423
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 11:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763464314;
	bh=wYtfC2vv3WtD+u5m5V2dUMMSOQs08Gbq7TB7PpgtHao=;
	h=To:Subject:From:Date:From;
	b=tOoOwzlhvTsu16vRDluluXbYbHqVUag3Q57uxpVcKVyXm56Tfx8kw/AU7nEkxTm+n
	 dYOd9D0RBLlpz8mS0cVpGyPysrsQDVQjkK6gpPhaAuPV2Y36J2u9vrfXhWW0pVVULe
	 /dav7uLUJehjOsLwEm7H7iOmPxQjzY98s+sYjsNn0ikJjGUZlgJN2bc8SaX4myiHnk
	 nDX0YwsLHYE63OVnY+btpNEvBrdbmA6YRj9+BYviTzeb9UMzatjrxfQnjmkLrzWA/D
	 yt17zcfn3mGdlH0o86Skh0KDxs/UM/xr2Nk+T/FR2gyyd/Fp6n3NsenUTo7ENUapa7
	 iUlxqaRbWEL7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9164CCED60F
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 11:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176346431358.17178.43674844014282452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 492b08ad5f966d4e8520dd3843756f6bbb328a85e28afc96f8333d3017517e8c
Date: Tue, 18 Nov 2025 11:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763464313
