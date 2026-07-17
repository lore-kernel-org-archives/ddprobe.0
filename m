Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B12D30EF6C
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 17:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784308114; cv=none; b=L/qpnbFqQG1+ZRBjUapXnUnPqPyqi+pieuWG2noF1ke6lMmTTF93UhjKWOS92LIwTmBNYMbmx2QvQa59iu06niGNTNbebLyHhk8ROJ3cQYARclj6usB7YivA/YD75yFZEzhMANP8ONTf4ss1BPaWvtlRy5Inmi327p/zWXKzSFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784308114; c=relaxed/simple;
	bh=49Iws1oz15Pumk9cWVtdRWV2cHir/mHShjPTyMs9Bmg=;
	h=To:Subject:From:Message-Id:Date; b=g6PRqH0cLvdPvTem4kfYzEsuD1UE20NS0ic7geUS/tYj9JHCid7UOuDwvvHRzsiRML8D9w8yervbfvafLmHNYqnJuc3am72ACXMaSaTh8C4LqZBTUKKW7uKGUFNHEcN1lLgnZUejxo4WinHpreJzKGU5ny4H1xEwLXIgtuFDEh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OxOHxuqI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OxOHxuqI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA232C2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 17:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784308113;
	bh=49Iws1oz15Pumk9cWVtdRWV2cHir/mHShjPTyMs9Bmg=;
	h=To:Subject:From:Date:From;
	b=OxOHxuqIaXdZ50REaOLA+WGdSqF+pNdiWZ+vLm2ZrvDC8XGnE9FD8VxEiOhh++0QD
	 j4hp4mwGS4TZq6fdVdZCE4BBmlAAuqwN8h8ajzB4PjP1/xjeLwzsUDN5heTk8kBXq7
	 1NnXQBDYoB//iqBHmagGbnW7rr/AjiiIjNnta+mLSgGr//ZMvh5jqZglg3808Ri8IA
	 urkRTyhIjB3jrcdgT/O5w+cWgl29j47S2VNOVQ87q66u01H4YBaXQbshPDYMB2XhVc
	 81QGAXmADjTCcguiOLljn/v1tr2657g98zIpsf/lLGI1jkyKlDoIEFjcX6gB2biqUV
	 lSwoezL2hBIkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2E60C44515
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 17:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178430811372.26528.10615534433153001518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d8dbc418e93ab6fcf00268ec05799b714dd9b2c1040340ab0b1569016d50be3
Date: Fri, 17 Jul 2026 17:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784308113
