Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C9A24A24
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752381594; cv=none; b=YNF8VBJ4SMmo3Ft75Q1vcSvSNP9mBqGyjWbdZw4wFnX6Pcr2Z8/fTmVeI/eAUA0uCiOauTcMU3xDVAfOhnUExjTxdf1xnFIo2Si1z071uJBAXtXu3iDz8Oh7ZFD4lHYcl6wPT7prDcguFx+LJMAWl3bKzjNdAxZUR8Py+nLwIWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752381594; c=relaxed/simple;
	bh=84lX7Wpn1wXPPgmWSzgNm8HvghIVnv2XzYT8LdOCSz0=;
	h=To:Subject:From:Message-Id:Date; b=U/IrJW5wkW74tesWnHzlh5Iji0t6cFG4L98+mI0HqrCSXxzJIC76QPz7Uc3a/HFLtJKPvq1+YNVZ5oKiIm0nLwhI9DIibYz2DsakqyWSXoNGKfZ6TmOCTy2C8+EVOBGUR0hivDY238ocQk8BS5mllZUxbHb8zWoLJ/ebVC0RGT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XAYtfaJI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XAYtfaJI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5136C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752381593;
	bh=84lX7Wpn1wXPPgmWSzgNm8HvghIVnv2XzYT8LdOCSz0=;
	h=To:Subject:From:Date:From;
	b=XAYtfaJIa+DxQ/3nk32kelXypYW8BVKFGVQN0tOTLhQMhYH6e4kKpjoE1ehKeSA+J
	 SNH0jwXEjB2TsREYbZaP4UuXfXY0zZVR6A3OeEm1tVs7Cba/TrYoArhf6lmNP5Y5je
	 Qpcy/SLrYwmjI+Jb+749rdDUFG8DxeFWzxoEneV5kfWx7FjwMS9sgf0VxyS3gaDXUT
	 JbtpULl5H6Xpf51XiV9PWL5eY/upivg1ity8xFIVnDoVyssN381Vy1yyz0M8/8qJAC
	 0mDbvP6msGh3uYMo+ZV+hfcZzwdc20jcXjowIMyjl6tdwehZ1YB6QRlrMur66CaxGk
	 3YaiF0EGKF09w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942F4C83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175238159357.22453.11690884862472056965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68e54cac550873cbe383d56cf3388e664f45ef5e4d9d1aa2c83e399235b26ffb
Date: Sun, 13 Jul 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752381593
