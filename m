Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 392CD1C5D5E
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 15:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741016334; cv=none; b=stfItAfp6SleNYyHZaXYcLxSY3DKrw4d5M1CM+Kr8wQLjat9E06tVUHYmCkHz95IQSUC5zsji356JOI+YAyUTWiYWqHG9BlfRBGIZM7Ujw7f6EZwaavDiSiRz9IZsA95jiR34yicUZLtFR11+HV/Vumae6FnmVJ3TcPc79bOS1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741016334; c=relaxed/simple;
	bh=VPBE1rg8H1WZmLpJ1Y9qyhsHcvfpDqeJBQu8cLP+B40=;
	h=To:Subject:From:Message-Id:Date; b=XKV4Hj3Z5667b62XBennf1txB6Bo1aUeK/jD3ESNTov9PNLkjpDiUqFM2NkTyoQdl4QYdN3tbfpMsdmEfVYZaJIK7p0ZGDkNDFIqBhnBc8qzZ1OJp9fuZxplimMwmoDl9pdXY5977dPhuCBZ0ZyiWEL1R8zQ3WzDlX/tVtIX1W8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nYrW3Ux6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nYrW3Ux6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2977C4CED6
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 15:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741016333;
	bh=VPBE1rg8H1WZmLpJ1Y9qyhsHcvfpDqeJBQu8cLP+B40=;
	h=To:Subject:From:Date:From;
	b=nYrW3Ux6dsirbjN7sj3+5JKfPpyNPj9pYUpuFvsbbm2bJNqE/u54esZbxx1L/vAAp
	 /FBvE/gGOoFA5KIeBgI+4+9P/2RYhAFg4YE93voituDGXuDiOJIbYFjhBjEhFWy+2O
	 H5kAmxjw0VjyAUEJtM23P68G6lI45V+XJmd3PurLUpY8Li0sqygKVuyycxkue7xDoy
	 FaQH/WRqPbIF5t2CiY4rWNwJwHFP3PC2cUq60uDUg88RqasL/CxRywzdIdhU+n3Lww
	 yfwPQYn5C1WjZvN56/JyFpZHR0tfhd2iTYRCGHuN0ug+tM4baou4bQLfoOlJ535VAU
	 GP8o3mjynMpDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E577C282CD
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 15:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174101633357.557.11269381051374126598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d159eecdaac802538a773c1f70b8c919a048131768f87de9a4fdc5fbff4fd851
Date: Mon, 03 Mar 2025 15:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741016333
