Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33A6FA29
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 00:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722732355; cv=none; b=oHw8UJESsuMwSWgsAjXQqA2bqLxd5PNB2ZKrTZN48EJTfHrYh2/B3cRluK1zS0odKNhYw7tzUJNIgj0SO2h9ardEnapA8pi/Q4fLhmL8B/nmDT1DqFPBL/TThzose2y2oEKaPnDtH38XnUEJPt5Ua9GrTOqV2Z/OvankiE2yJ3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722732355; c=relaxed/simple;
	bh=4tNDAxSV1U+pp6bzHju7tjLJuLMkaBurGJwt///Ax9o=;
	h=To:Subject:From:Message-Id:Date; b=JCHLJbc8KuFgWAsc01LK2MBlnhjvbt8emLy6oGTYiNL0HLRs7VG/XpWeYj9cDdc8+sv1lzmRzmDwbfUa2CnCEsPjtxBVaqumJZ28PSPEPO3oddCzzeu4jERpyJibcv5kRAQooezHhugMiD4sVZvk2wGHrdxERaALvAiZdQEKi+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rG6Rgq76; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rG6Rgq76"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC100C116B1
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722732354;
	bh=4tNDAxSV1U+pp6bzHju7tjLJuLMkaBurGJwt///Ax9o=;
	h=To:Subject:From:Date:From;
	b=rG6Rgq76GXUqcMbe2shpTJOEXonmHFA44BT5lNyFMBr4hWYzh6FBaw9q41qLc4Zrg
	 VuO/yRq6cMoPBJCVg0rZUm6uWdk/gepoLaWQf5yHU64fUEgso2U++nuF/dzjYYlIPq
	 OWlBWM2OzUEbwfxaL92exej/Aaw9TLG1bvlGg9YbgpdyxMTjkCpGAdEwBJ+u59Ve/V
	 KALlm4eAdjEnytHDvRUUd63fdwL2uoiVJ9y7kY2XkZu6j+w+u59e9cyseWx2DpBrFF
	 aP9m/jXQK6vyDZ9E11DSC95f0oWNO0qe3hr2vN9tK7X+cYYnSv5bdHg+Lse1yYyyOu
	 1nBun1N2dzEkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3852C3DA4A
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172273235364.22118.2330020792001424759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f96d53de290828558734f5bd06e059c0c4b22851466b2d8486d9d552f22b684
Date: Sun, 04 Aug 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722732353
