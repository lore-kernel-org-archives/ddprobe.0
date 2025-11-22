Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B1B2E413
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 06:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763792514; cv=none; b=eykJD0JPtBcitrOcbviIllvA4+gJJCfjKnvPObhJ4xwDCI2B3iV6VCJTlZ/oAzbkd3UqFC8px5ogDAR33IfySZrceMevDwlQDo2bvKuhE0DKzPNGXZPlCxftQ3d2xklmraFz3CK6wJVIqXMRJm1pPTg/B3Q07oiKPQd/hCYuV7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763792514; c=relaxed/simple;
	bh=pzFTH6bDros157Y+2VpbQM5mgL6WnREh2wirAbytBnw=;
	h=To:Subject:From:Message-Id:Date; b=t8WcDV5PM5CgDZnXrosQBhS3147UaJbjvTIU4BPZpqqiRzqZNTVVtMfTCrFRkHrRUk9lUYS/j6ZMtjHPWNZ2SoKumvDD5540nj94d5vkcEh/Dxy6bwG5PItXFsKaJTnzXaFjkTPMdoph6oKMlbQpiLXXjFww7Hc4jrzhcOk5qzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bagqIL3X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bagqIL3X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB89DC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 06:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763792513;
	bh=pzFTH6bDros157Y+2VpbQM5mgL6WnREh2wirAbytBnw=;
	h=To:Subject:From:Date:From;
	b=bagqIL3X4F7+5q6ZDmbgZOD1kNilZIl25zrFtUB45AgIWQ7b3joji5/MZ65Ul9HGz
	 BN2O+v1dTvC/dW1TulYHAX/huLzFaIdwGin+dJOAXx1ut/wGLBY00VYWuVw1haxRKR
	 qOxhHI0yvT/5ULatCRYQ6Crebn8JZ0EeM+s2if9nVFB9E879Veatp6Sg51xjahTBs0
	 xKlq8Hvr8zc/nVwIc6OL2WKsSm+6pinz6fGcvZEzh9pLajp1GelxRanWD2hVgtutys
	 P6HnRwcf9LqTYCCT9MRFfVYIF3LA5Y3yPk0yOsiurbMh1GvXVglnBixgL3jADo93R2
	 5yvhQuX5f1UbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949FDCF64B1
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 06:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176379251358.22527.12210903280793721038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f14f2d854bd90ee20c48264f73322ad433562af76a920b54afc64803821167f
Date: Sat, 22 Nov 2025 06:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763792513
