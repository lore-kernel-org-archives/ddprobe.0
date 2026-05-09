Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A3FF2FE056
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 08:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778315854; cv=none; b=Q4vsWdb98ps5mheW0BTPgy0Jv+08nVAFfzVA7bwugsp+wD99qINk15vZmv9pJOMkttEzF4grdASQnOjZc1uPWSwDrFmU79vXNIVuWIr4q6/PP6HLuJPUfyNi4U1L/cV3AmRIqfS+Y/coHu+2/+KRjgAubeJNXM/NLyguXE/+hOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778315854; c=relaxed/simple;
	bh=1AjsGs1sCBhignzK37Zx+NenmChXW9JvQgIPvkDWZHA=;
	h=To:Subject:From:Message-Id:Date; b=uLhPfdduxPo9Upjmheo5jLVd1aUbZfUZVjY2sxfS7S+Itg/kEsk9/8VA2lVQntCCiQueNEV6IYGuZB/GGwjloXkGd6DpvIlJt3ARpJO1k73HmSVFnH4J9XLxfI1e/sWtxfkgeb0wTwbWLSUeNiIxhrEHpgQICpEsHgp99mAyM9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HpWACV6D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HpWACV6D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 19697C2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 08:37:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778315854;
	bh=1AjsGs1sCBhignzK37Zx+NenmChXW9JvQgIPvkDWZHA=;
	h=To:Subject:From:Date:From;
	b=HpWACV6D0QmNSz/94kE2Wjjvird309hW/nfhFVZK0yXlEZipTwHeEPiiRLig61ULZ
	 e2ujimJ9lxFfYemOKQIy+gVh+BZ4qOjI+GKqM3gLv/kHW5aZmrrD7B8nNZyGcXNqPf
	 XuHUvjYQh+RFRPgG4+FcjsS918K+REBxLQi8hruD6pAmB5GZXaKbxxqM8v6LcbzoQi
	 PeLtM4gIZUGk3et1lJMl3FKouYK9MWUZcUJNqUDp/WIXwxC5GG7fiktYXcqtdQJlfJ
	 UE+0a25D2Nc7WeGRyy8hG6464b7GibjAo/2n/dbTQWkEDpefaE7SKdEqoghrTTMKld
	 lP6rhRy4F7EkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D07E2CD343F
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 08:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177831585383.11005.1214506427917847622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8481a101a5cf478199a55756fe1c294eadd67dcdf1dc19b8e0a742a2773f464
Date: Sat, 09 May 2026 08:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778315853
