Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E53FF9CF
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727598954; cv=none; b=F+UHj0I2E0EFNpCD9kOVUbZ+GjtK7BmV3DzNlRR7f+spPUtbEkJeaAJVLVoiDTBk88o/w6XPqb3gvZ1WigRRxnZ66l1Z6TTNv/qExYFxJLvL8sszxaCTL/EflZ6xUH4zinqNZztsr7pGAi7UkzNNKPNxR0PzNH0R3ZYJZbrgQ+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727598954; c=relaxed/simple;
	bh=X9+M2jR/1GNeKBIXH+/87BU2WIZi82WsTYfiB9YrhNw=;
	h=To:Subject:From:Message-Id:Date; b=IcgHenSHz5SJnoH7Eb0EUS06hHP2iol4hh6+LealAL0L548HiAJjQ5Za8lRNFDoAm1dx6DdPw9G8vfCxfAoH+xyonQvXq0q7bNPvZmcJqCiHlAVa+6eOF7DXnyBCwo1RnBBjAwhNyxMYTLYtH7QwC1IpYdqiScOz+hvkrdI9Gds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iYp2PAxn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iYp2PAxn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B821DC4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727598953;
	bh=X9+M2jR/1GNeKBIXH+/87BU2WIZi82WsTYfiB9YrhNw=;
	h=To:Subject:From:Date:From;
	b=iYp2PAxnld1Ng36EJBsQd55Izosi5xU5MupD0fitBKDPujTrTY4djQFzQs2PD22wu
	 olma1/GO+latTUhNHtb48rTTx789HEe/zK5Fy2Ok3zzqXgLcfRFv+EFZbhhdFd0hGF
	 7JrsCaquhPKIbfMQhWs9QRzreau7l1+haExBDFaVS0UPElltdcr59jrN+ikckDGj07
	 vPn2wltB3sWLjNd5NICpbbdTsApHUjwEXYSGWvWcmwLAnhXH4jdMHcwQ2wQUhKJd3U
	 kpbHFhweDXcIIcVhX6DgP7bXAscngwBrxcjpHhNPKemGTRt1NvOsLjWMOKHI++ndaT
	 0gmgYWS77yGJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C547CF6495
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172759895361.21899.7022184131300973018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24b058b80296eeb00eefc9c3bba55a5a43ec7cd4961c921a9cdae5eea0207ec7
Date: Sun, 29 Sep 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727598953
