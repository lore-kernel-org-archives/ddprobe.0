Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10C57749C
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756944594; cv=none; b=rQcP5OwdvmtWeCUyPhblpydOU8UI1t5krYIaqoiJQsM01+HwpjqrRcYgNgMBmDsUwI2X5wLQD6v7w9RDLfuKwFrgGxK46zCsLZXi7QLMuU4k2/UJkbGXHa37RTmEwtGYkJxu+2sXh/3eMnOTCHlldk4NRIdXOGea/o5T6GtW48A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756944594; c=relaxed/simple;
	bh=N9zfvAXUexEUjPjqoZjNx0EP8gMB32xONd189U4B3p0=;
	h=To:Subject:From:Message-Id:Date; b=jaHbOsQGoE6U4Wnt2DjDDX/KRWYhMOCMxT5LdCp34EtE+cXXRERV8VqB8fBBqw8AD6cpnw4az8sRZtHoJVApUaGv2E2gw0bTZo7XaM80P+Gkos6C5MWEFFq0tgpgrQr7zT3fAsXoZj9BwQQ5gvPhvFqMn/Sztr4doGbEuGH8B08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KgVIid1W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KgVIid1W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC9DC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756944593;
	bh=N9zfvAXUexEUjPjqoZjNx0EP8gMB32xONd189U4B3p0=;
	h=To:Subject:From:Date:From;
	b=KgVIid1WjefR334BfR5MhZuh6Iq/w3j1vkf8j5kEbQyHTcYzyYMwAHiEsfQ8SziAO
	 zOAe2yD7I4wWJhb0XrpqwGjQ6pngg0RP+8mkT4SNMtyORX3JZ1h5qhvcj5u9ja/xet
	 AgVK0dUCkJDxP7JT2slbBE5x2A63KT5i8tsq4bTGRkIwm2tMA+ROWiL32HoQD0Ach0
	 YsydMUQGp1wVx47QgAHS72v5xD7l5NeO8/zBcouklDQtca7aJXe5CXJpGVo0AiszpU
	 u7FlZmV7oALymD1ZbMZpEH2lHY4KEuSBJyfxT9U3qjMIPbHYl/+WfoFojoabUfL08Y
	 g7gN1ejH8EdOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918E1CA1012
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175694459358.12005.11595115486425572841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3361a041928eb73c3223f0fd6092845e7b92ccf711a38870591d4fe68f8e25d5
Date: Thu, 04 Sep 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756944593
