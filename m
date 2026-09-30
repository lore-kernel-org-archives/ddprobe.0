Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC3CC4C33D0
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790766034; cv=none; b=lY5XisRA1Zh8vIcFd/KixSQG3WTF9wfp/qdmFp17ziGEEbNGgIXG1fQ9QSSOHwYDR7Z+fDHypFH80zJ5PBvESKLh0OWI+RXAx01Pib5fXsz/hDTAYqG52f6VIYT3i5YZXjk4jTPKos+mc8jSVWhVv0W9mIv2zBgEeIDb3Z1nv4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790766034; c=relaxed/simple;
	bh=t29u21IMhC/9vC4E0CsrsM2Kr+/DGw/0buc0dxoeAw0=;
	h=To:Subject:From:Message-Id:Date; b=iHNLTwM4EfezPbPvErRmXS765/zRPKEAeOy/UKufohx86A+rUL2jo5Qc14rUEqLc4QMBTL/viq4QuBWm3MKMPLqnyY+6EnxFQjCkIEx9LszINai8FgZLA6nePzofkhKweaVJmJvx7BpmqLNwN6EV7FuWs0rc7Rw+W3jr6u5FawU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ujk8q1Nr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ujk8q1Nr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD431C4AF0B
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790766033;
	bh=t29u21IMhC/9vC4E0CsrsM2Kr+/DGw/0buc0dxoeAw0=;
	h=To:Subject:From:Date:From;
	b=ujk8q1Nr/D6OWHYQp6FnRUVJ+FXJtELRdEMP9piwrPDv/D0mD4g9K7NlZQJDxJ6mM
	 5iH6n1sLaHJ6VXeXLqPln+vBL06Y8KO/pvNCcepmCz8PYN/5AEVCH0QHczbVdoNB7k
	 PHv171FC+h80wW5hy+kwkQsXDW1ClhjSbE88/CGMFCmp0DYXKBRbayxhIcYMhgIUnJ
	 ersQp3s7iq0QZbdMrdX59lQJyTqGiBM6j5B9P6/5TIgBx+eUgpaE4wJ8qtGkhJdKAV
	 uIOC7uLwVC4+QEUtKfwtuz6GzICbRxH3517KTKkwtWUknnMT3EEemRLWUBrr0WOJI9
	 /S7iMSMpsWSKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFD1CA5FBA
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179076603369.22723.10017012024733476716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68eeee5dc59729eca67c9bca6164ba9854fd4a9412c8656218f5795e1bd21226
Date: Wed, 30 Sep 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790766033
