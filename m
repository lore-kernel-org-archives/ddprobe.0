Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80273346A05
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 06:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768371234; cv=none; b=EiV4kRmRuzg98xG6ZXzkAsXOeZZFdSWtfeLtHVwpAgX1++dBc8JB2M5jkk/1Gh7FzuCVvYxqzQQ6LsCcIoxxtnLjp/JxwKVIHt49MVw1UuPqtYEpQQwFpIWxs2kNnDfyfhrRMuayreuuUbI/rLByiB5U4D4DzqWwK8TiujcB2bs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768371234; c=relaxed/simple;
	bh=hjA0Ew6VR3cavJNdP1GlLLTbQbZxXFalJBxgxVwIM94=;
	h=To:Subject:From:Message-Id:Date; b=rWyVhI1soINcgKghIRG8Zjdkci9KTxSXlWP6M7K+X8jIxOahCtlqMvVGaDDemOuldX5lGwjSD+eDIPrT7Lj4xdqVBrqv/v8w1SObJro+QSLEKa3SN3sFUfIyAk2P6amFOXwy76tVxJjrH9+QPxgTQutpoXb/QMQnwKi9FNK3bQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nNUZci0M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nNUZci0M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0187C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 06:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768371233;
	bh=hjA0Ew6VR3cavJNdP1GlLLTbQbZxXFalJBxgxVwIM94=;
	h=To:Subject:From:Date:From;
	b=nNUZci0Meaxr26TKjZWz+HFYW6L5QHijQBxPT7yc1fEhJyyzMUnK3vyjX6pAjFYVz
	 jPcIRPz32+j5d1FTXFNAhHPWn6kPJlRGm/VGn1vwTQK92td2qQwSGYmPfXqQJKBM8T
	 Asgexu5WYe4yfA//tgp+y80rHRhplKvVYusi0AeJ3mxIAv+omfwOQBExB4QgNESxI3
	 KuxeC/Wu69jZU3j9SgobuUsg/LF+uu7HYSpLyDubt7LhHLgrkHhVd13aPPjQ8EiL91
	 TdxLhPXTmLw0wadcdC77MrEFogpW3c9szt0qSABlTHV7mleu96IMKqRJnJ3unS6xEG
	 lRdOdOMFWhi2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4D4D31A0F
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 06:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176837123357.24880.4296057628313982826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2e4049ec51d22b9086074bccb59d624c3fe3262b47baa85e0622213f20491a7
Date: Wed, 14 Jan 2026 06:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768371233
