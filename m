Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 308463161AB
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 20:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776284254; cv=none; b=llZdiyYlNqguXPVclc2S6+83p6U1Z45/kG231AWaJyvb4PNQdSLO1EnB4CdFuoja57hfVDH31OvOESOSGtXXkcO/5tCQCZhNkWDB4j6oj0gJcn9gzrlpatJFJY4cliOnvJ5lZYrbdDFbo7Sy7KgZ2auCr1/NzpQcmBOPF6bIWIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776284254; c=relaxed/simple;
	bh=bYtsb/R3FvVEiZv7x8CE/bpLAzym/9UBqaayRykgxgM=;
	h=To:Subject:From:Message-Id:Date; b=BItW0h6F6FnDUTINdZFGCJZzhbYxSYqDaOaa0+4gBMIisKo49GBOfBIq8ftZ3QZA13cYFmk5iQVbdJxIfmiQ0oHguPxPy1eKdZNfh4B1mTHR5tbZDRSp6caW6jCLEbSwCp7C2aMl5kz7umRcvOPZbo+HMkw+36UGd6xb0f7Xt50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HK+jetHV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HK+jetHV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF911C19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 20:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776284253;
	bh=bYtsb/R3FvVEiZv7x8CE/bpLAzym/9UBqaayRykgxgM=;
	h=To:Subject:From:Date:From;
	b=HK+jetHVPPwVU+g+ZtqCGAgR+OdBIGPWY0x4CYlxw5Naq/sRcrhINi5qDhGm3wqSN
	 Bt6XqT2wOpy0NW2/g6GLRVArGIQSuQxwY5cJ7nF6hBKwxOBXyKVllM+Zq0HLRKyVq8
	 Gcdsl97GK4/Jft18A0DpOBGTqgIEsUhVD1hbODnK2mOu0KGq0C4loAjmTgxnOh6v2l
	 Tm6ldy3je/xxxNnkRBgKpg7s3IMQMcbDR5c6RDXhjpsDYD0OL6Zb5McS6q0NwqCpTr
	 5vzGXFCUnMv2shfI1i2MQv5yX4MdELRsQpEInKJOYPfHBL9nQc6Xqv4hivYxxa2+Wi
	 snCoqkwf0vGxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD2D8F428DA
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 20:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177628425368.9188.7105319593714259545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1fa1b0a1eec298b3004c11c77b196b98f271da6d0634e87be90d1ae169b733d
Date: Wed, 15 Apr 2026 20:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776284253
