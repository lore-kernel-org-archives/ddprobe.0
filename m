Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4629A2848BE
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 18:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783017514; cv=none; b=Sa8QuO5d2x0QmC7H2gpR0NJ7RSFeryK0152OYWtlFb+uml5qMbjEas7VYCtVX7+MC4x8pSzeaoCgy7FmXQV7g8RJnFr+OFZ5n7w+Ij3FavDrZqJ38kElidpnCNTT7KheUhKP1RxjQk9azd6sZGT6kSqYRm8WmzWGob8st4V3cyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783017514; c=relaxed/simple;
	bh=rPAEtEw00bRJifbi4esGOwq+8J2YilbxdCIu6WLfAd8=;
	h=To:Subject:From:Message-Id:Date; b=GdnLzIBgL4+fUEWLtIGSAhCa+Egu0WCCHJaGbriCP/kmraLdAlJbovspJ7d7JN/yfxddWNQ7UNE+FQ5EprpFC1j/m0yoab07/BSQSQrF5tlZ15M+wUm5FFRF6O1/o3eH7EKz98RPSwdSuw2oeW70fY2cJZKt48wATwpQXYcJWlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LPoSmaCY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LPoSmaCY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEFB0C19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 18:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783017513;
	bh=rPAEtEw00bRJifbi4esGOwq+8J2YilbxdCIu6WLfAd8=;
	h=To:Subject:From:Date:From;
	b=LPoSmaCYGkannwtQHtk2CAgqnK4YQEmzpwf/TvW0R3Zs3sd728AX+yK9Mz2n7Q0sm
	 dbBOGClrkaNM+/6hF/aylLbBbWw+yHM72NJVyYXqO6RY6pPxCBXyU92GbVs1Rm4xFs
	 Q2Hxtmo1wXYdosqEdyHtRSYHh8F1N/LtGpSk76WcrHZE05U0BDZ7JuhQRWHTWTvO1H
	 Jzn8W6eJm3iyWdKv9dPpHvgYzmLVqrOdUJyEQgYESNIqsyAhxs2Tk71A/j7KcWU/rh
	 dJMwl9H024e2LysMcGc26Ab4iRwLwiRx/pQJGg2QALpMK95ZwBKAYJzp9gXnVNF5gz
	 cTohnS83j/1fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB296C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 18:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178301751369.24785.3738974870218479204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29be750a0a90daa8836d4a0327f0be3ee0e91d3f4038ba63cb6e32adfdda566d
Date: Thu, 02 Jul 2026 18:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783017513
