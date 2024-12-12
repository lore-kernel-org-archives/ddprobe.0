Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44B411AF4C1
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734045954; cv=none; b=RXuZur+I6zRzHcRvTjsEkagVuluiUNUF7ZPee3Ubx73n4hX+Y6Z3/KoyKtpGr63bpqHPjCk0r2bCQKr4bsBSwSNEBfWTrT7+h51plsCxClpaf3rt63LZDo2Xn/MYuueppoHLAzXTcnXCzZK/a1VFHzK7ca1vJ5Ijq6eIhRyv7/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734045954; c=relaxed/simple;
	bh=SRX0LkePRVqjvU/M7XLz6MY/eLLdDe1cuKfrFxB1fic=;
	h=To:Subject:From:Message-Id:Date; b=J06KfBUwQWqqwsGeFQCQJuyQqmIjVHcmb4fJAl0Gxd7H+oSBjR7IhyrbbhplMiEQio27abtFvFQS+ml/B/pWevypNL3f5dUuxpCRx/1xNFBSN/3JZyFZzzNjKHLHQHrsFJj+JskbEg9l0a4Laa/nwpVswp3xRxZe5opw/8XcswE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IOsoOwde; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IOsoOwde"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD257C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734045953;
	bh=SRX0LkePRVqjvU/M7XLz6MY/eLLdDe1cuKfrFxB1fic=;
	h=To:Subject:From:Date:From;
	b=IOsoOwdeM/pwiciSj1EomzNo70DpuxRxdjH1ky/1ebyZWcNKTQRDhA/xLZXseUSbK
	 f4gB7h4LvSsWk8UN+X2mKwcVboJiOf3t9yUl3FmJqgNO4F5IwmTKCueSiS7G35PVGx
	 KIehE25/mx1dnffm7EZF+ydTXI0af1dAn5wxe3b8TJHXTdExknle2Yvo3T9skfdsBu
	 aK29W7r54mLh7AnQeBw5kcWf3VjV+Jqfew0I7Zh7ownwaRxsJJcqlCU33hIjrvrrby
	 b6Rv86BOBVVrxxmT2N8AsJBTeUrDudjg3mcLA6SbqkQd1q5lHoTMHnwUJyY+qFWFwg
	 m7M1Er0r1JMAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EB8EE7717F
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173404595363.13069.5783592827893672075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b07235e57500f4ed40585c3eb6f8d5230ce073e8cc75ea59d6b554e70bf9c8a
Date: Thu, 12 Dec 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734045953
