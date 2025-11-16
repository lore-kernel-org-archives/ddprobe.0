Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16412242D79
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 20:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763324514; cv=none; b=LZ0HwohgsD1wUelqGR5T7yoUqoX01NrJNiH2XlvIdbCNYLvr0vzy1b0rgyX1kZa0ocih9bZ6g3fSgkRipKm2UWdAvfDJj2KTrjIps71CbmBQORXLBE3ICLIGpPBtGVK5xZcWwYlzS+XjvEhCkx/xPtWh9gabIoEeZo7POhGfg7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763324514; c=relaxed/simple;
	bh=djIe0ymAumK9Q5e1mHqgsffRJvW5OtCVEoES07PIsqY=;
	h=To:Subject:From:Message-Id:Date; b=hizGXmA6TdBtelhii0qitg2lRHbzwQXQaMXFtKu2mkRLeac0l3+GAkAGQbo0ST5Nqfw9VscaZqbudk4JRhMlVUjlaq/Jxe7jjsDe53Bt/LGAYQ50X0IckDVxEWxJB1ZiokdS94cBuCUj+i+lX5rxdnkhvdN1qpl7rlJDycBtf90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KS9OrD5o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KS9OrD5o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C96C19423
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 20:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763324513;
	bh=djIe0ymAumK9Q5e1mHqgsffRJvW5OtCVEoES07PIsqY=;
	h=To:Subject:From:Date:From;
	b=KS9OrD5otybPqR57gABXIAgePzsf3itkRcS9veDDvLjeGLOjpCW4jjB7JU7VOON8D
	 8dTtxPLRrICV5TAFiSnJ5q07OzVLx02+zDDRUl64g0W1hCO68U1brrzmEa5drdc38f
	 RWszVpaNdK6jn6lAmv+zDRM++HW7ZhoIobbtkjTMzis17f530Am+U+3I6Vf3YLFWwZ
	 59iDf9964/hBK/tS0iUXSGrvzmGHKo0xg+1R7TJGByDyUONgoo5Qu/T69HTYR3fQr8
	 Ue71MzOMLC0Pm1nhU2WZr2XkfXJPYX8vTHJkioJVh+a2hvbMZSOV9dxFDpqZ5YkTRt
	 WBU2DFOWxPqJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C0A6CCD19A
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 20:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176332451362.21153.7811667650177926588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 768c2fbe7c6de24b918a56427c634d2346c6d549dc665761287e874564feb3ef
Date: Sun, 16 Nov 2025 20:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763324513
