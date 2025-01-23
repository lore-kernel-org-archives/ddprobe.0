Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C0C781749
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737668754; cv=none; b=KwLBCS+uHfIdSkGqFS+4h/4BzpeLlYlI6GztA/Jor5Bzs2gbuPUyATBLO80F03SQ46W0mPKvFiNKxJUOlOkavMy6AuEQizL1yB8+swkrmbweP54WBU5VVIEqK7zIMAQE2G4GDOEp6muVW93RHCEpGXobnJUuwlouUF3xgRWtoXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737668754; c=relaxed/simple;
	bh=AFnXs7tC9i6RTK+/8oS/a3BtVQEjCmymS88X/7TZAeI=;
	h=To:Subject:From:Message-Id:Date; b=a/Ncm2CUnuy5RGdFhntUCsd6nKDSCVVCZilfKvR4fjKT319wYGARn+jzAy/Z9vKOon3UgL5SwPOjmTf7Hw+JPgY9SD6mu1iJ+sPUU6ZtviLEizWDv0F/VJVK5VpEGUOItg3QM6ex1sYpJcWnQqcfQQhCKiDBf0gT8a1jdAG+mIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WK6GoaFu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WK6GoaFu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDD06C4CEDF
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737668753;
	bh=AFnXs7tC9i6RTK+/8oS/a3BtVQEjCmymS88X/7TZAeI=;
	h=To:Subject:From:Date:From;
	b=WK6GoaFuOPMiM8bCqGDkf1S8uTGyjfj16FeFGBbf2FfeZY+tZLfe/XotDHJPrxF7N
	 kGRzBxlQgODGxyAZmWq+aNEuLtL1B03QHkfwDyXNtaBub/HkijBC7BEOdDhfCJqUjc
	 iqww6k9zzRdSpYaUIcvWNKXe7VMVh/p1AadlIEU3y+XWUCLRMTO2mk3J8ZBJVQzntE
	 pixIqmHGS3fsyE1I0gSpy5cmf/bIGqiMScn/prAjjEhDWCp/Zbd5cDc1zMZs2CATOT
	 N+3X+y2Yh1gfKlLEDcGMTLhiSELhn4c407gSu5apt90tn5mhNKnX1jEj/DHFuO3v1a
	 WLtO4jTEbaH5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A677DC0218B
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173766875365.13148.13185641399858258418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60177f37d97398d7111defaa196f4c98c812ab8b3a6c9be8744e6ec5f3afd0a8
Date: Thu, 23 Jan 2025 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737668753
