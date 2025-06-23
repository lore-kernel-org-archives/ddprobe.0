Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 122ED299A90
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750694994; cv=none; b=H7pO0eBc4+IEl+6QN/MHYGnnrLSRr4NsF2yb7FFZNkBwUC/fyWkxsvWyiBRUTqgIUWvuhm7szTWnSa+Iij0G2m+Zp9/Bo/dly2nK4+yhDYxkMLWHqJysnQuegLM7vfeS++ldPyuel6OXY+xDWhjOrpOHVoId0XOsvySHHbkvhj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750694994; c=relaxed/simple;
	bh=MzlFmy0XzBnS4EH4TMBfXYendcX+AmWNawy1Nj2xnmw=;
	h=To:Subject:From:Message-Id:Date; b=XxxWtmC01wVfh0y66pG+M5KXgabCFPVsFASm4R9Khp8w8qop4PItTVDATxBucOrXaF6BurbRsZMKKo/FwKB3gj4aAufuuKNoLeMotPShq0TdRjKFXlPhoV4jE+qzXN/nQITSnl9g9wUYEBbhkzO0nptRxAn0WSKDWdduvMuglYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gp3L8iwh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gp3L8iwh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DB9C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750694993;
	bh=MzlFmy0XzBnS4EH4TMBfXYendcX+AmWNawy1Nj2xnmw=;
	h=To:Subject:From:Date:From;
	b=gp3L8iwhOIF7UrUFotKCjxiIIQbE+oSnBg/HzUqnuHSOdvILV5AokDSxjH5w5JX/6
	 cVwxEBM6KwN0JtGsEqXQwJSzfQoymVEk7+a4MbtFsn5Z2iT9kZp3QBlwIYZAQpQZ8l
	 2alo/O69Y+XKTWymHC+lZdFNcj94h3OiOro4aa9YcisE+RnulnkR5pE5842cOGUi/s
	 xDfJWWCRjgZmQMBibsXDEqAgKlSlQCJcu9s8ycZ8Jnpcv82eX+bmyQrO8PdEd/Jy9/
	 ey329HhcvYReWE+CMLhaZHg54fRd522YUP/RDCWIzXEy8JZ1nnCx1vpA6LSP+YbcdY
	 sSHv4tLimI2Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB3AC77B7C
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175069499357.10800.2515315107930730125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d926ce714f14aee48dca77f0fd1de8e0797ab4af1d063a3c94bde814c29777df
Date: Mon, 23 Jun 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750694993
