Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350A7267B89
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 09:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771234494; cv=none; b=s4vKrp+1fnmP4nVJqtC6a7E5OIMYvx/XOwULzwXot8DaopKESUz4cl8AAxQqL5dzJ/QTVwQ1xjoTzAqrPoswV1gF9iMFK3398bYGMtZ0+6eR7B5oIVKABWFjKrdd8cMFJBT7/jTH1S91bqu5rzXOaJraOrXTEUuUXthrqDiN99s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771234494; c=relaxed/simple;
	bh=pkoKdyxswOkEQiNV2xig+q7r8KaLemKg6mPVy2xOdsI=;
	h=To:Subject:From:Message-Id:Date; b=RBdobgYZ/QQPEtP6OAj0SC+3QhalwahBUIuF4iEI6JN8SwKiZ/TQ0u9RFC3d3vNRiAkO68rAVkAgysUWGStcbFy8ZsvlbtbTT7IiR4rxkIgSha3vtAufZEY2zZLnqXRKDHZDvRWVjKt41tBqPxCDYcpCws5O8t61wUEzpWzcc6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q9MQkjCs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q9MQkjCs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC60BC116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 09:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771234493;
	bh=pkoKdyxswOkEQiNV2xig+q7r8KaLemKg6mPVy2xOdsI=;
	h=To:Subject:From:Date:From;
	b=Q9MQkjCs64XFaZ50PC1bDJoHoNRor8poNo2ks5h8TiA1W5xlXW6wsz5ITSy//XEk3
	 brCT3jdiEDDz7reRf3kyInSFjAXeYUSYH66u03VlmsbuqvjON9Dv2kKaiby5cjo/C8
	 UmvyGv510GwOLJylw1i/DbvHNeoFJ/U/9krHanByFkKPaKkAcsZRCA7Ji4dIHmGFsK
	 xXSp0L8teM6OSkRXVe+Ar5oYD5fykFU3da8gJV5jY+pHgwyrqEzCR9vYOfKpYrknV3
	 u3QYMToqWw4y3t3KKfLW255QvvY9DNKjKwzwiBeBgn4SreZ4aMiCbIES0C/tx1wD01
	 6/EEKIgczlRuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E645EF5860
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 09:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177123449363.21187.13963937839814822864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0564ad4c27532240fb9e1733d607c914454811380def30442c464d4ddf237cc6
Date: Mon, 16 Feb 2026 09:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771234493
