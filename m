Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B4DF946C
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 02:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764988374; cv=none; b=gJ+cBgOMmQhI6gNPalIXqnfow8YJAWrSsXVd+3zhCCneLSXk5p5/8wHknMu70ZBR0gMKyQFeir/iSehdeYjACcRl10CkBeNHeXxkNJxrga7OFmgP11nNsxKJIaLiRwRwZSn58lzAR4WnFdROgnnyaqJ/64VKRYNbj+7PsQo04M0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764988374; c=relaxed/simple;
	bh=oi+GW7wsua5fnL5qe4CkYqx3z4gHuYh5Uzk2SLHxEUM=;
	h=To:Subject:From:Message-Id:Date; b=i3fMFPlsXsdxVuvXk7NTr3pypJIKIG8Hg0QuAqGClu9oFleZRQ5BuNsz2wjUNq0sYIRVNEKju9qZmiqLTF5/+KW6wu5nGuPHABs7GkyM7qnyo2317pk+btoFHObM5JfEqSQG67BqYuf17bnWEx1IOY+Xw45aXJ02ZXy68fe095k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gzTS+noi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gzTS+noi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91ACC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 02:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764988373;
	bh=oi+GW7wsua5fnL5qe4CkYqx3z4gHuYh5Uzk2SLHxEUM=;
	h=To:Subject:From:Date:From;
	b=gzTS+noirrWswz7URckxOZTot0trRQg2vgcryoJ9Sa71AuNE7uZNscTSI+7d1aVYH
	 +3v4WpoU1UgEe4hFyvukEs/RLCfDS+C4p9PaoayxDqM7b0IdZHbI2yE9v/ADfSG2Du
	 mcKl4t04V/X+WSWuVfeIUKlIVEV0+5N+ZtdG16T2/r1mx467dAPiK67edhVeAnOnpN
	 xTgpR7GTIJzSoRK2AwVwaq7wKowCOyoMOgn7FLyZKEwyymAPY6+ZrNltfc87ogh+pv
	 qLrv8agiTdHGy4u7ZemnOfInSsutPQYaO1T/74zPTblIpNCsKTPviE3NtMVkYgge/t
	 IMX5+ExrjjnNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E6ED3ABE4
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 02:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176498837359.20344.1913890632762028718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcf0e3230cb54a36af0cbe8d1acb51a955c05a50c52b9018e4c235462e038529
Date: Sat, 06 Dec 2025 02:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764988373
