Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F4512E0916
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 19:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764705174; cv=none; b=JFiO7/vNUnDySNaedZ6e1lT+SYJylmjR1QADWIkvazzh+1evv9HKJFmEO0di5vBL05B7H8v53rJWWdPGpz0zvPMLNUonFLXNE4DLVdQ8wEYCcnv1dQ+d/ErzSRcIbXkTc/427ztT6HnBo/g5r9GTWUAxQjEdY8H2TKR0CI9qZh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764705174; c=relaxed/simple;
	bh=F8qwjoGmVYUt9RKT/8jJxWulGlp/OvgnOultKdkApT4=;
	h=To:Subject:From:Message-Id:Date; b=pCJW0Rn6HdKDcooz0U/vJbxPh+W82dkfOWYuQ+iGA5G4bJFkwqQ7Z6J35SAR1yKtWoNkLc5c0w+Zx+WArfw/gAVg09O/XtC49ouRonpJF7Q+b7kWT452c1X4oNIjzkaUynV23zRcraIGwF73cROENLRNEEqtC6eSrelVZNi0hW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iQcVCq7b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iQcVCq7b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33B9C16AAE
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 19:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764705173;
	bh=F8qwjoGmVYUt9RKT/8jJxWulGlp/OvgnOultKdkApT4=;
	h=To:Subject:From:Date:From;
	b=iQcVCq7badB93h0hXaR8Ooi+FUz29if8XvNeyHmC5kGHZvEcXl8+DVWOPqQnrgnin
	 mvMO+8uflzDvnn4k/iLEoFWBq1L5TjTO67aJWs6/5mmdUAfiKmU4YW1n3GJLYJlqkO
	 Oi4pmu4P/r+5FMh2+Wnhp0QmSL8PandK6xEZkYflEpTwp8RHR9uuO3iHjE1/REcC5o
	 fUxictSq8jRycS/vSzKgB3hB24Byg0Pz89EW/A/Y2RuWeTHC+GKI7fikGzYBA+XORC
	 h2Bu+FmpJTpwP075A+c/gNGONaJc7L1Ouv2JOnSwxIomVFvqAzBMCD+AAKZnHF2vXs
	 JjLNu29NG5v2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9148DD1266C
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 19:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176470517358.14088.537957093975870835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2854785193a20252e67bc426e28f11f5acbe949d204dffcf007b402b3e6a9dad
Date: Tue, 02 Dec 2025 19:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764705173
