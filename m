Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B4992F29
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758422994; cv=none; b=at6Y5yXS6lOakyJdL8fxN54kj9fuc13+gs8dkhQ1klZSlLvlzSvUCC0ANrs2WaI3yQeHmnGzX9zl3tiZOSSlhKgBUdNi0gS2RVgeF9fbf5aVvz8zrwNWyY1ffnP1rYzgx1EuEeHpNd4S8a+jGMVzB1GYb4qEEImUCAYwueg3ujM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758422994; c=relaxed/simple;
	bh=jIzVPFH640HQBSyFib1g3WyMdEDef0ZDVCGjwbSSM0c=;
	h=To:Subject:From:Message-Id:Date; b=cAWGMY/VUWVH3/utEtuvyJG7dVVFEDnbstqaDh7VYzQK8Xs9cszmpy76h6hqgJ9eqokdLToqby5EN0EaXLWmgyAFivvYJMZ/ysiWHQD5nV3HHH+GHbQSRav8Cx1jfdUpe6NbFAevAgvkG+ld3NljeTSQr6iDPhEuP6BmD/ZRumk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SFItq+4m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SFItq+4m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FAFC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758422993;
	bh=jIzVPFH640HQBSyFib1g3WyMdEDef0ZDVCGjwbSSM0c=;
	h=To:Subject:From:Date:From;
	b=SFItq+4mM+U7lZZMl84ppfx14DEJeAFbA5/nyH+p3lIlq2FS9GiGKDkhF8jBloqns
	 95UA+6KJgpHVB8ywx9pc66Cl+XYR1Irsl/VyVHGgegXFTV3Vr6pZrah/wpX6c1GC1E
	 N3aNUJHEVQcjCw6kbvpbCTCoSrdZZbEB64lDNcaLSGqnbjxMm1VNTyf1MSsZ0582mG
	 Oju7zDPMLae+tvIqIsOkExouGEP6pAZnsxtFq0/sKT3yt6JtjwQNExv9p+nSqCQLot
	 KJ+mBxjKSdL0v9KNvVK6G+/Ln1083Ew64T70Wr8KskBh07G3sCzzdWNxmt7s+HJCH+
	 jU0fRsDvrfQ3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939A8CAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175842299358.509.8562330695547787466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4fc04a4b09130ae8724697667d2b66ffc61f59abc4e4c1b9627aa5623ddb203
Date: Sun, 21 Sep 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758422993
