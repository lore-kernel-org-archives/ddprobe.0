Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22010306498
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 12:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774786494; cv=none; b=h4s1lvsK7grdcgHxpZ/wNszdeWz6uws8OwPQFrUGC3A5ppjfxOsMf2Wgymrvb+EWmda2f9on/bl02jd+BIm1VHRJefwhkQHy/8p1M51jbJy1kdbdgiWYYZv9YBuwbN5zENJbSeD9HjjtemsYBCHL5d/nB7BUGxGtZBIU/yIwHEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774786494; c=relaxed/simple;
	bh=tm+vFFLpt6wll/pwA2Lg0DtZ58eEt5gfhjpw+lGq2EM=;
	h=To:Subject:From:Message-Id:Date; b=Q1hjMPxHciumd6scL7kxAMLjthqAD48uVaPT+z4WxBSglP51uZPjFgTeML4y0cl15JXANlrq7uiVB/5ITjobomYOpMRutGFRvm32ZUjTTNQ5MgJNlG3rYmD2oEwA9k+UncQY/iYaXNMSsjGyr8ARQyHzsu8aUF7G7xTDCauBo7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KQY9+0CP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KQY9+0CP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FABC116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 12:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774786493;
	bh=tm+vFFLpt6wll/pwA2Lg0DtZ58eEt5gfhjpw+lGq2EM=;
	h=To:Subject:From:Date:From;
	b=KQY9+0CPh26XOy0rvlC0epg0FH/pbZU21pX5/yc3oPPHkgEzVQiJ4876d58NM+X9l
	 UrPFsJyFzWEM2FY09monaXXkNObQcYMmRrZqI0C2qkIeJIy3vr0yj5a+qA2mRja1hM
	 SwQqTSLbhFiJoCqeogudWJ8PUKe6XYcPGPiILlJQXfJHnXFDJihUXoG8d3uZS0jrE/
	 JWcE1j84Zpa+9KEzGzfcpg6UDH+6fen2ShiPQ5/stgy7LcqzO+VCPvIYbhwAVzNOl9
	 KwTTUARcV5TDScv7tOiHzlQKNB1fimSscW2NmIC2SzheqUqsNImhxA9QuMeYImMzNv
	 3rQrIUp8uLUYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93534F3D600
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 12:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177478649358.32079.4922963178078482460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7c3bc4a8fca8a6d5c8e13bbc623635b8144a057e5a9067ac2d2de60fd1ea168
Date: Sun, 29 Mar 2026 12:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774786493
