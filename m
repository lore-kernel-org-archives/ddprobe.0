Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22896138C
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722019554; cv=none; b=S/LEdkkvrexIvlfEvlmW4InTlvh0jDfdWarjLOOP7YobrUmmc1aIAgZl2vxSjtMuyHyUCPkO9LqP1IPGgy706amKm2X1WxeYpObcN4pZBy7ryWEXlmB71Yo6EreoyGg36dswBBbIhqIq9Lm2q/pmFtZAPfsfsX7pG34icxxJqmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722019554; c=relaxed/simple;
	bh=AZME6w5QzZoUBcaiPrlTDD5Q8O7fhHoejpxO40SPvfg=;
	h=To:Subject:From:Message-Id:Date; b=oRylf7pPKeNq4fFUhE++NoqEVQ3UXkj30TKOtF6nRnbeqT1ZVDa8yvMWFRuGaQKhOfidnOptfeCRCXNcDBkFDafUHy0G5Z41cQCAwJAN60BfheSpTR/OWkiR8hCIN2uG1Kr/YTQMWNzEfFk0eLaFsXQtV/QillX8beVQtK0Y+Hk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qaLm3Rub; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qaLm3Rub"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF04EC32782
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722019553;
	bh=AZME6w5QzZoUBcaiPrlTDD5Q8O7fhHoejpxO40SPvfg=;
	h=To:Subject:From:Date:From;
	b=qaLm3RubW0//YXTbqxLqPAk4vMq9qHdOLxC3XmqJ1p+XyVcVd5p0Vq11ZCyZg44WQ
	 0IzBy0F0H7ux/5BLGPKYeKWPr2BdSIihmJH5B29boYqcZqMvMb6emqG2EzYIsOKbGG
	 Hb5UTfdXh+A0vAu+1x9lv8fsdqM0aDl707htnzyo+8r8b6gt+JNm440+ob+r+YKydF
	 +uCv3U/6DPCkzbiALeropsCEJs2jZz5Ttk+dHMk2c8wCgwrkJK25VZb5tsDtIa1wI8
	 1XNqPgYL6yUqE1Q+kIrEvtYDm7373BgdhmnFOkNVN+rpa6arSIOGLdh9FvukZ23lqM
	 8BQOdEDDUqgJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95399C3DA4A
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172201955359.18031.11285289167605794000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7345e2ae3817e57e65b8728e3c39c47b56d8d8aa2880392690fc16b802e4064
Date: Fri, 26 Jul 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722019553
