Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46B832F41
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748749194; cv=none; b=Vr55uvmWdlJc0sdsX/U9DiBOZOddKoSFFdXYin/6vn3rVCjdFHjfLvL4HW4L4pXM4YaL8p2cVjf3fn/nBh+geOO1T+Ju9PswO8FGWtSHQLG0TcdSPp3bzMctf86UifH18oCLt5LFEmLwRnZQK/I0Z3WrHOyRspqqlOyJ/FkELck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748749194; c=relaxed/simple;
	bh=dWY/I4m/ztW25wsRolNajexqKunAnxHZddXbDJu1hb8=;
	h=To:Subject:From:Message-Id:Date; b=VJXI83nDrJ/SLUJFdfKpcY3mEtU6TKWKcQtVd7YiWQhjinB/cDOmTWzdGAmUryKjqikqfDiZa7NFbxN+0z7aO55NIzL8+fAEfkM6xLovI6lSIVLfbsFcTk091M6v+rLciJssrFHVCc++Uu/Moa/2HrVVFIdofCON5edJ6/wv9iQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hTMdCMik; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hTMdCMik"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A959AC4CEED
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748749193;
	bh=dWY/I4m/ztW25wsRolNajexqKunAnxHZddXbDJu1hb8=;
	h=To:Subject:From:Date:From;
	b=hTMdCMiksAbusodX/+/pVQxRXuUbBKZNpEjlFqMEcGTDkUgZZ+CPgjcyyWJbVtAQE
	 WjSdujPqmFDmN2QGU6f2fcFiGAUxLHbs934vOZPOMQFo+FqPMLtqt6VASxeZLNopg6
	 PsLQg+HACjjd4R+jvlb0G48aDhmd9p3CrPb2T1eC6ihPqVb8cxsXKx37XSQkWIm+hu
	 S0MELUt/z4LwtZ7jfCdKSB6Qn3P9WtSSNW+sZBTbCHjWwF+XsKNcaTa1Y8a4fSv/Jk
	 FLFbdmATkg4PsnTP8W60me1BQA/nnzNSzhX4MUfExB1BhWRWs2wm09fHU7wTo2TJU0
	 zKXLO2kmwMXAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919E0C54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174874919357.3273.1477723654632966448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 518d59bb097beaecf015bc72a56e5d1b5ee467f50d7673a9cb5e9af4255b7f1f
Date: Sun, 01 Jun 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748749193
