Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43193268C69
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747735794; cv=none; b=LRm0Jn8iisGWpm0Z9ON1LzFFK0/tVl9T9TfbYqVyh65Ek+9ZfH11L4fFX/CC8zMntKentPa0Zr+0v0t5J6v2VhoOBQ90Rbxi8YksK6zi81+p9gSknwOSGQZAVmEo3LUerXCTFNPRQbEajZD7vu8d+74s8q4XBYtrOmiKSyj0flM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747735794; c=relaxed/simple;
	bh=elg9BJgO6DD7IGlBcdneaJHhmmxPXS4cYnR8Mg+YEGg=;
	h=To:Subject:From:Message-Id:Date; b=oKkvzaKjNhe5u3/dvgVuUSz69tv2Gj2VSX8Ss7w3GyYrO8BtNvcDRjiM5R6lYwdHZM12cu62d3o2KTthw/cfB3SOWoXJWq/oB7IoqQeuueBC63k/q/Ei7VT02KoDuwwN68Gfjp/iYc04hX5W9GUI3bFrDTdDPLYuAI72ONlPTa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D/nzv2tY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D/nzv2tY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4281C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747735793;
	bh=elg9BJgO6DD7IGlBcdneaJHhmmxPXS4cYnR8Mg+YEGg=;
	h=To:Subject:From:Date:From;
	b=D/nzv2tYqadJC9ckWz5ygdm/XEcaEH4tqQtE1xqIG/f+rNwGjIYrQC8jh7ZQjFv1V
	 xyIJXxi7K/lXP+QGlqbAGnkFSmg92r+kPjc+Htcd7rm9sIE5cLWC250M58vLElQhJI
	 C/IRjdjo8W3vLeZyw515EPgS0grSFFm6GBfItVi3jwM2I04p8+tay1TUHtHxokDjLG
	 GnrsDU0voMhot4HZEFvbWCYYP1+6hjpeJK8n8lseH2hcbzfd7qGitsgTrZCGILjwDn
	 DfrtGEBScIVsgbFpX76fJTN1lVD8Yta0tt9JJUBW0c2qbNxu0aqXLzkbe8QiupdQQd
	 h42f6+bbA+rVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921BFC3DA6D
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174773579359.1948.5153084607237813546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0fce052715e631060a31d05108e4833d1bfe5adf92f4a763871118cab539947
Date: Tue, 20 May 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747735793
