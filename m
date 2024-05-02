Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4824611718
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 01:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714612343; cv=none; b=C1mx9VfWgiA+x0Ra7VSnksldyqvYIIoYUj+5wp1MGxpCfxzYppx9U+nkugi1ap33Yk1hd448c1SaNmeyIE028nieUlPFuwtMENB9alTC2Gykp/idAM0AanL+v4UREhB/THI2zhfT0c8q/9cHeN109nfqXUIAdzq6ZfoQ3nTfoVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714612343; c=relaxed/simple;
	bh=GqCRiKgspobJrycf2givnWEG/8/IQoj8MDLkMvJ7BCU=;
	h=To:Subject:From:Message-Id:Date; b=Oia4ytB6E6qIga0/ZLLUz1GoAAjz2Y5SGIoCgBNgJ/9NxCiksQ6M4kNSZoG25qos0yw+fxknuCa5phmkEudCTDU/MPXmywyd2Voy4rMSFZr8DFoNsoqUYhphOXg7IQMZ/uVexY4eiTPXfwWiz00QRs+WO3RPYDBuqy5N1NrAn+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LxjS7OSf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LxjS7OSf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB8BCC072AA
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 01:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714612342;
	bh=GqCRiKgspobJrycf2givnWEG/8/IQoj8MDLkMvJ7BCU=;
	h=To:Subject:From:Date:From;
	b=LxjS7OSfilnYfzluH5dOG26Op6T9TxEJzex//hvUuy3N3yLT6np5kS7mXFjkHxnYR
	 PQQ9tmW90HFy6WV2QxD5RCzrJuuR/p36Xu01j+W1YSbpN17lD3la+rv8lhkZ/oLy/D
	 f7Jj1ZmpDIBrZgc33WhuxkuEZqBqUfCTa/yFxyuWtL/KgcGWoLUztma9vZ0fATXsvk
	 W5FZx1ZEqNsMheSZMqH+D7+2EBURqZRJPKhbYn9YjAscaJ7aBcS4ykA4YTTxvJ7lMn
	 RSv6Yt0wkbziMGoZBv71n4Y0yZVOTyqA+zcjHqJiIkydYb7kBVjFgprhnH2e2Gdw0v
	 QSY1V8XsuUXYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C64B6C4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 01:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171461234277.6667.11880881941410855395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7b21cc4e66d8a223cc2311f3a7876b4ca85e94ce2dc7bf95213cff1fe195a4d
Date: Thu, 02 May 2024 01:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714612342
