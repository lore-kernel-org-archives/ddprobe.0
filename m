Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49A9F1097B
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 01:44:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719539063; cv=none; b=OPq1Z242I+K32+bANawJccdqZJxWZHE4v3dy8Mr2B80pv+VMLV8b99dR+XzMzYFlmm+rYzPjwAvUo8AuygnEnrbSX0IDIEPYY1YuT9ujmntEX8xkczNE348j2cNUUcaxKE0HqjicRftDYJOhdMfkLYMbz4TYTqEiv1g0i5j4pxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719539063; c=relaxed/simple;
	bh=R2dw8K/AzjIAzOBhBSof09ite2sAucWyC+BHkD5ISm8=;
	h=To:Subject:From:Message-Id:Date; b=TNJKAjT2RBYC5ca/aG9n4KJ1jiTvQPf/zJ5+0kVa6gpGerc5zJgzCTJ5AGNFleFpf5bTFfXVId/sYZQodH5+cM2UChG9KMGjGOdIRil560L9WJeAnzSdf+2BXbFa6hzAMbYUhbdTVHL0CC1TZzfoFHl57G1PJtUfFgjbGL/rNFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vCE1c1Ce; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vCE1c1Ce"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F9FC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 01:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719539062;
	bh=R2dw8K/AzjIAzOBhBSof09ite2sAucWyC+BHkD5ISm8=;
	h=To:Subject:From:Date:From;
	b=vCE1c1CeVR7l8mHVpoGgmSq209yWFqTUXt/eBOhTEB30/fLiUjTqZP830rXpWBMpj
	 hfuldJYgTp+QG3ov4/Mhv7r2PXtUz1AL3cHZwh8snRst6vmYVfT/vKcDr4Rd0b8GYd
	 U672ppf7olH7E8nBpZltiCINeaDScJXC3VhJ8EDSgXDoD13Eq631rWEgG5jEkE8IWJ
	 HNa7m2g3yPODB2SowA1ZEFs+tEn/Qx4sRc/5IVgd5djxc/F0hoP9mlCIlAbnpfr9Hn
	 hIj9EssFpnhcbxqYQirvegWX6RmL/rgUIqinUDeRLnv5BQUJgpkS5/Rhn6/gKOR0r4
	 5szQFemcJWGog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0D27C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 01:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171953906276.18921.5755086745418198770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4b8982a5547e116065fe3410e49b77e61dcb8842de5db735795cd1a3daa3d32
Date: Fri, 28 Jun 2024 01:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719539062
