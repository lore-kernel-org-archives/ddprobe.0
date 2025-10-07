Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF9C82D46C0
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759839594; cv=none; b=TfSBpRh0j8HASitAIZdXjXA255B6/VU588CNfoR04im54m1w/+igGyWz9jIMmIEbucRVVLXUP3UHBAS785cbeOkKDRvXO/080qhiAnUVvlLG+1SK/Sxa11Bwxos+jwjR93ZU8bkNKCr1hPDH7Yy8V/nyQgZUhn23gksd2G3zkOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759839594; c=relaxed/simple;
	bh=kNCS6q17kfmcd/iWujG2nx7LVPr3ionG5LNgqaQWIM0=;
	h=To:Subject:From:Message-Id:Date; b=MsHJwd8i8fXNltdOvFMe3h4xdBMVWpTxJ3TESAMsWzUDt5cuJfRcGN9QJ6ZxYvL0HCfF7+o0yZzWcJI2ujRvdpX4vebMMJQBIWARr3LiNWRO2qhhexg0ZVHKqxIwiF8jCR89m+nmcFVVTjqaYrD0xxlqsWihBkDSc7JCQRDhj3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H35Kul5d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H35Kul5d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E2B7C4CEFE
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759839593;
	bh=kNCS6q17kfmcd/iWujG2nx7LVPr3ionG5LNgqaQWIM0=;
	h=To:Subject:From:Date:From;
	b=H35Kul5dWfjoOrsxpJzfJU5DilL/+k8UN8pXVcXp9K06NMOANmrWiJROidt+GRSrv
	 A6t0o/lz24AEK4fsOd28r+fiYTuiIS3A8bt4/oStlJ9jCYfc9unlpiaSueQCvk96q2
	 MYrNjuZVc5P76NNfX69s5ZcqTmgbSNKhkjxPMiGef9/Nxz/T7mt5am8hvhAW2CU2UR
	 r7NjciWWP8HcJAtABFB7wsqjFU6j0P6Y1+ucornDFSQMeZVYASuzl0b8gOt4uIoNYa
	 UBCGiHphvauHkTA8y5BRCJ7dHhe3D09fQreponr4ZKYCoiH12E1ft5rdEWTo1ZqRHs
	 LiHR72x/m6jWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F49BCCA470
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175983959357.345.7717649820573060134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69d5212c23dc31c734840303aa291edc919d6ba6871238f0fc2adb0ff422b553
Date: Tue, 07 Oct 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759839593
