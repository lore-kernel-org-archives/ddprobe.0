Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4299A3BBFDE
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791900634; cv=none; b=jJ0XATRghnEI0Fh/EznystG9nLBkY6KJuVT/eXTWLnly1cN4RC1eS78f3JK2vTUn//IuAbR2MpMPlC2WUIyMNOWCHi1Y+6Pjww4JybPG21+xQAt9Y+sosHBKu1UMtMhKulkEZ7174/bVOwmW06mZjzOFkOA0UumnTz7vgA6GoYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791900634; c=relaxed/simple;
	bh=AT0QuslS4aK9MmvAMSdEM1/+8cPu6rK5MxeP4ITmiuY=;
	h=To:Subject:From:Message-Id:Date; b=is5RTPGonHX/Ewrdxt/uv4W/RvZ9cRYgRGzyxzcfhTc8bsQMDq5xh3XKWwHrfqCJez1kEaeVCYHRCKCO/teAc1BgMNT3J3fIEXOCECNrAk9Jp8p2nWKPX30WjjGC65Z34OP3UOFC095yIsHBdlDwE1ZU6GUkQyz+rcVA/OCbqS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eL9N8Cow; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eL9N8Cow"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8496C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791900633;
	bh=AT0QuslS4aK9MmvAMSdEM1/+8cPu6rK5MxeP4ITmiuY=;
	h=To:Subject:From:Date:From;
	b=eL9N8CowAkt5rVOIGPWbGu7WOZTAnQTo0hsGKBvuHw/RlpnG19diOY9qoLYQeM4/D
	 BUtmm+R2r758cZaQMVW7udyLy41299HNySnNoIWQrlys+hR4P0thD0sPxbPP3wHuAW
	 PnfDxgG/q3Pu9QY5v8LVknB5aeCP6xKTS3I6AOnRcNrpVkIl6OnCMUaA2jetZIO8JZ
	 UggEpAXERLElvqXzY9arhpHbpK3nBQIFojlwfuN/ft7njwB8thp6sEwts6w84lyJbT
	 NPrJpfVXKM7qybVcnsEjJ0/PV8exXeoSQbieCF76lHzji55r1T+gwnv1IyxhQb7Aik
	 Nyv4gBIr6rW7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADACFCC6B10
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179190063370.10379.848728167092755376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e993385a3bd39bcce3d522eb52e44a8ad8e0937d9e9ffaddf1314c8c8998301b
Date: Tue, 13 Oct 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791900633
