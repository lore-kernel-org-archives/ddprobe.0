Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E23064
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 22:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783895914; cv=none; b=B6upDkgmBuzgaDunELX1mWw5exylCCse9HLJf2QZYAJJoBGAP/WGtNKzOc2ywJoekHlIrLAX/KaaBWob+uFyh5+wb16zlKGjJLDXSCm2h3YB/ndwBG144I8yYPwBimQyiu7uZi4DGPTZ720YtnNdLSfaJYkp0NDakfaOlQOieMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783895914; c=relaxed/simple;
	bh=2MFHhXtJaehinriqychfGVdDo3FOjIDOBJ96QLazedI=;
	h=To:Subject:From:Message-Id:Date; b=BnhlVkRg2mFD8zO2UYVWqID5LDDx/Qdd7e/D6yn3v6rA2nkIeUE3rdKtxU1mLWIZqF3mVNWIEZJuP+u4uEp+Lhj1p/DbmRhS/mSlGK3luMajbag/OmO5BBZGr/hHRgNBDilIKK+uYYkZN8KlchBCEQxyf7DbrJl/b59dJ9kIi6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m4ovERLW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m4ovERLW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFD0FC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 22:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783895913;
	bh=2MFHhXtJaehinriqychfGVdDo3FOjIDOBJ96QLazedI=;
	h=To:Subject:From:Date:From;
	b=m4ovERLWXyn4RXsb2dp3n1R5uM8n5lBHVwyQUKTfBUy+odTpKLE4JXP1eK3Iwm5e1
	 LNv6WwLYlv0yRdJ6r240sNvTzHB4RSl2v/0KrIMHbjkd8APTxtXtvIF4N6UEPwHiEe
	 ozgd/sjJRoGnDgbRrqWTEnMATpj+U3o/0vx+T472eJ31WLIICZHSuXVKukR6Gj2wNA
	 wFOMJmhKzGiRfn95BGwFkwhT7ygFJHE5JTD30fnE+ISkWkI3XLin1XqZfKk1AkZ0rh
	 8rXd7M2nqSbfylik9/tmO8BDDzSutNcQWpnBBNXc4oNoas2rzqqgLtT9r4wIfhd04R
	 VdVBepgIr5WRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE19C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 22:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178389591368.809.3249671824676883685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58f9ae59ccf6512ce5b1af7972859a86d58e2937b635c6a82d122df74dd96f25
Date: Sun, 12 Jul 2026 22:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783895913
