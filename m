Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41017230BE9
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 19:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783454314; cv=none; b=tMWhvZz9SFg4QM1SHDqLl35u2DTxKH7Egi2KyWlqEiSCNnK4zX8OQNDZl2uzq83PZtYmksddVTxpwCQ5eOVhKxbXs3L5PbjdGI19sV4nZ+mryDMmex3KvAqs5Ti6t/en5KNbmvMp/zd5fmC56rPK66xRAoGuZKVrKKj1LIcGk7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783454314; c=relaxed/simple;
	bh=0VxScSSEykwzsWQTyZwgLgCCcW2UplYuLO5jW5IFR+w=;
	h=To:Subject:From:Message-Id:Date; b=KKK+erwAOmDISCL4/grMzKcJJ8KX/AGsvSZ36nz6neq5DxAFhgU8wwpLueDFe9MAHf9fRZGIhUMwFsZZ5KNsfYXcIkicbe6rb5pybU1y1K7cviahddr2X0eSCOni3OGRORYRI/pPx5BQsi58TKFlrxgHxO98wUkU8aKZvS1bJhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AMp8SHjL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AMp8SHjL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5470C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 19:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783454313;
	bh=0VxScSSEykwzsWQTyZwgLgCCcW2UplYuLO5jW5IFR+w=;
	h=To:Subject:From:Date:From;
	b=AMp8SHjLltws9JIdUPzMIqYbq3qDX7LpDb2dFl04IkrJYnuKBFQwpcAfep2Ijr2Y3
	 S7tSZE0Ar/Su+8w+/7IHh2sOssX0UT5mp39gIQh3HL1gxN8YGStdTd6B871bg6BaAO
	 joB+oaoXNPLAwjwMe2qfneBUMTfFx0o4A84dawy5r94na4AO9algwQjCKUwX7LXgKH
	 znS7JB0SUcyIjfWCSh9A+lf+y/OOt1rnihwWpwJd1slE2lQK50T/T0bwbotBS4e3Gb
	 Qc07eRQmXnZhp6oRJ+BdsFS15Fwr/IZltP95H2okSWCHD7xSXwC9hX03LbGkb4Kv2K
	 zp8hQx2NZcFDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE168C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 19:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178345431368.2249.760492288427575757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c2f1f8d96d479075ce59686c4fa74b61b910f868d99c2ddcba98e5adcfb8304
Date: Tue, 07 Jul 2026 19:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783454313
