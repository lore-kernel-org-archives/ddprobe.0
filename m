Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34CAB287515
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759456794; cv=none; b=Llx+UHfOJIZbRVZnNHEmiMClHobHl0QR3iZVCPbOPNS8OFs2TajoQxTBPT88fqTQHKUYoi0lULgl9436PYcRFv3j8wAheMrwImCGIWN72a5jC2b+/oW2MT9zNd2TQbCL0jdjGCJNsUpak7jkJXfwhzBMq/vVtKd6ihpHYdkhieg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759456794; c=relaxed/simple;
	bh=G0y1smZnRNshjbmniWpCwyhSCeAuvGVz6vrOPZKjZEo=;
	h=To:Subject:From:Message-Id:Date; b=fkXNJJetzfdN/xievOUo+SMm7QE2eMbEEPs7JYBXHeu5M3yDi/7EpALIoCxhe8fRr8JbilTvEAzadHRa8RmTGmTW1N74QDeDJrlo09tV5bxnKpmkPUZGa5rdhNRJ/DLwj3y4TVOfTb4p3ZmG2SHJTcFhkoHznnwcT7oPFRevIXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nhDKD3t3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nhDKD3t3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B4CC4CEF4
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759456793;
	bh=G0y1smZnRNshjbmniWpCwyhSCeAuvGVz6vrOPZKjZEo=;
	h=To:Subject:From:Date:From;
	b=nhDKD3t3551q9JVLv/rE0UF6L77KWFhO+toppQ9BZmaJEjGWV7C61gyXiyQgI8lm9
	 BwPfjxgPMgd/LHZZQCoi1Xtdkqc5amkJj/nL4M3eIJmmJoM0ed7376OyowZIytw9ZX
	 HkCnQ0OXXorAqodMahNHWM5e7wgy6uWUYSy7322AiSWruPWlRlless/An2dLHEtOtF
	 Enfel0PN0b9qBzvXEOrwJB0qa+Uqs0IAM14l4lIFrC+LCBDJAPmsjS7aGkRf9bJomv
	 jPLHgYG6UewRlbD2IYMR+9dgIJdyKMRp0zDGwkFxfAD8o/mi7QUmRYhd1wmzWAjzRP
	 z9iwWDv8Gd6HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F210CAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175945679357.24308.5080227042755336163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a183c013659c57a7c3cb223eb10904b043f14533a89ac455a9a8c1fba79ad699
Date: Fri, 03 Oct 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759456793
