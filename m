Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A3C014F70
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762555194; cv=none; b=jQJddxXrujW9bFW+9TmD0vhmmbEY/IunA4nrnnawsJACS4UGo+3R0eg5/nroVKp3n483rQ5yY78xAidjlghjTVz1AKAZHE+V5pggQo6mX7o0QB7Tvx+7tvXWrTtb3ryasg3/10PXINPcda9jtlcuHuEtPCc7iIBtshuBR34QSnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762555194; c=relaxed/simple;
	bh=kh3xhiweMv0fQoxj0pkAzbPMjfXNTVCmjc3WmwAGczU=;
	h=To:Subject:From:Message-Id:Date; b=fXbCSeULi8arbG/0nYEE6MQy0a20OWR4f6d2GsJdxeYj9qAB6Nb7Ng8uM4s1o3LYl+bMpFe1H60xoA6X8T3NKjTgUr/GOuL2EUwxEhU/jBiDz+Stwb7hc+aBL8JfmAW1To5vjMQc+2iIU3LNHkmAxdAawnLQkNi0PNinHogO2c4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iKbS8W2C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iKbS8W2C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5874C19423
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762555193;
	bh=kh3xhiweMv0fQoxj0pkAzbPMjfXNTVCmjc3WmwAGczU=;
	h=To:Subject:From:Date:From;
	b=iKbS8W2C8/4oywYdZfvdKWBXNTKerfzegn3W2Ku9/H7W4K5SMHf8wZyr8S4lqCOaa
	 AQcKxf+DTfhCDSUGG+RvjrG9Cw1lE1eood0Sr6tqPlc+PKAgh/BJfkUzymQB6a8uh4
	 LeNad/wCGdg+TD2geaME1euDFsW9Y9WmweFP5JQiL82XcQXLex9Gj1tcf8tkMTOxI8
	 iiQnqAf3zqIqwb/R9D9+RQFIG5genNr80hTLF7j6LvC+cBOXzC4aV32JmkOvd8dJIh
	 7izzqOtcSAH6Pjyc8MHcdeSxuXAsuZXsVhdMt4JNC2Hf2sVBVNMXj65ei1tAq4HL69
	 CdUL4n8dTD2Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BE1CCF9F8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176255519358.31683.1615630058109032935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56918ecf0913c295e19441133bf88bf808afa48ef2d10d4761f131709ae40887
Date: Fri, 07 Nov 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762555193
