Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D32BE42EEC1
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 09:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778838033; cv=none; b=gwLPWFRGXys3alR5wepozXnbT/xK7HfNKJEj+iEGxRtE3mCuMpFY/qDs6ythyaFmgpa2O5gLfbD0onVV8F0Ql5hoU3RHEal3Kah/70UohBzFjzkRUcxcimOQTS8ijKSBnMdKqyHc8dazk9C+P4G0mc+E9sjCgtwYGWQewrqtotk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778838033; c=relaxed/simple;
	bh=Kpvlu0/8Gj59N2AiZvvgVBywHsFgy3Rx1ac5du5eWYo=;
	h=To:Subject:From:Message-Id:Date; b=f8nPIPQUHoszBJCdSgyI2msOBHI3LU6czYHLtojG4Xk7LJgoYM1AOGhEfriA6KIFVC6GfpTiVwahYhL9/XlY3dJZt8+4o4bQ/1Q3svzMTkGRmPo8FInBY/PT9ydnQOlBrdZ+UDroiBYjBD5L9BpjqhI/LUZAJJ27OB9o7i+Ndss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=smgvmo3N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="smgvmo3N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B766FC2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778838033;
	bh=Kpvlu0/8Gj59N2AiZvvgVBywHsFgy3Rx1ac5du5eWYo=;
	h=To:Subject:From:Date:From;
	b=smgvmo3NFaAN4sMiq/MpiyP1ZBSVeuTMlD0hB45c9KEA91QHzYXdbD3OZpdppmknK
	 m+QOTcib9xcVYO2c9v29HcLfMa18rtTL0ahikth4ZbLeb+liqyHthdfzMzbczzpka4
	 9PCP71sBZrG1v3yy/q5vCsqk3nmBKkmxzu2mc8RZuZ2qLfcJXMGz+w1T83cAvgwj6S
	 3dUtOvXHFpi0dHHRqxeK2nCj4n3fvAjEz1A1qy7vOpkc+A9p73TdsoV5ERxUd33usf
	 o8ty0pTXDVUz6s8ArnI57q3G+PYTHjiu+3+qGjSbpoQSZgYouDpDpxU2TqxvkVIa4V
	 cJbvBXseLJdlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB12DCD4851
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177883803369.8828.18051227704444078658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b27e3c442887033a1160a8e9ffb981a094da5fc6f34465a43a2abceed2ecfc0a
Date: Fri, 15 May 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778838033
