Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 464B154918
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733721954; cv=none; b=TtBsIU2sPzCDmDsHHaa79dbrNi8EOSHTiXzqfOBuD8IYLYKHNwi/G155vNjsTUr7blEJm262Tk8C7gTgwkS0wOh+KmmNNXdObiqIDwcl9v44LIn7KgzfWBGfR1oGrbTIO7dfv2Sinl1e2GruWmEwhum6cHKS0mkVdOvbQRWkqgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733721954; c=relaxed/simple;
	bh=X+hZ3PVEZrWg4KFdj4sLxfn0WfdIuhOzbPCgEXb9lk0=;
	h=To:Subject:From:Message-Id:Date; b=tl+nVQYdCVr3LoP7GRZP8rf5JJZIYTqRrKOSWMyZedUWnaC6K+UvZ6XarENmEWRpNEGdXM0iyV0XapRCabtsf8cnqnMbZtKzDI8IWs8Xe8DwNYrhcdx7hrrvRTclxUweOJrVDD0rr28HAYyRokjnPIB6MxxdcF36ajc8d4PNfe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mJIMkq33; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mJIMkq33"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1A63C4CED1
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733721953;
	bh=X+hZ3PVEZrWg4KFdj4sLxfn0WfdIuhOzbPCgEXb9lk0=;
	h=To:Subject:From:Date:From;
	b=mJIMkq33mhLZ71UqoZefHug0UWMDp0f/TlnmwsN6ltv9PLcqM37LxyzYUdEc4cd6T
	 9/+6MDpRSiXapSDJBkmKOFf13tvOcptI9m/qiNEL+LP6IcZo1lfdonkVu/q6jB35c+
	 Ok+TOo1rJ8OwYeazrDypATi+YAqyaEOtJvGT8P7p9GtD/TfVtBtL8MVYHaMZloqvac
	 h7GmBUdQPMokAp2XV4Nl/0xPvuAwLSknnF4sdM1SxaeghLCZcVZb2okq5QgoKp1f9P
	 X0UhhyHrUfCh9WmBexnWglRgdMfOKJMDqcQqmIIWUfsQhj2+gCar7DYuv3gDXwE3zs
	 9UhvQYDaSJT5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FB0E77173
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173372195367.4143.654105968141570224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0385eff7c7536bca5042fd6988e91d2f4d435afa25a1f14c8fb6ab1d1f9ca0fd
Date: Mon, 09 Dec 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733721953
