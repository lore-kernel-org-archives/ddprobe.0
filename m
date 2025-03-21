Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 420321EB1BC
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742545794; cv=none; b=pbVPkRpemm8TpXghnNsz2vL2/GwPTzffGNdEJ8OGKtnbGI6YhhOBj8NTWQmNWe6in0MKvfUT11Zdk6mAb7T4vS1hJzcD5hmtFsoQtAMrW1WOST9c24t8grbb4kocPGbaRg3Lqrl37mQacXpIE7tIJvroXE8K4AHdEs0ISWC0Do4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742545794; c=relaxed/simple;
	bh=a0K1Uzedy9ZYOlR8vOa36mw+1W5iBlej9gbFGlwYWCc=;
	h=To:Subject:From:Message-Id:Date; b=iXR3Y+2mE1ZLenzC+y0tMf6K0CweD8ii2HM0oT5Moghg1NXuyjT9IBfaEGDTtjQJy/RYC1hb04hXZKkt+kCleuAry0owXQ7EO9gyTw8++M8QsKqXbncgAHvnnjmila7AGnH7QsWR0QnLP/dvFgyfy5VL36+dzWq2AbGDkk0+FLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L6V5SZh5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L6V5SZh5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6C3FC4CEE8
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742545793;
	bh=a0K1Uzedy9ZYOlR8vOa36mw+1W5iBlej9gbFGlwYWCc=;
	h=To:Subject:From:Date:From;
	b=L6V5SZh5AocMcX0z5UMS7A4plgeiCcv2wQzMsL58Jnb9Ii31BZXgUN4iIiUtYOPLu
	 zqpFjOc30AIfAIFypcjeD0OpzhuJdI7t+my3MF7T8g5Euk+75EeBaohfAYAHgbRWCn
	 nUgf5M9n8hl3WKxdtxnduerNxPEN07qs11J3B5b1IedyGTRj1sTkcGXxfhFiZbAd6m
	 Z2ieuz4wfVnTJBnFrNHz92vXwbgN76sqYN3avq/fuq9NP8GSQJylEquZRXngrxz3PU
	 fP2KfeLN7P9u3GCQWJrHyFWDN5bZM7OfdO12SSTdfnghrI75kCxoL7udVfDCeKrGav
	 +uUHG56tUEA1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CB2DC35FF3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174254579362.29952.11403449106894599463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b8b7c6e2c5721ff6a9314bed3c5db111d37c9c6766ab368d5fd6fef7f250ba1
Date: Fri, 21 Mar 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742545793
