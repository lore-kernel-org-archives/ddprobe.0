Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E6091F03C4
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743545394; cv=none; b=DV0PdfFxo0jRPTnr59VOAqZOvO2+/WYanAxIFw2DhZwyule5PnnylFDmA/UQ1iJjUEXoSiQzAPxUY4EvK1q0rgxMxOQUL6VK2W5cIhLn1FwFH5xBE+dD4VyyCXgg4CjtkkvyvW6V9LhOvuS72zGUEjByeogj7rbLYtjgqRmIQr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743545394; c=relaxed/simple;
	bh=iOz4v1AXRXiNITiEwK7Tf8jZXW6bYzCPsQ1U5kCCQps=;
	h=To:Subject:From:Message-Id:Date; b=mAXzcnNsXgR7mJ6MBlK6Bl66l9WOS9Q8lDShy4o/wVHmqiLaXoG5xHYzLY/Z5nLxeVo6uAstzAql+Z22wdreoaAMrzaoHuIiiKZ47zj0N/NKGgFRKuxKYs1mXLEktzIuRlr933aOz078VBDGYyiMFcIyS0KX9vDlXPEi2q07deE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z6mzdpp9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z6mzdpp9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ECCCC4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743545393;
	bh=iOz4v1AXRXiNITiEwK7Tf8jZXW6bYzCPsQ1U5kCCQps=;
	h=To:Subject:From:Date:From;
	b=Z6mzdpp9KqSXxoz2ZD6a7IYWoXmFRfMkky1gfhS5w7NSNTJj4iqM3ZIHM4VHcDFEY
	 aaBbNrVo9JDI13BN69COcnSbw7Fpoq/hloDwQjAcG9rYuzGDUDcorZwfyJugaQqL1p
	 xY9hsCTNZL1df5Nga5kZW/z5U48aWUV4yQQh9dBoCLV+Od4OzUhmy75IdMHXQvHs74
	 BYcdDW8fHdL013m+B5SEVNsG/lR3vAF36MzGER9sCJbyAkVmahxXlMS/V4vx5Nypkf
	 DoaJ8bDwcW3C63eS2YkuSzCFipIkAX0AYHl3tZCgGkOoNkrMB39dt0OcWVEfX/kvA3
	 khHupgHoKe64A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90383C36010
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174354539358.27797.1859110889517216530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f43d7e29e91ab859c74ba712795ba9ee24e87ad5e566bdaaec774e31fccccf3
Date: Tue, 01 Apr 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743545393
