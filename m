Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EC7C171E42
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 19:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712344097; cv=none; b=uoRRcWTZTDg3aXj1htIjm2K7IwYniqv1JnSvkIxwRaWKJ1H1GojT0BJzsBtxhGuZxstPU5oBRHh6KhZU21LhBZHckblEw+k2KnPCOq2XIL7JqqmcUkazafNJPPn1xKMKPIkouzLpLmX70egyPkvA+ohZac9iImJRYrs+sfLyboE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712344097; c=relaxed/simple;
	bh=lhVrhdpL0nDDN5PBbZaKGM9EJn5q+3Ifs3EF+nUrJtg=;
	h=To:Subject:From:Message-Id:Date; b=DQaV5hSfkYLs3Xg8CwqcMbR4tl674qdi8GIrk+FiMpDy6rT90uOuHk0PBkhLk+CfziJncrAqdHWw8SotyKZvH7j65rtc5kfq0JKrPDHIAZ3zbqep/INQNlnlVuc4QkpyBicS3j5/swX4bOgSYuVKmD8QfPBA4kt+Md3f2uEwqMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VjHI9IJ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VjHI9IJ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74D36C433C7
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 19:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712344096;
	bh=lhVrhdpL0nDDN5PBbZaKGM9EJn5q+3Ifs3EF+nUrJtg=;
	h=To:Subject:From:Date:From;
	b=VjHI9IJ6hLn7dsbn2zRx9/86Znhc3dzn9+41U5/Li9xDwMwKegxE2aU8MVPdHLIvk
	 9q1Rkmo2fpcIG+uwo3corSdV5hVplE0eWuo+mZRyysBjD4jTdH0RN5FryALvjcxXIV
	 fV3T+zkEbuK/7iMhXqE1Fw6qsvOprD+lYbeiLm4bavYwWL1aWmn9+H5poWUXEzGBAu
	 Tn12aV6dnZWQTgsED4k/WPL0tVFS0yDInqV8WK29qD5902QMnImJRQH5j3ydKaDpW4
	 QDlK3La3GT+PcPib1PpWGf2qTZ+7V79gDp7q6LldaWyNjOSNC50hOPRqBahWAvz9nA
	 lTTQhNimpXGBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61CD8C67861
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 19:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171234409639.25972.12442294289717955782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13d95159d099a4457f5de30ce13cdf10609b546a81e0674f685fa9a89a067a2b
Date: Fri, 05 Apr 2024 19:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712344096
