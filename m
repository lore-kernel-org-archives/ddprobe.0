Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A12A1632DD
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 16:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776616654; cv=none; b=CANRxY+iX9DnPUVJS1x6JRYPk9u1jO08cyaLRs0TOpn8HGFR5UKRQWoOFzniZnz2LUPuxHWgY5c/tKVFXJqLAqEbUhUobkzRyCxXHtd5OOplYIBLqPRQ2sS+oHG7yucWILsjWD1gX3vYJLcE9rk0n2tE9HbDIBYrHKQX+7R86RQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776616654; c=relaxed/simple;
	bh=ZecVGlxsD+xiw982GacusA05bDwB/3R4waFUb1xRJ1I=;
	h=To:Subject:From:Message-Id:Date; b=AD4KU1WKWPu4XpmI+foebwleXSDc4apj04c2piW1Q0T171oyjcHfnOjNT13PEviapes1ehaI5hkl37sLxr6d0sNT1dy7w6fIMBtY+WbsSy9eHwbIvEvmlxjI/cW8Y57SNbU3Ym0Iad8LT1dysEWnQR1HGM4pjURvks9WcElEFRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D6xk/gQG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D6xk/gQG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDB19C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 16:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776616653;
	bh=ZecVGlxsD+xiw982GacusA05bDwB/3R4waFUb1xRJ1I=;
	h=To:Subject:From:Date:From;
	b=D6xk/gQGyaJkKbKRD9xqN8xgCXWbhrHqhE0z5iPyyUHROWU6z4FjyCw+pR/zI3trx
	 tcmVOGvx5RNOEm8AnOTVRWgD6b2nMsVAJ2j/TPHO7dcw7eOghTj8aOmPhXOdVJZ1/l
	 RGE5PwxtO/hGKsMC4X9axjhmfc1fqlsvRKKGsdJiM+WnigZpben+betsVV5YGkh9L0
	 i/R1lhRC+oXuFkqGvFRCX2C7oUZTAkE/h9XpYmSrZ3HeBT2OyUL5Dc6c94QCrQWc4t
	 puTSX1nd/6i0KiAtUuDeqxuRDjX41UdEju9XfUSzh4TaysDwnz82NGhCT1S4xc6dT9
	 12VJRbh+4jwMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC342EA71A2
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 16:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177661665368.4017.15181636403958929230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5634e2d4d0de73aafbe3cd3df6cd336f96eb37bc8cf277b51bf2a42cbb8c60c8
Date: Sun, 19 Apr 2026 16:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776616653
