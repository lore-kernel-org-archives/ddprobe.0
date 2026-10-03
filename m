Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 846ED3803D1
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791029434; cv=none; b=epAT+VNcWR59ExiU52N+dRxdG9CE1x3QASXOLCQKya6CG81DYuPEuNmvsBZ6LTtX7QNVbG6TMy80hGrHzztuJNr39uW5kNYXWYg3y7CZhM4Lhw/liHJn97xDNDiUKcgsS+rr++Fk7PB/uHDrZBxpq/x3I9366Tel05lf3sSsY7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791029434; c=relaxed/simple;
	bh=MjG6VTMM9OPC7a0H40tufO5+h5fQqkQYVDbCW48TKFU=;
	h=To:Subject:From:Message-Id:Date; b=cOhMBaHX/EqDCCOla6oVbBQplumwEe3l2VKyas+NhJ8rWpuSmG163RM+bhZH21wWDr1wxz+k23h5LM4e19hmeX+m8wlMvrZjbJAQacncjj5tF4MekMnPTquPIhFj2lZOGHRjAQZktHTONNBXoTr84SsSdgfYTsgHe0KrEwTiAEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tfxpa1md; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tfxpa1md"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD1C5C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791029433;
	bh=MjG6VTMM9OPC7a0H40tufO5+h5fQqkQYVDbCW48TKFU=;
	h=To:Subject:From:Date:From;
	b=Tfxpa1mdeGPdbmXU3itS7TAuzA4LOjY/3rFi0Hge9C3QWCV1AEVOS/5fJ485T1LgC
	 XQ3L7VPHT/FOlaHrVcqmRCEL7tDIRpzRe6d2E4OfBR9+R7vpyphfhm4ATDZAJhfRgr
	 qLfnkxpILzxlrQRtxYhHm/Ae61cNfqb4Rn/+HM2Bw3iCZ1V5IdzFaDzjP/BJ/nqNCS
	 RjWsGkZ9EX4VxoA7ns1XAwsMEt23H4AnINqzSXA/qZFVw+m3lXP8F9TRJM6hj4NQbr
	 e6TuZpsIUky2bHN+yVroZqkBbyYrBBNzqQV48MiA2BwrLBv23mjZfuPHe69+1hEywD
	 FOuTBJneogB8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA89DCA5FDD
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179102943368.11197.9844193243019303882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdf6ac358c1c52e8c40df87f91e06c9daf584a8293610da8938859a6f8620c6d
Date: Sat, 03 Oct 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791029433
