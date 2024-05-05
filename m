Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C9111C92
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 10:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714905143; cv=none; b=bIoldYtj3xre1LNr86IaoRW3Fn0EkbeqSgoltIlQb2vRbLWQraRjPowkxYWxuIxBsfB47vn92/tpW1GgbGkFlNmpFGUwFDLY1QRhCMIyP8USZzEbC9cPD9x6KJblaqby8OgsNUvlwYA9GtcDijS8K61pkISYd+n0Kc17CfUt0uc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714905143; c=relaxed/simple;
	bh=hE1xg6csRl/D/qRtnkLQbO3hm+UFNDBsuyKcQk7rn+c=;
	h=To:Subject:From:Message-Id:Date; b=UU42+PpZIm6+rSDBh3mIDUJLEYGsnj7rNYUT3/v4Mm7oq5bQNCc5PE3NCZdBac83rIaCrYMxBC/ndKTTLeQdjWF9M8CT+spryPqG2auPzKXTBuvfGL98+pjqGpjGiFiovA/X3ei8jP9j2kld+W7zo4OzIQURzzGsxVdEE9Xrqhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K1bH9PI1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K1bH9PI1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E031DC2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 10:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714905142;
	bh=hE1xg6csRl/D/qRtnkLQbO3hm+UFNDBsuyKcQk7rn+c=;
	h=To:Subject:From:Date:From;
	b=K1bH9PI1wGtaTFVMxudfgW9yaW8S+ulxLAkF79R3BwSU4Wg5DTAUYIbVzqb8wfdH7
	 Iwycv1ZGKJ2PcEoM4Sz5QEMq9uOJI2XU8afeupUInjekDlbS/LtW8CFjHmbCwa+ySp
	 JMhHRzRznNFOitMkZEnsQbNeIFn3DeDpyUpqz03vUFl1QGBgDb+LQPnAnfckR1YOaY
	 fHiKhsuv1Yv2SKl/vSkHI5H1JijacVzb965H/QsrM3ixBV1IxqOJSbRxq8XMhkaHso
	 pw8HtQCujM+AnUl/iYT3ymKuU+z4N3rjF4gP6BJGa9ZlCl3YgiuOWwKspaOWALnz32
	 Z/czlI/8tumwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C85C5C04FFE
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 10:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171490514278.26271.3222570567251435714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d6c6fd7e2a41f3546f5b9d910431ce86c59b6517a5d9c8a0c8bb1386c0a293e
Date: Sun, 05 May 2024 10:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714905142
