Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06AFA33468B
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762881594; cv=none; b=j1RBBqdhBXfthL9KlqS3d4bnpWYZoun+32sHAjBOvNohKDUATYqPfUgHof1K7VkqZgdtgs7cghxpe0aiu6J1HQ6idrx8hrlFO4tKgsOrqnPpwKpQB/JScoOWPI0E1/hFGIHejKYtEQ2ZFY3Llfajw2FOLFK6T3bQOgJqfJtbfZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762881594; c=relaxed/simple;
	bh=FDXpnFfi3cqz4BcmY566kQXQKRM9Smgquz9Fhj3L1Og=;
	h=To:Subject:From:Message-Id:Date; b=Liw4V40DTrT93EhKsU7gIEsEEAtJjwdvxyXcY1vFPDadoRKJPP4rt4mMwsx6B3vSVBpWcMPJKelzoDkFbQOH8bWT2U5EJYCeu3vsmoYyCToRvErQAS+fgO+qUJ/4hfEbubeVfQBxOsgeJsGOQuzmjuYrz3eZGZcMemHmZ7jGHwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FBqlM2p+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FBqlM2p+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D817C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762881593;
	bh=FDXpnFfi3cqz4BcmY566kQXQKRM9Smgquz9Fhj3L1Og=;
	h=To:Subject:From:Date:From;
	b=FBqlM2p+DZ2b2OmoMLTQewQqtb7NGXuF/hjfsoeg25t0M3Qih46JcUR+mYKqHOsiI
	 1TM9bE9KQMhONrYjSMXbCentizbhVzmpDn7rZNWf174mDPM4IrDadF28rNp4m9rkks
	 igH8/ETJ4dq32SswGsMHGomvVA/OFafSTuacj+gamqTmwqsGbb1S/TJRZHHYpNWt+O
	 JbavG4W5pIZWZKocTzR1AhwtcV+9eXyVuRlJQt5ywfiAU5BsNvYOyJeBuLxZC4xjlp
	 2u/rW/re1ZGmrC0Jup6UPqF2Pjvejg933Ioz5d2XaWGtiDpzmL3JGvsf2feW/3VbXY
	 a1TkN+C181b9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA84CCFA1A
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176288159357.6996.11615996067166159063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 616a528bc46f4d9450e7399eff54d73cf896558733d7c81a7c393ec0d9b36edf
Date: Tue, 11 Nov 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762881593
