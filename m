Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4717134AB16
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 09:33:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769160835; cv=none; b=e0+MsUujDOXZDZYb5Zp7JtT34L1zT8X0wns2acC31uSPlGh3ESlfIk7SBMcibdEtm9K9RFupVvzvFcCDPKvxe211dx+RHKkOZQfg225B5MZpb/UZU0MXl3T09Ny/0ICuOBSXhGvjileladg9Iug2M77kyg3SmWxNDCCY8GV5e0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769160835; c=relaxed/simple;
	bh=nzSL71DNwGko5xBBXGyFszn5QGmnHWQ2Bl/ZwkFJeeo=;
	h=To:Subject:From:Message-Id:Date; b=BSkMbN+VMUiJBpCam631wZG+MU1bZODuX8zZD5VFvYNulZq01u6mSefbLIZPbUP/1gGqfJwk7KHvhhfvy6fnu3c+UlNtscovs0uSgNf34gTCC8F+M92Wb5/TgVE9cUAWMbQO9XICV5KWeWtNUr1Y8O4swc0T1Vx9Ua6sjZj9mNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X6aNTJUh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X6aNTJUh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B94F5C2BCB1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 09:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769160833;
	bh=nzSL71DNwGko5xBBXGyFszn5QGmnHWQ2Bl/ZwkFJeeo=;
	h=To:Subject:From:Date:From;
	b=X6aNTJUhqxM6DFJWnMiKbhvSgfKTydzd50XTOg57CRNSognz1pFWehcvgFxDvcqmu
	 v54WYg0UlTct6SNgKHjLLRdfXzdGjIiiwzYNEayo0wnYjLxmr35MGYLsKvhLTtxlHR
	 f+Idrr5hx48iCYZDJp9NaF/daJjLbTEsawBU3SZUe6+o2YE83nM3Mf/QC8MwA/OO6W
	 ZsmNOFYoxyOqzUWnTar1Do2xaLlEMeqOlLXCsXt0GjoZpvdadbYk5+1oChoa3OO4li
	 5A6XzqgREjRlkbx2MuWejoWdAMtI6r74lYdkxmwiqEKK5tbFy3tYhartre6FZOrfxr
	 24MHFLlxJItbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9315AD72361
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 09:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176916083359.13821.3537861670808729483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03ce50f299cc4f24e736daae0376ec1fc910eff47c693be7146f14cb1119c3a8
Date: Fri, 23 Jan 2026 09:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769160833
