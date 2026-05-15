Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2097347A0C7
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 11:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778845234; cv=none; b=d4yAfyMhdnDaFyUuZkEUQtLw5QiQXKiXSqrZA+7GgByINfE7SwrK+vdhy0REr/TGkZ7pkdKL+9KS7NJ1PqM2Po3T6LrYqjkdfKM6Zjv9/38mKofP/RcvKbebUu+7/bg/3cMXgjJO0wufm9cs7IreUDuGU9Fs+vp+DS8T0s5zeQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778845234; c=relaxed/simple;
	bh=Nv+5ocf+RDBDDxuo0g5CXFp2u4PGt89kXcTFDacTeqY=;
	h=To:Subject:From:Message-Id:Date; b=CgVNFUDzr7w3oMS4QwhUuXxniBq0izD65QYvfiknVVQZmhigPCNGGB1y4xIfm6HZPIkqCYbQGKwN62hlONUqE6Yq1FV90jKb3SHfUd1sp9aShU6X0ffxSaDTS1h9Dlw1VRorNquDYCBlb3723GSgmnl6EYxptz97KqDnokK1klI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ger/NxQQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ger/NxQQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C20BBC2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778845233;
	bh=Nv+5ocf+RDBDDxuo0g5CXFp2u4PGt89kXcTFDacTeqY=;
	h=To:Subject:From:Date:From;
	b=Ger/NxQQN2sznogO2umzeXonp27iiV1GX0EsYA+SwtGfKHM41u0cfGrhwX7ryryH3
	 eSsvXPk/6lDklpiz0lM4MfRybyF8H1R1HMFs3baoDGBzuDUefoJttXAwxU6obUxBsr
	 wDR9XTIPuuQbJy6Ne2fxmsh5BW5/axw8zkE5pg9kcS9rBayhnKyDjtA2stqzLSllo6
	 o2Ev3f0wzvlGbqt38vSSLPv7pynWPJhfGsNvc4mtq9Bw5JLKMdvF6vA036nDvrb6Xe
	 FGF71h97HiRmWaTSPbIdScpvV0G3UOicQlkgzrTIAeOyikFsA6Sf5+aU4RUy6m8/iM
	 fkO9/baLTDxQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0364CD4851
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177884523368.3069.16185312058157069606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 458ad0fb9d000e746c7f6643ba740372c64478ecd8cd8e9fafd0fac89f995c1b
Date: Fri, 15 May 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778845233
