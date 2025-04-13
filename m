Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45137185955
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744587594; cv=none; b=Oszykv3pQ4essx94cg9RmDtqIjDMsV/9Jh4yJftecu67SrGQM8/F2QkHUHMIkk53TswUUaeE4jOhgkrRLxK60fQJaiqRtpd6T/N9LXcL7K82uaBS7lhYryxCTD7FpLXfBBXX0Lx+Hghj9GkSFG5fTtfvetKM0GkRrvXdoSNi0ZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744587594; c=relaxed/simple;
	bh=W2jbcTolxmLJWWzU+z2zXgZHzQYm3EKgTjlANhMDo9E=;
	h=To:Subject:From:Message-Id:Date; b=YVMWOpslKg78WJPUh1d0n+swPozt6e/3QvGYZwrVnzqwZcF+o+Qups6Fo9hr7OUtAJMNDQ8cIOL9OhXx+Gg8rVrq9j20gHucnMIgdMYchIjFJaolMoixmSlMNlAsx4EHDVHxR0tRYUwLq7KPTVEoCVLaBYAnFxVFye9o7wt6zOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iLGOmq1t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iLGOmq1t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1821C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744587593;
	bh=W2jbcTolxmLJWWzU+z2zXgZHzQYm3EKgTjlANhMDo9E=;
	h=To:Subject:From:Date:From;
	b=iLGOmq1tFJAZvEWqcupfl0t4OxD2dTDQP41UC5zlSU+kKuHboIWCWHJik9HplUZon
	 SDv17e2456tNr4w6yNMxytbmg1Gh8R9AHJBlH5QGFiwbc+9qpEBuOM85oiUR/4YThp
	 cNIqHQdhoQtZoWUQZ/LIy7kf6jjls6R4+5ji6iolACgeuxrnAH18pIuCtyC0qrp8uc
	 xC4ko+Zce4Mjp0EKsdDCIpCCBsY6jPpNNsEPjthou5//MFJTaVLammnsqANzFjY+je
	 fict+lzho66tARkS06BmaN/JPiCMUzdRE1iVjmIEFR22Hdqs4rPvsBDMAlXuu6jf6/
	 TJ8jAueszon7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99AA4C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174458759360.14174.1095072503268952218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0c0f3e304e5aa3fa10a39a96374ce720c6ce656f665fad8460970bc2fbe8e51
Date: Sun, 13 Apr 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744587593
