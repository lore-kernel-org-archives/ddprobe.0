Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 271622744F
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 00:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777939654; cv=none; b=aU9Xp0cF2xEqZMNpicNOKCqlTep4hiwRARshIhlhcPs0+OL40eosvCkk5GrSqticsrrticno8HZ7vtGtoxV9lLwpvi+FIox5s+mTA19KpIyjMikM1hzZwK40LLF+eUIb39qaY4USONA5eVeRUcVd/3AfDX02vFySh8SiCsagM6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777939654; c=relaxed/simple;
	bh=6wjohY3FPZvy0M1EG7lAiWF97/sEvS3+SRX0E7DCHmM=;
	h=To:Subject:From:Message-Id:Date; b=djE8L5xO7tq7eA3/GLNxVW4N50Q7YKu1K4KhE1bU2qD27pUX44oAI1Fxhjd53LqnV3ccQG6OdXtwbUra40oPtYXxfBgpnI4c3CLTTMuQbjzUK52sAnx1IUYuxmjWS+4lLmD1cf24rvNs1iouk/wb7ZIiqWqgCU5eCIgcAZtuRiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lq3dAzRt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lq3dAzRt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFD95C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 00:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777939653;
	bh=6wjohY3FPZvy0M1EG7lAiWF97/sEvS3+SRX0E7DCHmM=;
	h=To:Subject:From:Date:From;
	b=Lq3dAzRtpCSee3kJESbG5vxmU2tnFL9LXmMYeZXpfJOkfbO2jixxuo0sm7x6rOvyW
	 TGp69cQj09I7x7x5bEDGjYrPXHDyCjq2He4C+tocCoHx1Go0+8Y1TTk8sMarzisdnK
	 H6opRgP5IOmnJxuUednfwoRIXllMfoaH3FpOQr3HLTU1+YukkY5X67CUE3pXakiUIL
	 otWItyVkeeiUiqUGeMfMxv8kongzAlcXESiERtlnuY8BJOcLTZM75Cmq96n2UN7LsQ
	 Dt2P1YjgxHn3+ZSCkkhgakMfYg4Crvs012v/Pr8NXKZXrK+fvYWbqAt3GQVtgUekM4
	 ipNoKH7wpwSQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC400FF885A
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 00:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177793965368.30360.6284698281868710723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aca0496a4427afe9d620c3aa34d798fa9d5b5e482e45a933187ad8e349a6d995
Date: Tue, 05 May 2026 00:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777939653
