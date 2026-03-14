Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A0D1A4F2F
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 04:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773461694; cv=none; b=UQLeiGDJMq3CEgP1ItGhwRbRRLhyvJQU0nnkLH1QO03uvCN2cESThCUtFqA++Ttb89UMArWZkS0liuP41IQps+B+ASDCVTuRXHC1wpACilq6kTjetAG1BnBhjM+B4/JWNRGBKCPFIYGsHFoGB6nHErVfZ1QtdjxugQeQ5CPW5Ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773461694; c=relaxed/simple;
	bh=U8J6j+Uu9NFQc2WcVWO84qz0HWqUWh7Kqtk64cgxxa0=;
	h=To:Subject:From:Message-Id:Date; b=jm+Uo/ZMHWoEo54HEjcstn9UeoCdfFsGCQ+RYO9XiCMss6rND+rzZgB/xJy8fAPZuUWU/Imugy6VsgVF/CtOSW52o/TSXqlkz8SPKMdxVQZVCBAbqhZxh4+HRJ9Bv86q1cCYOWoYKOcIVzkqOdygNjgvTkVmObcGXHF5ifExQ08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cvySILUg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cvySILUg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68D9C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 04:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773461693;
	bh=U8J6j+Uu9NFQc2WcVWO84qz0HWqUWh7Kqtk64cgxxa0=;
	h=To:Subject:From:Date:From;
	b=cvySILUgSNLlLsCYXY3qEsHrYNLufkQIbmDWtDrZut9BpqlY1iNgDxrAlJgetyvCG
	 Qg9rVki/eixch7o4v5wEtgHVFRCYUymb2pLxTNv4fYBoE7hUCFFfzVCiAWmPCBPcOg
	 kvI6LzDjhKhNPo57ztRyUD3jUIHCeBD15mnRUwoobVVyffGtmNJ1iLVHlIGChyZocw
	 4Xj39l/PTS5Q4Sa4ZZuC/jo4LUXdKoJghvOtRIE1dftgEThzafaT0JsFalUgi2LR7W
	 GnDWK5xj5o0hQGgLYXdQYIwSH50uSnjeJhO7oiCtr09dU46N7jUToaFlSzzCS0JHtD
	 zD0J91iSggSpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DA9FD88ED
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 04:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177346169357.28027.6742124265346101759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c1026e8a668a13cf4761053340253659d9a9512788aa93370e4b6c5fea5741c
Date: Sat, 14 Mar 2026 04:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773461693
