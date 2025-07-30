Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FC5E126C03
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753835994; cv=none; b=Zu4ZWi+GL+D8QyjI1PYPRF9kHxAFArASefpYQhL3mj/OJEsx5+WOMWM6X8W9+9DUyKsIe7KWcbCRdhjrxYnN0hlNRtd0FkNnl+BKM22UPY3io95JfzuV/LXiyh09VOhEGwoBI7SyIZq/ufmNopd7RFx3i+dgiW+3jKkDplorq98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753835994; c=relaxed/simple;
	bh=jIDf6QKgqi1ktoiArFL75QlaND4rkRQBJs1K2Yf7t30=;
	h=To:Subject:From:Message-Id:Date; b=aWM7n7Dr5tEPufGubUv9q/TZO5vM4iqsVn6mZcFVGoxnm5l0vNaiMsTgASyKJSrdV+YM1q7iiFHsJhBNu2/WgfEESrOIwqjeiWBqOoG9CUrPS0jy3A23uXXmzF+ITEq0lZ3sg1Jdiu7cWZXVYS2IbWpWBuHPPpAlausmwvm+yjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OaXMljDX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OaXMljDX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F489C4CEF9
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753835993;
	bh=jIDf6QKgqi1ktoiArFL75QlaND4rkRQBJs1K2Yf7t30=;
	h=To:Subject:From:Date:From;
	b=OaXMljDXatYiVUQ93/9yPcsD7ZYjDu7FjFfNCUi6X7WWVYJbXAhsAwaP6H94JLbMI
	 07R5ehEMjD6zoc5j4VbkCihAK0233w98iSPXHqNQPxEMkBfa8PHwtWFXbIH8n+RYry
	 hMRRtWP2JKSXUpqP522t6D6cwcP28Zw/OtvchWAiefR/ozDQaU21NQ28/sMMP0d4WD
	 SKBKQWA4Yx36JQjVI7/DXfEKmWi6fP/ZSJE20AVXVsU3lpr7zpHXkKaqITPHC92UQf
	 OIQXod2Lp+fuqeV8jlmK/cUt/jrn0N0jp61kt0itJTWEzQLpwi0uLur7WJTrpwK+17
	 6bSYG/wTXfwyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF03C87FC9
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175383599358.688.14574697209402243188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1778402d9e5c70c01ce1ecbb3871a6b5f9c65d54c71dccb9451d7bd91836f54
Date: Wed, 30 Jul 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753835993
