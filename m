Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46CC0632
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 00:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714608743; cv=none; b=Hzbo5c2v6LrvM6eGAY9+3bCjUAOa/5Mhah5xBEXVzh2MNlKa1Rt2Zq3iR2JmQOS0lKCin0OWeU2Y+KWKEZ71shT9jJkd1EPOvMhWH+UERHE6MuEU1vOcR2UP2L+6tZuEI5tGANCQRb0RnSpl9guFlO3unn42Xd2SEUA7lL3f3qo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714608743; c=relaxed/simple;
	bh=FigApyskqEnnn+e6qagRrK9qtreN8LAN/oqQMwohlho=;
	h=To:Subject:From:Message-Id:Date; b=QAMkxAgpVW/oEeOSMBSXfZuTmDkfzE5wbVm/RplGYdq9EiX60yPQXwQ2rWjMtf9/eRTFBAOYZSQuwJUNR9S2jlokGcMMlVrdd6I9XZ1VLlQ8LfnH0Q3mvgCis26fjWxdwGi9wdKDimVNjv0tLvqR5XC3DkUOYziNgpCEEugHms8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WmZZNz1Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WmZZNz1Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9D28C072AA
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 00:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714608742;
	bh=FigApyskqEnnn+e6qagRrK9qtreN8LAN/oqQMwohlho=;
	h=To:Subject:From:Date:From;
	b=WmZZNz1YRS6vsjDbQrq3uSr5DPMfRLpbmtfe+Ia5XyRukmhjDcG7ugX0/nRSt5WbS
	 x+9jwBIP+axFC/3kl6+CktUPnbFdFv33Lc9gMI9rayl2u5aHmZSjY+l+an/V1GtkcZ
	 QfL8c51TnDyQSVdbBNUkkzrhEmzCTdDMEerE+T31vG063We0PIyo0A/DmS6FudMb+T
	 z7LMHDVNvk0EG3J0yR7ysJUMMbDMFNN4aQyoLsvBgYRNjqdh9jq+ejJNdBUkAtP8wx
	 PdgIFcvOVrdSMucookQbmLobQq0Qld1cM55CUAwSV286/DXGan/76yELWzIDtfmQvx
	 32Q2WxFkYAp+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0FA1C4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 00:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171460874278.26419.2891593958047905216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f714c6562766eb49c6ce06812dceaec84f4eb569dde0710224a7b6b2be61cdcb
Date: Thu, 02 May 2024 00:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714608742
