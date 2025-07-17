Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 461EBA94F
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752790794; cv=none; b=nhbpDNajJomO4O8jTb78pFLSUqzrMisBru5sIw2/Aazr9fR7EFGh3Zy+2WKsx8kIXX5T5SpRbxTKeCl75FAGcoJdYMXLrl90TfZUPdxer3bSAe9hw1KbeaJ58C5kphX2weer2mMviNI7uTq8p9dkJ2iQEDnxO6+byITnxnlMP2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752790794; c=relaxed/simple;
	bh=i+Ig4Cic+V8rKdQpUag7sYUB5SFhDKwHf2+wXG0sSfI=;
	h=To:Subject:From:Message-Id:Date; b=YxycURSjBfHMnO8oJBEO7ygfQNGqUCBqlCPs//xy9kR6ZuJt5hRiSgnfA6u/fZcaTzsz1iILdL+nQhqABHQaBHcYWLpC6oILOW5uMZtM3rOzfHtgAvKdIAF/w8vnV5XrUPYjdj1VSBZ+ndARHYLncKbX5PQC6XbG7PAFnTrzucw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FrGBsmKQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FrGBsmKQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE0E0C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752790793;
	bh=i+Ig4Cic+V8rKdQpUag7sYUB5SFhDKwHf2+wXG0sSfI=;
	h=To:Subject:From:Date:From;
	b=FrGBsmKQvHk+zXRyJaFS7ERW+JgryrxgVVJ5EKUxZoUPuLZ+8bXY4GgeSVfBinN2P
	 09eIxcHyxUpRnHgD2UzwkmWuXb+WiXLCfM4x/VurSToZ1QsJiQcPtVakpVV1uabc64
	 on/5eg3l3Hi0ts3AFyQMb9DAPdkG88PD7tG7chpqzLCLsn4O4yQKDgBRXsxbFgYPD/
	 9lNzq8AlK1pGDfV3sB1FrI5B9FfeioH4zprEr73xtctw3lNrdJn6Onu1d0Jbkjif6r
	 BhVKn06WTCNhFQpASMSEJ0yIw6bxG7zObryQChe3/zSAHHKW7DjyoDnrxnRgmubWyT
	 Th+2FK2rfPAXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99973C83F34
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175279079359.31802.14784146989148119909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cc41b8e060e9a4499e9596077a2714a061879d9ee7a4c540d4c06f52ba0553b
Date: Thu, 17 Jul 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752790793
