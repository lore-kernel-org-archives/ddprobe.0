Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 371E01E5B64
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 13:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775308534; cv=none; b=EE8DgBbUWFkVP9iKVUkjZz9w6hvBoy+0Ovwdp4dah2/OmKG6ZBUXfyJP5FXTExdKKMkxZiLIy39PFttEcC630G/GyHrbUNDNZxA+k5dvrCjTIxvS6BJf1FqH/9iIzliBDfA6kG68KWROR3VSobu2m+DpKnE93sqx2OhXdSwl5G4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775308534; c=relaxed/simple;
	bh=dQNnAYDtOBn1J+AdvQTjm5c1ZPyK1zo9GV43brwF1CY=;
	h=To:Subject:From:Message-Id:Date; b=b/fdhuapjWkvYdv6dfoaggesN6/IgegETzl0M7RR093ecepfmvjcCyFS86j0kEFp3fgjtScj1SkRTSx7jvR06EJwiEJyQk06uOZ2DWM2Fbtn0lPo959g/fTRMpa/nT/P4wE+hwDFalYPxQ+5C/QdJCaOnFOMd4sEaDeyoSBBOoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=trWAz/cG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="trWAz/cG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0264C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 13:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775308533;
	bh=dQNnAYDtOBn1J+AdvQTjm5c1ZPyK1zo9GV43brwF1CY=;
	h=To:Subject:From:Date:From;
	b=trWAz/cGEG15SgCdXshvF29tazg4S4sKKeaHov8vhD3nruEJH146nSeKvEm5R+tSn
	 BWncJTwLag71mM3mNSEHFrqtk6d3Q5NFZiXBzrX2OQ71SVWHk/i578PDZPIe5JbZjd
	 3kp2M1dYS40lIqMwgEeLB5VyhkBLhEs8CmoDk26/oiBvM9JCKBP87xYJx5600K7FsR
	 ApOeWF7rZYoDDmmH8Piy58JYHz6LZUdo38xe4XudA1fGymzq5EH6U9Uiq8tyElf3FV
	 F6GUyuGuLdsC0p2BJGMB8XuGegKl20hP7z5lFC8T63ujiJArDX2FkRqbi6cm3Tu6w1
	 5GxRxuNJBzsPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAF8FE88D9B
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 13:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177530853372.20145.8944358922358706777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b557ecbdfea3c0c85c544c2abd8faa2000cc07436ce2841925a9938aa8f4372
Date: Sat, 04 Apr 2026 13:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775308533
