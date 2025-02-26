Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4215849641
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 00:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740529735; cv=none; b=pLgB52D5B9WSjpZrl6z9HSlc7OFDE2q76LCo6llfaDbRxfFKtfC8KSVND3oElD2wUp9f6Xe1ni8r7qH3I7p5lXOah9QTVYCtEhylzEEQQRfzYM7IfwKNi8xAkfl9nWBxwAC8u5EIq9Kp5TuAZ1btN+E6u26doiVflePm6MwEJnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740529735; c=relaxed/simple;
	bh=HXra7/DUXJOQcTHW5Qb4AhMqWKuWxTSyPSo+S2VmP3U=;
	h=To:Subject:From:Message-Id:Date; b=TK+QbEwydL4onbC9sj03Gw2uw6kUaeV3JZNnCIMIEbNGHfsiTX/jVrj2yH2w8rv7Lm6lLPbPmvlKGGxPtDBgFUz/ToWvfmNg+BMjq2fINmNrjvwat7CxhJxTQYuClzrcS3GnlhGJZkc4VS7eWUGEYi806w/fdEe3eCj1i6Mw6tI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K60oCiux; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K60oCiux"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1656C4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 00:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740529733;
	bh=HXra7/DUXJOQcTHW5Qb4AhMqWKuWxTSyPSo+S2VmP3U=;
	h=To:Subject:From:Date:From;
	b=K60oCiux/hSw7O4c2FqNAAA+ujIV/ARImb4xrP5FS4AG+eJkcVnDmXU6clCkjyoII
	 OJmcUSPTwQWZ+rcRcE8/oxoQCv9Xyfi9MQ6WP1jzpAIAZ07TtLawkCVp16SBQ2EiL0
	 DEYKPcKbDoNUiqOVQYcBUN2YY6krl6kiZknGjH4hIzkZs3Y4gjXf/198IHW1Cm3EMJ
	 d2pBcYbDoAXRsJv0roeZT3SjIqR4UMzBdKMi/oSl+7zORIROJjy2DVXaXLbkZieuix
	 qZLEADX9Qzwsjo2nfUXoQsQALtchovYl5cd4v+2gIwb4N8wgvXYxLEoKDVs+BaoMSn
	 mKw1JBFgdkb4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9638AC021B2
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 00:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174052973360.21941.16897430489692763877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a39d93f3338b02dc4d3f88c84c7cc513e30ab2d6072319ed78f53e22401b9235
Date: Wed, 26 Feb 2025 00:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740529733
