Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36BAA2D8766
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761385194; cv=none; b=ny6I1bj8YPTvQudWTMO8aG/m6ZRW8epDclXch6DYbwPt5H4/Xts2sAfSW6a3iHfRQ+wXHR8flv8/x94HPHGgnNrU1nBwv7MbyQq4vh12nARqWMKAAVx187a5N2vwVu1UbxTVvPvvxQviZIslIe4noED3y1lhsCha+c4yrBaCQdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761385194; c=relaxed/simple;
	bh=11v1OhRQxJXyCXpxNR1V5+Cews5pmi4PtY+vXMKNY6A=;
	h=To:Subject:From:Message-Id:Date; b=i1Cc2BcTRzIDm8KnVpVr+q4+j5PlFNfs9KqxIcHH//O+RyQhwDdOgAnTE1jXwe0yaKIJokB12NYzAOosJBFkJX5nVoCFDxyZVTtzb5RDxhCQgBRhJPNJR7jIYLiEvj7bZlRRF93ZjQUI0qp/5KZ0f00gITR6TBlx/x0FmSi+msg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uQTF1w2h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uQTF1w2h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC4E6C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761385193;
	bh=11v1OhRQxJXyCXpxNR1V5+Cews5pmi4PtY+vXMKNY6A=;
	h=To:Subject:From:Date:From;
	b=uQTF1w2hdCMrgcm9NDQ1TvRQ+BQRROOa5e0X7P79724NgJyEGfy81LnKTQqX4kGz1
	 asDdxZGf2oSTjAZVs96m/FFqToAO8OE+HbxK3qbfsRNGATDzJlLVjEbLuANhnNE0gp
	 s3/TRpfh24+4PDZ2AfgXNSWs9PWpkofvYi08S5+Tv4pgZXAdodrUn2YefJ4iCSYH5f
	 SJ2GhsuoggiM7vjnNfzdZb53aj6+nczQH8k3Wvc+gNcoEvVAS0QzY+I/i2OvSCQDWy
	 ffN/vO65U9+Xy/Bf80KS7QwLwCNBt8paq2U6IicNKQWfsN9OseST0O5Giuv5dWw5p5
	 pR7osAzXcIezg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9896DCCF9E3
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176138519358.2336.681784938508444145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e2f2ba7368b12f33fc3198cbd0a2713ec46908969afd93f53f1f6b44aa6fdfa
Date: Sat, 25 Oct 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761385193
