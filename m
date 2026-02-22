Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F15682264CF
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 10:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771757094; cv=none; b=WMpHRLws2unk5FUVruIgOt4SmDCScYPfI1fPy3PBCfQgK2CBeEYR284Ffb1NAib0obNsOrLd7R3al0gFEomPPN1n9QUojP9cc7rBRfNZ1u/LWSlbMWT7QF/efFZ9G/ZF+XYWRtA8a53RSbZJ2z7XJSV06dAqFtKf593z4brezGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771757094; c=relaxed/simple;
	bh=OCNG+ybTKUsE0TEdGHlWOsgYaNno0/eo/+A8mPATm8Y=;
	h=To:Subject:From:Message-Id:Date; b=aLhvGwRPaJZ/xNEWat80fTW9hGT12POe+9L8RZqsCj2n6DQZ/D8YO85yn3Z3zalXAUBLzak5iET3ataMEbOsYN9ds3samGsNfNCDE7vRtgV8972ZAaRKfPKPLfdi0IQRNPL4sgOXfxAwFp06KgRvDCAC1qStxbKccty8ixFmOVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GVaIXOjR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GVaIXOjR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA0A6C19423
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 10:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771757093;
	bh=OCNG+ybTKUsE0TEdGHlWOsgYaNno0/eo/+A8mPATm8Y=;
	h=To:Subject:From:Date:From;
	b=GVaIXOjRzXorc0HanIyDtJqRxjlZrWuhfdQ33ek9lexZg1ohb4D6vgfj78NH2W8Hx
	 udFydC7sDDc57zRHXzpviINn+zZH7oqEY7LRo44JSnOcc2LlcDOYg+A0e/zcp3g5vO
	 U84v8exhxQrDtIIT7jjD1ipmAIUIA0gpKBAyi9J36ZYgngzpKA+HWkERU3LsucauX3
	 CMW1EyQYpnj+ocZE0umuxvbBWuctknk/t4qLdr1c7M7AOgWkLq3XyjLrqAN0zyKk0U
	 AYH3fDDakgZ/OLSbgPGVR9lBZ3W9kawvCDTto8/iaTZ8fneBMUB279je0hTgCYHCge
	 xD/OLIVhf7c0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BF8C624D8
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 10:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177175709358.32462.15199707510867685184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52bfb973c050f50f02ebdbd7fbfc3ee8a029878cb5f2d8a7fcba4509b72eee0f
Date: Sun, 22 Feb 2026 10:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771757093
