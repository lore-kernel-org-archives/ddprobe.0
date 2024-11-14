Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA1018B484
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731612354; cv=none; b=XP5eNmO2oLECR5rjbyCo14iuxAV8TeJyHHV1tmb86BP1qmixL/DObjzcT94232Dlt5nsLMMbYbVAO8/eguQGCm6tDBdM+3WTi+oyC7VDrVN87HYEvAmz0C2if4Unxzu1jpwbq5rugj8vTXb9RiGak47mWcm0HoRtEau9f2hbZBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731612354; c=relaxed/simple;
	bh=517uvkOlwJMwngxRTPehjaNT7w9CJFo8yV75cpDs8bI=;
	h=To:Subject:From:Message-Id:Date; b=gWAX5G8/AA/43Ha+zrC3QEOysolIUmRH0MwbnGTF/s6Bq30wCsFyrNhEpiyv77wmLzYLCbKatb+R6mXBaKKmJ71bXxQM+rqdWy87d89Dxci+E6rMwTSSS2c25jsMdNbI1lST9IZX84172ANK/y7VPmMcrFRPnTQtzed/ojBkeck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CxpUyGJf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CxpUyGJf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5218C4CECD
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731612353;
	bh=517uvkOlwJMwngxRTPehjaNT7w9CJFo8yV75cpDs8bI=;
	h=To:Subject:From:Date:From;
	b=CxpUyGJfHB6Tfgk9tleeFg3kscr1ha2gTPBqwDGS4ByKg55BHAdItZqzNziMCz1cx
	 wCivMFzTTvpHcUS4nKLXtQQgO1jTGtZTpKXhfhY6Cs8EEznmnWBrXr2+cvXHInpYR5
	 kfl3H4QvOL7Y40jevfTYzfna+LKN8Ty5WrntRXdnTLiaBZ9eWHCH5sWwPSnD/MHjav
	 QL7nwUCdWQZLVKsia+D/93Q9sh+2UrB0KkT0i63MOeHwZhk1azCbNwoB3/drhdMqtM
	 qVYvrV8ck5CeN5q/J1+87pw+YF9hS4TlL2fCr7EwBNkawdQauGu1nwLzNejRbnz4QB
	 AdTKEnFy5BmCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D344D6A228
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173161235363.8230.7026238412897817199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ab1f0ebc8100b391d70072b3f443ea8446835ef98a49e1d3e6ee225a0aa3402
Date: Thu, 14 Nov 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731612353
