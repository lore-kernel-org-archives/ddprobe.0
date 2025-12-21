Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B97F2264CB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 19:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766345634; cv=none; b=tKGjYfQ9eh439kxW8AB+GkODMea1KZ5HFIXnOGMlQpAGB/VPYxboXZEPxyaUktqpgV7SZJgwkGqBdQrazJjblOWLP3WAFkTbpE1gCyX9qYeTfzDUra195dsWzOt032i7j9yLjd7JDgdJ2Uhq+BwQW5ULDVB9/8cTlmsPlT5YhBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766345634; c=relaxed/simple;
	bh=JhQqN2+5W+/U7gqp3GoiCrcu147Q8YQp4uQ1X2h7IoQ=;
	h=To:Subject:From:Message-Id:Date; b=u/zybtqUFR/UfQO/tx/EwTCF9dwRoYnakZAT3JoG0Y4E62o02nSXRa4XjXpmlIwl64HgRLhADH5CV52FUyHbnTsAJ0HPkyneENTt1/B8X5zhFyXiRA/Bm0ESCE1wejnOib8cyRNG+RViPgFnn0c9gmIwogwbK1WfGhst1pfYqFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MA/Opwi5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MA/Opwi5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6474C116C6
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 19:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766345633;
	bh=JhQqN2+5W+/U7gqp3GoiCrcu147Q8YQp4uQ1X2h7IoQ=;
	h=To:Subject:From:Date:From;
	b=MA/Opwi5ekjiJxjuy1mxE4fLMCwfKMpTCUwjKEC5m3o/81LN5Ilp2Yw3JKwyWF6f8
	 tyz7nCx78squgCrHHzGY8uP8JL1omfJVEhly66Fv88N9flklyOJfNIi4CypO+LP+0c
	 dfPZuM/Gt/tEaxzoHSstzZ5ghUFlqj3Grc4gv2q3bPNcVLtbLEyyu9s+Iniw72rQvY
	 YBcUuoLyIE9ChgLsXqolemKFC8krCbGkr3V2VQVMEIH92qgu84Zu/n1HuE96yovPsz
	 3mQD7ltrwnKUaTNXMYCkRL1NThUU5snJGBLubCXRVnKJuKBzF+29O75OUzpLzhv/eo
	 xoKP3X7a1fgYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945C5E67482
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 19:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176634563359.30665.10828834415674318939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e76fc5347e1d2fa3079c1497ef6e1064b9596f15e0fc95db594b3958e191b594
Date: Sun, 21 Dec 2025 19:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766345633
