Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C757175A79
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 11:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775992654; cv=none; b=Ns9cSrV0qz/AbYmsbi46ZAD/WS1NNsxFHLIfzKXkjxezo8LbMcOBel692ZZhiXtIxKQ3cbW5Iqhop4XErXHnpdnyhDjgWm+OaYJB0Kn+PU1RuNjIesw71iGYMe0JFCM8tTR6mbwxvjM6XBvjVdOZxUVdZVm/Lt9V4HhdOskUGNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775992654; c=relaxed/simple;
	bh=Pjm8Zg4AJ1Nv7zcoOzRRKlTLsALJg6KrA832ktSlzFY=;
	h=To:Subject:From:Message-Id:Date; b=d4Ak741q2Yl8XCcQAifLzyF00kJnUptkXPNo4+F3dpjB/EWoIKMB4VAnKLWxP4RhEcZKhnkp9iwoI5WCkPtAQWrGHM4Rqn/vAbFEwLiNM+xYVdKPxcQYnTDL1dZfKvFO5oAZUc+TsyMG2E3WB1lH2u0V6iBA6DX9GSlv+eoel7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QrJAUbm9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QrJAUbm9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAA78C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 11:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775992653;
	bh=Pjm8Zg4AJ1Nv7zcoOzRRKlTLsALJg6KrA832ktSlzFY=;
	h=To:Subject:From:Date:From;
	b=QrJAUbm96JtoRpFENDiByC6X0qe8lBBR8vrCO54NDvyN5aShA5+OdBSoJU+YFGQD+
	 KFBhnxn8Awkg6qOKHRU3G29ihqvuv5cInuvrNp1+WKMvxpO9lFwMKaCJDVrJJkIW/2
	 XfzF3bPk4D3qILcLzDLmY9VddemWgm1KekxwH8ZT0lICi7SxIga1J4+pxidDrUjJII
	 cvgjfuJ4aVRjfvdLP4ElSQj/CSHph00w4fvi70pFJ/uShpptC8ViKOdSe8ovcmStIJ
	 7mPMBwReM2yac08l6qWbOKfrE0cgSvKME4HsOfeBbvkJ+vJtoekuFtk2o45hMFZY6f
	 VTFcT029IG0/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA136E937E1
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 11:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177599265368.7550.17478689982070185874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c34721542a9e98983a3db5c0dbb4f04ec0478c7ce1749d6fe9e36db3029ed6e
Date: Sun, 12 Apr 2026 11:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775992653
