Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 214E32ECEA5
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 15:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765209174; cv=none; b=k6vMoftyfpUuCj3iDM9WlN/GhZ3h0AuILp0CMlhKFiiZKIK8mWsx2AVoWy7URV5OCIG83r5lBCMkymHz59qZwmFNC+fToUtkAQwrntDLJZexI5dsxFtMdNj+mTwXrW2PHXEX2Xe6vYoa4hHgGT4rRJs2grjAZyNA5S5Yt1ygN8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765209174; c=relaxed/simple;
	bh=LE4XjCy9L04GNbbFUUJkmDQapahfSKe3+xBM5cKGmMs=;
	h=To:Subject:From:Message-Id:Date; b=LQJmqjTxJg5xH0un47R2nzlSQzIFcCKXfeSWLcj3Oi+veZ/Lw2sXIkaesmN3MPTZGr19tYJ0sQMQXMDAPjvvab0K7ayhmV+B6wELJKoDU0zFg8uF2/sdVN9cj4Zeduzd47hbJ2hRElJEg/uW5LNAnYMKJ/N1S1nMtd6mZRKivQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QTRx0xtB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QTRx0xtB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4226C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 15:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765209173;
	bh=LE4XjCy9L04GNbbFUUJkmDQapahfSKe3+xBM5cKGmMs=;
	h=To:Subject:From:Date:From;
	b=QTRx0xtBtPt9jVbgQb6lutRhy3TgSvKs2mOuBCCTnidMsUW7Fmr/vouv8Ks6223Ly
	 te9shZLmlEYaAr0Noy6EbgCxM5E+cPxofTyB5ZLJc2jVUQGaq/wP695fCq/m0tfA9U
	 q/KTJEZzRuhM+viGj3wqWY/SKyA0cB37krzbSFCDOPS78HPduE0eLTr59pgsinvALu
	 EBqMX4uC/iKEf0qs1Fkxylk7Hr9gQylO0JelZ+G9gpmqA56HS5yK4VIU7dKCQdQE/x
	 G24UW5bsFh0j3RFYwDe611CvfIiNazZQ3w5CubYPdacJHtx6rD2EuyxUM31Uyf856d
	 yglvtwSJa9tyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9118AD3B7EA
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 15:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176520917358.20163.6697893530359741561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71e008c7ee68f47af0e42e6ac311fc621b8f3959bfa297116ae9a4fe8b6e1e5e
Date: Mon, 08 Dec 2025 15:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765209173
