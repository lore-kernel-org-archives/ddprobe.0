Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A69CB45FFA6
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786705234; cv=none; b=OvevzQ4vU/bNAd3f4mhEvsnR8yBvXkYk1Vtg0cxzo70jDja39pjeh6durVLs5JBRmvgeqKeaZlEJcjwbF2j3r9out/V9Znb3i2FNk6oGn7CSEqriJl+NCgKtwVFcKZOO6SrRRo4F9KFOzAkJyK2emV03gP9sfBNAC4Y/XGM82Bk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786705234; c=relaxed/simple;
	bh=j5dpocRgz6LDfP6t0F2BCZva2KpR4hU3+rWIb/CQg9U=;
	h=To:Subject:From:Message-Id:Date; b=nleg8+jSaupt18tRZZono/Bx6w+mOpWVS0D6lcmXVHG/Mb4SJuN7IK52L728O8N8Eo+f1Eie6lYsBXbnYK5Lgw79gdIFwUs9u2ZLVffz753TW2B0zdB4YibuUxr5VHhzStt8j/FLGcGS37jQ4FOrUzhV53FRj6uKonKA5xDPHVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m1nz0N1O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m1nz0N1O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB06CC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786705233;
	bh=j5dpocRgz6LDfP6t0F2BCZva2KpR4hU3+rWIb/CQg9U=;
	h=To:Subject:From:Date:From;
	b=m1nz0N1OR1InnidNP1MqUHXtBXPgvZF2EidGGo6zKztHOLpHQ1Kx2g73fLfoBdyXx
	 9nQ+EtxcXvgQ+Bhw209ITnykKAwg1vez1SeP7O45NUa1VAkAaebRrHcBJGEZuwwyzV
	 wwS5ryNglrXre2gw09Ptk/lzs96AiXFBcfK9pYj4U6haB8fFKbsQF8Le8I6ktd+rzi
	 FAJ/iGMspw1uJg9QS+4IpX6apepYUAztzM8nfY45kGItvSlnVyMo3jIpFpHu4xChLB
	 ENQQqVnILr8WVuaQO2Z9xOaceQBSoSZAlc+TR83e2V84ym89Uvmks/PLHURbc18EME
	 es+pRBxv0aMBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A881FC5CFC1
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178670523368.32622.7867259815548272688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52706e8ec63cc78d8d02f49d49127ea4100a32052458bcc3b61de1a23faee071
Date: Fri, 14 Aug 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786705233
