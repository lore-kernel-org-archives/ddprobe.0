Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9D476FB2
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 05:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716613403; cv=none; b=mS7BWrV00fCUUiajhc2yGGUyiwei+bsb5ecNitaX8hWxI2vqJT9CZBXeG5lph5hdhMOvsuGipJeioQFDJ2ULYUbhtcdnhFNyk09reWd9ezak6dYZHp8B8TzdCK0Ua8Ga3EbAe8d4/Hdyn2V9LcKhsy3yFn50Z/cLJO+GoV2TO+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716613403; c=relaxed/simple;
	bh=rKreqIwYYKXU1HoymLHZbRqcdDRFaAVu7i2iS+R9oWI=;
	h=To:Subject:From:Message-Id:Date; b=FTHBKY1LKCjkXLPozYruh5lINDlYE2zrGyEEo54bjcBpu0Bm6CO4baGpNE20Hi0dU/xFfOdQjck7MfRgUDFq5BjPIcLzTuNtMLsZAC+O8kE0K5KVS8J93arQyG+e6PqAN8oOzsS6Vj5aL07K7eDpapahcZJYlc/VOsZ3A5TFiwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jx/x1IPq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jx/x1IPq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 326F2C3277B
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 05:03:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716613403;
	bh=rKreqIwYYKXU1HoymLHZbRqcdDRFaAVu7i2iS+R9oWI=;
	h=To:Subject:From:Date:From;
	b=Jx/x1IPq34zT2VfOWQDTbrb03Qlwlu7SOujaRXXJj3YauF6IbDROaWZ9jtD0ib97Z
	 arVNqa+0lU6QbnP7MsWmLpk76Uwhtj6zzbmF/yqxqFthB8OXnRe+l6WE1BdvccnjNV
	 FXAIJSMKccali01qUdpZbRB99beY2BVglKB/fUKCj5dVc3iQkFG4D9KP1eMshIguRH
	 maTDP7i67r2e+ivZRLqRWzdvdjFECLn7R6yG8bRI50i9Vfdz4XtVOq2NcUKHy57z9+
	 mI7Pb+bw2IDSIW7abGzqyPK8S66RW4Rm8/uNTHLYRzQ2sZ8ODn2RS8po4tbh/39FR4
	 KthQLDrxOq/dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 11AB4C25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 05:03:23 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171661340302.24250.5620644674244097055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1101b5dac736b2a129d1c81bed612d2fd990bb16367f3e201048edb4e3692f1
Date: Sat, 25 May 2024 05:03:23 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716613403
