Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61F761EBA03
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744324794; cv=none; b=qI5L1qJ0vMbFrAr9IPUMcpNpv8i0lRpl3AkSTlYIlfUQBW8saxvbDVLrW7KEkz3m5jP31jGwjb4TP3eCTEOop9/H11LL9nYTHtF9POd41z91Cp0bK4ydaXupK6FwNgZiNXD1dPkWvhHA9CyM4LmnnesQbnruZrYvmUWNiOdw51w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744324794; c=relaxed/simple;
	bh=A4Uo0nl00A5s2L1hatUAhS10ioBvnnBtG5MzJHy30+c=;
	h=To:Subject:From:Message-Id:Date; b=CSfofCuq/j6FY9wqRF71nQC/Wv7InMr3c3ml9tHwkyTS4iY4qoTAn0+k+e0CGOzDw4qNl020r+MXjruXmCl8UHaf4hM+sLXOUaCvDHWSFGroiKoEvxN0II6z85drQnxfCSaoN3xBtF0Wwy+zd6RDqo5crwp74NpQowY56uh8VKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W7DxiU7z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W7DxiU7z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AECD0C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744324793;
	bh=A4Uo0nl00A5s2L1hatUAhS10ioBvnnBtG5MzJHy30+c=;
	h=To:Subject:From:Date:From;
	b=W7DxiU7zo4sBt+Mym1EMGAOOcU5Aw0+0m+KEUj4erjCCW8PO5obLeH2WgPO654jpd
	 XsQVswbF32NlrdjB2cPpM6LbFsEP1mYTJpakyLUGD2pSczl7fFm/L3b/BSrKFB33x8
	 xCOTAzCp3t7m1CElZEWgrGvat0rzu2J0i2w44Bv92S7AF/Qqjf57RFaPRpg94ja0iV
	 K/+P7uYgudhHI830x8mV6czjtmhULnaLxDaDvFicbTG3zB+kZhB1oaFoUS0EUJLSen
	 qmKOVWdZMTExELIcggG1YJ1i2ziKP7XXKTe+faJ2mvRISsizlVsVHHqMwSdEWCdVBR
	 SK6GWOU4d4UzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A98BC3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174432479362.19267.7644617162352802063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9a8fa6dfe37aac37b8defa6266bd5209e0d4073ce8bbfac6a4043dc7b055fd0
Date: Thu, 10 Apr 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744324793
