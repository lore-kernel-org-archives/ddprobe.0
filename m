Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49CC1175552
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 18:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713463763; cv=none; b=E6TVbXqe1XgG6pROkpa2MzYmat7J3lRbnPcOO4sfkREwpSfaScHBqm4hoJT5y9QDAKs2x64qk4mZeqK1DGBWlwRVKU1n48yidrMQiCdk5LKtIDcKfdvxWPctwLdDsOzbVV2YzfTbP3Gi2IvgPpsIYvuQ76gdc05A8xB95DjKsyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713463763; c=relaxed/simple;
	bh=YAKBR9c2omVIoKo9XvMa0y9lhpsNd2Wj3HvXVcGSZIk=;
	h=To:Subject:From:Message-Id:Date; b=IFQtU3LJ/rczm5WaIzhoD/gxhLVq5+b1N+s+SINH0g+s+DOkYhrBkZET3KDbogVwQbc6DrIjLc/AelFLRqMNROarBIFjNtP6fEPijBE6C62wgz9th5mGRrGRaETeApIwE0qA8P4B/+BxExp/zE48XYLZRrEZHsfK4mzAj3x15Ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oAdvLDtx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oAdvLDtx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCE2BC113CC
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 18:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713463762;
	bh=YAKBR9c2omVIoKo9XvMa0y9lhpsNd2Wj3HvXVcGSZIk=;
	h=To:Subject:From:Date:From;
	b=oAdvLDtxE/tnMjBzU8cqSJox9DXSm0+f4ASTsjaubg6/qxSi0v+xZR3o2EcTFqo+f
	 d/VLbjekAHZJjWucXj+S/RDm75Yp373Nb9QbZROXRuNTjKajpD7jH+qqNFssoANkcI
	 lrHhtnZjwxH5VshKMpNNC98J2tTST+OSkquBAbJ5l0wi8WlipIv2ufN1d7sNNcjvbJ
	 uA6Eo4dImj+lSygRAT8RbJigRZ+7Jt5VMPsHvcjXUuQFs7XOjCHJffNBSHd2eIlyfM
	 DKIVL/+02HfnbUpDioKWz6jL8lVIAa4iuMx3jWz6FjuU4BkEn3EmHaEe86v/beqa+T
	 wX1AJXiqb7zQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8620C4345F
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 18:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171346376279.5542.8468659191074075247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baf5f6470d68eaff66aa380ac878dbc3f647ce2ad2da931fb4fbb6e306fb6b89
Date: Thu, 18 Apr 2024 18:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713463762
