Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 375112BD04
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745806194; cv=none; b=ekN6S0driA7WghQUaohibfQrjCKybbjYvCgjWPjmEm0V4M1CW6CxjnymLnjFx2sy94KcGmG1pwDbBorEa+GWYJduyHwQYGijtTdil7z1PdJ1vyft5vW+lKaOCsgVn7rCyDL6gVU7JbNMxNp6ivA9eZmY0CJM5+hKheX9jb0nX0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745806194; c=relaxed/simple;
	bh=4kXsVzMS8430sA3tZKdijBi8hsBzxHjRO/KcL/IyIlE=;
	h=To:Subject:From:Message-Id:Date; b=IQQ3BUDx3TezMyr6BOs/9WsGNOwzezlZNOLWqWgl5r9KmRSQzStA7cpqFjeIEO21qh2z8/x/xNedlTwdOwbaQ2O1RTSz0MpL6jMlwMpg9506lujyKT/56N1CsWhBO/oCBjjXFkFdZ/ywLaMvQhwXRe4XmP0ZAwOGvZGEi7fMmQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A2qFHFp9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A2qFHFp9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29C8C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745806193;
	bh=4kXsVzMS8430sA3tZKdijBi8hsBzxHjRO/KcL/IyIlE=;
	h=To:Subject:From:Date:From;
	b=A2qFHFp9RA/ODtl0/A8er3z6WIucGNV26jUcZvwV64gAjxviHrBy7SvvihkFtu4E4
	 EsRa33m6CPRlRbOSNYTHogUiGwEfJ5c9XrcZEjyXr5L2rSMjdVbemfpmOuCf1CF2wz
	 oDs9YWzOOwsWO/RdO7+pbxQDk5JNAKhy5PwE6FmTzcLxOe1EP0ZFrQBT4ht3D0CR0i
	 lU48+GAnTvxjQp0VEvDLI0ct85nAiNDlXXmxFj/z0fLTbE7A+BVO/2Cr8vVgsxfXUG
	 TV1cPD93l+054tfL/xP30ZKzMVCpHGt/SJ24cy5+yO/QtxuDXf19EQiUzS3WY/1ndI
	 HUzXKDSc2PInQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5BEC369D1
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174580619357.16437.16484375253785793005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e87246ac5a7cdac0ef30a0bc46907e737ba37247f33341501d53842cc484afca
Date: Mon, 28 Apr 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745806193
