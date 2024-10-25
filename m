Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17D841C0DF0
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729856154; cv=none; b=psJ7SaWEXAtqB5peCj23sdWHhavuE2yXb51c+RrTes1tE6flAM6QLq6vnTUryvDDDALJ8iZHVDPhDe++m+lCWdjlGd5R6Ur1UDbLbIvbPexX6/+hCEB4LWytDHXPGbuF0CgJR4fsPt3RMeUQe4aZ+Gw/75qQHTcbUyEyyQgQJRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729856154; c=relaxed/simple;
	bh=tyS4vpvJGTWM0pTDs5HzcsNEalEKfTCVeJOM68okymQ=;
	h=To:Subject:From:Message-Id:Date; b=Ucr/OjppF90dxlV/YHT2I7sKS5O6AlOEewPYG17UuiLq6yMQncAxUnXp4AkIt+yYh04XHnSZoZCLio3UyUDgTlGv130tIta9p+edAoxSuN/goMirNbfoHDmUDzsGk8EbO9GeUl4n0SqjHs2L33K3BNHwum98O5kZc8iBjD/6v9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kiboc9Al; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kiboc9Al"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA086C4CECC
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729856153;
	bh=tyS4vpvJGTWM0pTDs5HzcsNEalEKfTCVeJOM68okymQ=;
	h=To:Subject:From:Date:From;
	b=kiboc9Al3VjS8AF2UhtLxQ7cmSVc27rpPcAs7XWgqhcHdODchHetGN7T9CNcj0L7V
	 ZYn1ZzejhKhk2KMXjKtjtzOLvuShdhCdhzY4M68Md7DbUIoPAJdwQihnguuzRFce99
	 qW1qLLlZkVmP8OwMQazRAE+naG+NCL+YEs3k84cqnV8apiAb4kxGSuDthlqvrdaMTe
	 ZLlDgPsXzFYwhOX00Fc2yfYowP7eYF5WRz9bTNK0FNqxJ5jri5l3Pp0vS7YSNCvc6Q
	 soFOaWUUrHaT87wBnN6/gIEMxmieH92FY66v81hrNG6EQHVbb328uz144jihIDPXXQ
	 +7IJ3HRHj38/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E3DD0C601
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172985615359.29047.10222518883347597316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a04851f07f3f1c935772377a1585c9bac34b97d7fe91d3b134bc801613e7d9a
Date: Fri, 25 Oct 2024 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729856153
