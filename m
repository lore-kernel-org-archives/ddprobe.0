Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 266391D7E4A
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757887195; cv=none; b=B0oEqPAjR+9bmDSSzt3s6NLcqBch3cK+b12aasuFGGe4bb1iPH08d/RgRJLcEcovlNO1DQ3oLVT3L+BBl86ac3kEgMh+n02m0SlkkfW7nQxaWLN8p1fvBmci8cGJpSsV5f3ytLpv3FY6UpBUlFSjOd+9WvH1+5vRunORV9Wx6W8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757887195; c=relaxed/simple;
	bh=E8i7wVJA5ELx/xWQb7mOsh5by2euNBb1Wa8UAs/t2K4=;
	h=To:Subject:From:Message-Id:Date; b=KKcaxa2UHy52Fl8FkZiiMiTqFHc+4o8wBzoLCuKQH1ZsOz2ji5DFpwNYxY5qgJNq4imsYQMaVk73vywq71MCa+dhB9glHclc6v4Jd5Pz2NxFDaQa0Gfy0xyebCVMIoZPzBUFgpfg/rar3btFxn0KtsHhAGJ+/Ce3QeoSMMyzmPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BY0gIgr6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BY0gIgr6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61AEC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757887193;
	bh=E8i7wVJA5ELx/xWQb7mOsh5by2euNBb1Wa8UAs/t2K4=;
	h=To:Subject:From:Date:From;
	b=BY0gIgr6HTYkBwatAQS/5Vv9vv3N6DTDD5OM8HizJehL7o+/VaNdD9hQpfOHZAdw7
	 pPjXUJ4NQ53M+V2MOKXfj4slq0RDGqQn5zNuMh1vtodaVaugLpQtk3oLiaUTIK/6Ob
	 ShPEBzIBDI0XRyV/Pw/rI+WeQt5Y3VE9BDhh+L5v8jM71XKOWW8WxmGDx3MWE8pYfu
	 +bnzuaUqx9pEIWFwPG8oeBtWLrutCWj/GO00yHRDihAOk6smmHpZSztlV74meNL01B
	 9gpAWWKPQC5aymzBh6GdBou74YoUIRrrOpmdgYolSX3ebskX0CcVsPX36s/S1GqsqR
	 iDnRNxNwt7/Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9208FCAC587
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175788719357.3313.1751479496021507879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39d936a4d23ec6b89fabf4e9a46397e9db7d6b68f441a438f6a783ae22904d0a
Date: Sun, 14 Sep 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757887193
