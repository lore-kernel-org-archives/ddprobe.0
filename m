Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89EB33932EA
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788602434; cv=none; b=iRql/+6umSlzSk/EqjKDRxjyyrH4k8A2yGirPoenSv2vpXAsIslZ3TP7lR74sV/QCECWcWQqzYPoCTiHSvW0uGi+DrBoZkqWBZb5zEKdYPcPkVYRKBcaP9Yuzk5B7moZ5CS/QM+DCOm2BlUoFC/Dhi72oOnzsva9EdwSi6g/Iaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788602434; c=relaxed/simple;
	bh=9uV1s3yLnnoq/z25UrPT8AEsgF/okLegd8eSh1wSDlo=;
	h=To:Subject:From:Message-Id:Date; b=Ix/5bu8G5w48+n9yJ5KCqV5WwVRaUCFAs9mPqoBIHermMqN4O8l5C76cpgTxDdqUgshprEXuIJ3yf2epal0uWDnQb4OU5XWHFq+o0RdvtTDMlmplOhEaUBN5RZ683lHN4QYam6133HOy0vAAmkLvRnm5yE5CmNvW0/09xoESYVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zz+na+LD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zz+na+LD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2D70C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788602433;
	bh=9uV1s3yLnnoq/z25UrPT8AEsgF/okLegd8eSh1wSDlo=;
	h=To:Subject:From:Date:From;
	b=Zz+na+LDOu73B5YxtqzL3XjBjU+XTKpwU1jDKWedJZ6X7vVqG4cGxdJ9p10tikPt7
	 TZ8FTJ4Isep1Q3JJQCBsgnoVO1n5FW1/tSCa6T1wjpx+kKa03Jpc7oQl26hNN/AWoA
	 R5TVnSLh7lZ8QXsTaq+fll7nlhGFo3uxiKnwVaiZoYb0VZnyTsI0vf7HeMGmRcWl57
	 IMhB1q/r8l51+3MrDgQTD/IQnasEv7lGljQ13J7Kc8okb0e86+rGRQUZHjij2GXsXe
	 R1vlKOuyoFCCLNA1wJ6xCblkiHd8+GAh7G1HeqcdZC1HwQcg94th0Mds3c7IoH7+qF
	 zUMXE7X7iSjmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC75C624DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178860243369.27782.13650306864201911824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cff478b28377113f0fd6bb0cc5e0fa71dbb518ea475885dbf9f21844d29683b
Date: Sat, 05 Sep 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788602433
