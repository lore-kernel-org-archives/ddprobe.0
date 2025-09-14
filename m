Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45E491EEA55
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757812194; cv=none; b=SXruWsOIf475ekjg8wBUkNdT4HfhU2wP69qWDXnz8dqSiXKua6N6NTmESH2f+g+zPgloriH5GlBOG4TXa25VvnCMugx5HORH2HHtRa8C3Y9KKdp8IhuIi5kri/TDEVD3qb7k0RwQ0nBT0kLpnqDN0umfloXQvOjkAbnbQwq/Y2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757812194; c=relaxed/simple;
	bh=wN+74THIUxIgWfa4Tt2ulHGD0pUNl+WYmVtEs3kbWIk=;
	h=To:Subject:From:Message-Id:Date; b=GGBdMLP7mKNOl2A90xdl3arPC7tB/yh6wOl1RZzJOJ0zaeRaRsjyvPXw8Zc+zLMW/iY9ZGw7TNvndo7b/mWY5kC3jZx/XbpKZ2v8YNcXeeZxKZY0I3J3XCygrA2ZNJqF1unfhYaZIj95HsaRCcxtbeyGlAdflyqIo0KrovKMruc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Imf3f6zv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Imf3f6zv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB9F7C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757812193;
	bh=wN+74THIUxIgWfa4Tt2ulHGD0pUNl+WYmVtEs3kbWIk=;
	h=To:Subject:From:Date:From;
	b=Imf3f6zv/Ctk34uzOUeocZwJZeBf8ZLh+yehkxDdjdCcyBAWm0nLI/VxVDwh95D56
	 8po4rCFdiojkVvrFkZYdkBKK8XTzFeEQC8SNEKEzpAtQTXpYOnoSG3xDOObTHCzWec
	 KSJa+6jSK20qCYREFqVRnx9p1ng5TpzScIvh1Pn6TWzDDx1jusgLbjRDtZJGPnm95a
	 isr5MA4Y/JsS5EndhAz4FZCzg/G3Zj3XT21eJ9QgA6Q7BMlAVKcgDGmQE62nVh8DUu
	 U2KZHEt1OhFclVkcZJ6CHBLaxhzIHjxijr+q/+/OXDx+EEiC+SDeoDgyDksL/5Oi8c
	 GG3zGBexUL+mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91591CAC58E
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175781219357.20167.3533163416982615403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14ff74759e9e4569620ef50ffaa4391656ab8fae41995dd56bc7cb7c2752d76b
Date: Sun, 14 Sep 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757812193
