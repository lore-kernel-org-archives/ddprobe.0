Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44D5480B
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 02:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714790543; cv=none; b=F780xFBfeT/QQsUughkUNf6ewlN4/p2W+sxf5YgxoKBihBsWuk1MkUd+X2RezhoJkW2uAFOpfpXM1yKHacUWOh5Y9YIIa5/286/hiNALhhnaen/XtxKpASx4w1MLVl56s4TX8XJ7CPpubNMI3BBaQ48eICZeTF850sJ48zL5j0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714790543; c=relaxed/simple;
	bh=DpXxt2JzvVRgxGeZfIC8AHTZjNM83GFQyIA2WjdqsIE=;
	h=To:Subject:From:Message-Id:Date; b=llGd2zmfZixb4p/kblp87HrxdWKaZKj4dXdL3T/mkhdtoGZ9QbMQC3xuN0wOWn8xzhJ+AvEG7NxnErDVl6vCttLY2W9gxtds12NH0F/gDx52LfY50iXlYhwWoa7Jh3dsCCVtc7Ga1k4IKur9zEvNh6VRBFpzSwySlDe50FkMkAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e3RGpIov; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e3RGpIov"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBC4EC116B1
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 02:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714790542;
	bh=DpXxt2JzvVRgxGeZfIC8AHTZjNM83GFQyIA2WjdqsIE=;
	h=To:Subject:From:Date:From;
	b=e3RGpIovCZDGj9sTHJAnVll3qJy+9M47DCfLgpxAUY/KYY0Xq81tro5Jjvyx20AnG
	 NeC62CdNNhdGZYDzRWPbz6mtVplg5YUd/VdCrOMBYoDzOfDugy8yOtPqVgVqtQe4YW
	 vdGhobOwIDPMesOYzMv8fvnYMMlls9PgRThtbiZLmLWlgxWcIR3lA1BR9Nnal2yo/X
	 yh2aY1l/RTnYEorKy+bRvlr3E/6n0X8UFS4U0Bje5UHB5+WPKhsASxIJ4khGWXr2vU
	 zRNeIwdCoCU8KpfBuywHy2lZjuzXWAHRNabXwXG+FBxdm3+Q/3Eatu8qRCZR8b7kqq
	 C/VA4gpw5y9Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7CBAC4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 02:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171479054277.8245.16922067188982497416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b12b573e4a6e21441695a93a620e68e131970ed11ce57ffdcc544d13d9f7ebce
Date: Sat, 04 May 2024 02:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714790542
