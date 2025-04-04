Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEB821EB9F4
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743769193; cv=none; b=sobKRF2qLX/knU8nzC70+UdxCtsnhf6XZpiCi9P6F/LE3tbbpig6CNc+mdILxg7en3WBwOUiRlzgdmE0RqsKQhALRfAgiF/nBO+W8J2YGxZ3dg1MvYm5Ehx7hp029AGwdclI6TnjjsjTtD4C014AogdLRV/9NIN8FEZLUL8dQw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743769193; c=relaxed/simple;
	bh=bqFSBBuzzGEaxNRUAdUoQExAmr1OdDQcego3FF7qHd4=;
	h=To:Subject:From:Message-Id:Date; b=FO+9EXyETN5phu1C51TwE2Xq8NvPWZJ2OYfn69J/Ah99HUFC0pIiQnohtvwfHLtTxAWqMDKZfBjftUkmVsVNKomIU2g6jVarRVxmCxfDEE53R/BTtFnZiIUEMs2/dV5N9Vz/yh2jT/PDfMWF/ZYvqX4Lv6ZUBpVvTih4IYhIGC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G4ZzmNL/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G4ZzmNL/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD31AC4CEE9
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743769193;
	bh=bqFSBBuzzGEaxNRUAdUoQExAmr1OdDQcego3FF7qHd4=;
	h=To:Subject:From:Date:From;
	b=G4ZzmNL/+us2tqI8EfNjHxx/jmlIiF9payRKOomDHznzx8DHWmBV4zzR0O7OvnhOz
	 ZI366jw5ey4GpUpeFoBQd64/5vjSLo2iO0bpWcvSpdQWCDcsm3YxQTg6LMLnkWPTDQ
	 0BoWMMz4tWFi7L6tixXXY1jY4oqEDJ/vIX/L/ShHVk76ZQNg/fQqT/aq9nwsQhescR
	 m942GOwIYeEYiv7egrya77EzmV7amZZrg8beHfVTMzYNsbW2VMJDT/BqXOWJ9exznQ
	 8zmniaArbROlmsDblvo1nIHkvUeLIIFp0SXSBz1ClvBmydw5rJB23T0UDAS6Q2hHzd
	 km49kFV45/d+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 986F2C3601E
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174376919361.5828.9050563356058550094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59b4db273dc680e3798d493b79c3874a35e18b15179822fb0d635f2a200ab592
Date: Fri, 04 Apr 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743769193
