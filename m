Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59EF6D27D
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 02:58:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718593103; cv=none; b=EymgscnwVh0Bp0yuMQzUJUs8ybleDGUhS2IEOpDdW16kIJtBwxa6rZrjx3LboyF51vR7Zeek2aQ9t18QL5ks1V2T4BDbSCkiGdFfC7mGISl4m5EwamnQSzXPiXqBv3yzKPUokibwZG4JrVp0YAK5OsArb/iIEjvE5QiaTDIDWSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718593103; c=relaxed/simple;
	bh=KVx014RpMcEqxdBLRgYDBFIv3ACvJKECrLDAQvU0OQ0=;
	h=To:Subject:From:Message-Id:Date; b=tOc7iezKYu9G6arKF3UwFD7oUzh5VphJpU/vJ6LWYSUyFZROpsH+hrmqmTxle797TJSqJN0WOlG+WcfhHmGJIycCncqlnoRWInUUR8rS6TNr4yvA+JNbfj5gFn6Gn+BoMHJKdnXWYUL2KNkgxqOrn1sQ/btpCn1pPBo9sPzVmbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O2SRynE/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O2SRynE/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2CF2C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 02:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718593102;
	bh=KVx014RpMcEqxdBLRgYDBFIv3ACvJKECrLDAQvU0OQ0=;
	h=To:Subject:From:Date:From;
	b=O2SRynE/OUEeoYXdFcryceUtgbepdNzS2kQ9vGg6/RBMOW8wIgghofePIyqAMlG69
	 Vg8XaiG6FRlvm1ZNR56OG0TVZKpSO96R/oSIbZaQZiT7u5kVVwVK2qxU526ohELZu1
	 T2EMU7zravFUdQhkR/ENcZhL64XEn6CalAN4nyPXw4mLS3xAzZ49B2QSo75I0u8nBd
	 VQ+2PJ3WuqXqbuLyzJiR3PNYR97RiwQzbEvFs7dqSuiDTq9f6ceQDKBAtU7gJaEYVj
	 abMPPhdnCQMjNXSzf7+7bUFq2j4i+IAeb98vGyeAMz5ZXZPAd6ASzaif0OpeAJLTIg
	 FT+mb1cJYd00g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFB4BC27C53
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 02:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171859310276.28206.2637975613516212389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1c958cd87caa972df3507cf08087d88347468fe427cc682dc18032a93e6da4c
Date: Mon, 17 Jun 2024 02:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718593102
