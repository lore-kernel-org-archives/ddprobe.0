Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6200F1A01A8
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 21:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720735043; cv=none; b=GYdPjS/07DvcPc5yMXpm1AFPEFHVa11eof1/yNLEFS+YeQQ0qVDTVwI5Auuds5Y1aDH4m7d9en2RbpeOTGj21UGOvy6gduk4q+zFNppVkZM/CY/KTOxnMSIIPFcYwAqdU/RRt6Xq3ooVDb7zLUWnuk770JxnCUhkFRazaVLtoNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720735043; c=relaxed/simple;
	bh=1mZAfS2HFEHrYHOGTJ7LvAMArg+4Wm1j/5y9ddjj5to=;
	h=To:Subject:From:Message-Id:Date; b=lhm+H9dtCcsyfCQs7/7afrEzbwtrj1AKVL7Z6ttc4cCvS/JuscmSN5rLG+z8DjazZUU/lqk5jiVF5/tM+CbLedYmwb7EDjxMxkHEs0pQsjwlhk9buyy86WI6NchZeLV4cjCYhh9WdLyqBSRsM3bmfNM8crYJB6xGcs7rvmgfpWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G/tTYnc4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G/tTYnc4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0311C32782
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 21:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720735042;
	bh=1mZAfS2HFEHrYHOGTJ7LvAMArg+4Wm1j/5y9ddjj5to=;
	h=To:Subject:From:Date:From;
	b=G/tTYnc4z6KzdTuXwf7TVwX0HqkBtlZGtc4NGmR4e/fF+I6Nth704ElBwqkBGAk1f
	 u6F5yL5dt5KNe2kYn9izqJFOqZfNiNjFjg7u84IXNEzIms3KqNtwbWEJVinXbsEhfW
	 aQW63Ca3pnjERX2pYBH5P36xzDUSVUcDIQowE8QQlYbH6PE0esqCEIfweBPEMnqsJm
	 2JikWA5YcPLJohYg4jLDghXER3isbU4RThOuY5YdSoQM3T0tTX5ecBEWxEJJWkOfs2
	 T5mgwTGjwkVf38JF005G3d2bMemVuIpKbyDtCiiAhUj708dPvPRDJPibpOR7v1/jvg
	 cmtB36IDvYuwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB4B2C3DA4A
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 21:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172073504282.1247.12752515005977922454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28c0aa6733b7b36c01afeed64b771eced21ef8ef1462ff33efd0302827f76849
Date: Thu, 11 Jul 2024 21:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720735042
