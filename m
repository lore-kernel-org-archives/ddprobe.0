Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22DC13382CD
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 02:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780887274; cv=none; b=T4Bi2F04oQnVgot82dbC4G/Y7FwyJCOXZDG/DUNMwnJFIvVcMIOmmoLzDihoNARWRLyoISL88z3t4KeJ/AqePLs+P6RCoGYsScNflNAsg/b075fYuAUrQDD1b2m6prDhalle6qx2Vyv6qLpxWBY/lqVJ0pPd7F5bA9IQQNXzY64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780887274; c=relaxed/simple;
	bh=vYzonElyFjtvb6bqGKRBkmLnNKTi+N22uSuwrZ0dsGw=;
	h=To:Subject:From:Message-Id:Date; b=NcBG5Nir/YHLwdbadST/8ElDtI1heyjx1icyajQevQM7OHNReHHWpD5ZqMjLfSs+mdhE498BASbBQOKJInimxU+VHI/ZM98DSVbP1GALP3SYXiyGiKgdcNVM8e0Ofe0BRh2VvVVI3gifhLBnKavo+gGhDZwduP3QOvLDph12Cs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eO+l6ZkY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eO+l6ZkY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7F50C2BCB4
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 02:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780887273;
	bh=vYzonElyFjtvb6bqGKRBkmLnNKTi+N22uSuwrZ0dsGw=;
	h=To:Subject:From:Date:From;
	b=eO+l6ZkYAb2IfRaDLSPP4NIsQY7FjKJN6sXSXs7ZuNsYZf/45Xq2DYwzxBDoPhSdA
	 I0xKazVPwSQ+huyiywbB2gwP/K7v2JTphvYnk0+IPbqNRLh9T6uaA1u+ZVgBeYkWfD
	 8PLi6ZeUNNrOE5KSMqCtl+UDb15QPXeXzRYOOZTRJVx+cOvfZRGVALEr7FvloxXPbe
	 vAznTTB4u96qkBPpoQfaIB2SSY0oDP8BWxDfSkDADtX0j+JParioUSAiVR82Srv9ig
	 wu6SxCkKW4/fK3BjVY11wyn7owDgrjHUzA9RXQq2VFUh/s1JzqWfLMOMsuMhY1JWT/
	 NEtwOTwGv7uow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B04AACD8C92
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 02:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178088727371.21134.14046357329179281375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57bd18e040ecfd41d83c1e9016a9c8acefa0ed0fe6308aff23316fa5cb2c35f5
Date: Mon, 08 Jun 2026 02:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780887273
