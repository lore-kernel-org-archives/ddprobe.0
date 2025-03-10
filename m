Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55D8F226D18
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 11:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741607335; cv=none; b=ZNS750UL8J9Cy+1MaeANn6k9UxzHYYMXWuzsPHtwQ5ENnXuHi20GkINAkog4M09BkmdfRGr+2LAYXoKae4ZMA0B11Y8W5oJ+mDd1TdqU/hq80T8hUj3z0FKP4+/5BKkSYjgJzENC5dlqvVPMvwHSzfOApZTlKpvz77DHCaOAjWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741607335; c=relaxed/simple;
	bh=qd4F2lBwBUGco91D5qxOfChvXCIT1eT0+v/DmkcvRBk=;
	h=To:Subject:From:Message-Id:Date; b=ObAkC2CDvW7IzYWVaarxZ4onr+gmppIkUvnsY1nKBvAOoykQAI4pb7xzaTjepoi0HkJdW4gIn/CJSytik5wNZn2MN/FB/wg6k7HBTPkFIrda7Qo9+nLhwKc5NUr/TTUdozgHWWbjQ/ICKTKTsz7f+eOnmooTfvZrz9imPPEucrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gnSmb+rg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gnSmb+rg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0F11C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 11:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741607333;
	bh=qd4F2lBwBUGco91D5qxOfChvXCIT1eT0+v/DmkcvRBk=;
	h=To:Subject:From:Date:From;
	b=gnSmb+rgSJFr8rxgYVnTzmb4t2gPdu9XUOhZk0K1TCItLI95EIb7YfuJkd/HdM6yi
	 l8JGWcbikH5LytkQKttcFDd/jOy4aN3zvP4Ihfa2EnQPRGQCVvyQ0NWBx4uvipUDSN
	 hxil/zRxz21ALo3MshuAxiWt/DxltbPbUmxCrjhPE6dp9Rw5uVYVug9T0wqDie+Q1M
	 VRfWR46bk6g4O0W7w9LnydNiKVPfjQPFtY78Un9O9hxk5nHLqZ3FkMnZrWRqoLrr40
	 jFG1wFuonGmdyo81LHCh+Ay4uHqScKbdcuR7yEmLFl8sbISyDSAXN+6Otajb0j9Ljq
	 8VIV6capzQBzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EA4C282DE
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 11:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174160733359.19108.2897038731259423071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39c6fc0d6696c15baf378bea610553831126f809544721afec8fe015e8a6de93
Date: Mon, 10 Mar 2025 11:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741607333
