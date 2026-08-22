Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5603B212FAD
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787436634; cv=none; b=Q1JtXRRqvljaryxKQAJjte5i6W5ttcn9BY7QDpWRB0VvaBsIROODsX687BfRSvcbHsXLaYYAQzd2tbv/kmusntCua3cb54OcVSx2n7q13REAG7E+yR1+Ug3x4V0nv1NdaFRQ/fg6bZZnFQZJh77JXLaLhtRmVc9qbTpFbrZaWFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787436634; c=relaxed/simple;
	bh=EF8r/nPoLrJSa6y67s+X0habnL7pmB0AmWhVrdSHozo=;
	h=To:Subject:From:Message-Id:Date; b=h8s759LSA1QKboNU0ymoxdy8GeDshediAUnNGjH0oNPJ2fwfkvPlrC8niXPmQe3HDpDB5GgkLS1Bd0HAJMgLtx9xFb/tsTzoOlJGu414Cc39NL8TzfVgR6ydHQi6VZFVw1HTumFss7wHDqHIZZND1osfbZlxpovavrZ2gHajXeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vAXibSys; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vAXibSys"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA13CC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787436633;
	bh=EF8r/nPoLrJSa6y67s+X0habnL7pmB0AmWhVrdSHozo=;
	h=To:Subject:From:Date:From;
	b=vAXibSysSyaiYSvdrJRWbdhs4roarIKga76dhnFJV0Zq/vOdJAUYFaQn6kINHGXsG
	 XA2ZrfjM+a8e4eOXi2WNRu9oJ9EgNs58RGmJEwQj+lijQ3EjV7ERhCtpgerC55oLtK
	 8bNUSUpPeKoEAM6J7nxhyVluc+AFTSW7s6dBeHa+5g4l5Wq5PQ0HiU0YjZEd8CcQLZ
	 GNvRsLmCCoTNVAxH3fsF5r7EMGEEGxYUYlgf8622qqIKsJoSfUoFnTHinu5RhbqNfP
	 jkWGnu0oGYgzx73MbIq3NrQh8e7kH85WK1BUTRP2PsyT2ROWuA/9m52xpGyY3PO1rA
	 avnHk70j2XYtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B60C5B572
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178743663368.29143.4599545958265497697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0c97259531e2c4b230117e176e0c766628c8fac87d6828750c08e4ca1ad634e
Date: Sat, 22 Aug 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787436633
