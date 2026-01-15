Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0954E2D47F4
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 19:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768506234; cv=none; b=KAZvCIHfg8iFZfCnJdeueefCUNoXvAmqhn7EMaAsEko4d7QmfNKXzz0b7i5mAzBlb3EWCoDiSdx/u9266syDqD5bj27JS4+gaxlrQMQ17JR3xxtF/zIZkL0wOHJDdoduwtyguxusdzkuQ17KXJeFCyxxKJW2qSZgAi/swjTIXz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768506234; c=relaxed/simple;
	bh=mOARTuFnC+guqx27oLN5ip108kv7XRG+F85GeM9NKDY=;
	h=To:Subject:From:Message-Id:Date; b=EtJY5lv8U6hxf/3b9nXFefQwiSCOP5bEVqeoS7AlxMDs2xOqk52nIqkdY/UvHcqk5E46rZ39mPS4LtVOzaqlxwNti86k2jgMpN4cqJPQsj+PBjhLJE8kG00+5+G6mrT8ShCFoSnHnhoCki1uqK+nePCuFIEPCwVgR5hQ8cMUPnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eHm/z6I4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eHm/z6I4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14E3C16AAE
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 19:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768506233;
	bh=mOARTuFnC+guqx27oLN5ip108kv7XRG+F85GeM9NKDY=;
	h=To:Subject:From:Date:From;
	b=eHm/z6I4yh5zp2CPyYVxz1YRqWPvDdR+kbq6pwW43h9YVOFuo6WIwLn/wquFoySSo
	 Q4thp5RThFJRMvRWIjxt8D8G0HvKfVmGScnax1IlkN96sLgbNxgj03JrySS12LqQwS
	 nYCSuWG5Tat93Z3KSGsbro2NxGgS779ICAFKq6xBnu1a8nmPWfj2O7SHW5rUtarln+
	 DsURUyUtDs6JlvilV6w39yWwYGfD3sgBO/ONmEBl5dem2vbIveykYLRQsQltcDD03k
	 XfY2IbN19UvMSTzDvpFhubqwMOV9DwHoIE7TO2F/seoBBrpR9WKMsg0Q8fOlmNUDgp
	 Zq3VK6Ct89h4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903ABD46617
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 19:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176850623358.5114.9705539013412507862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08b7594038ae28006ec445905162aff95b75cfb94dcb85ab67e7b6c87b6ab944
Date: Thu, 15 Jan 2026 19:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768506233
