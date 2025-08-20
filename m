Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF8431A05B
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755697194; cv=none; b=UjkUEHxf3qV1+lDrehsKJ7/0rcvBQtwpez0zuaOQgq8lXHI5rofM0LDK3KEgUK1+4JekKS6dOrri0dfKtndF7kcAhUKlI9A1opNpXqJti7JOrvSjaCzfofzpi8G3xkNxBoiEim60iv4Y42WjTI3eYfL32Hv4lHa7JrVw/G9dyiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755697194; c=relaxed/simple;
	bh=UXfnmkcJS0d7yEnNgr4YxIf0couCynagP5pDJQZysR8=;
	h=To:Subject:From:Message-Id:Date; b=rNX14DH1jQ5vgARzknj3QYc47BeSFpR3OhB6qJccPzKofUa+NIcEjFQb7MPl9LqkEbeArSXhvLHvTNJGfM/4pXZ4ZL8cWC7kbxodltvgi+AefkBSIp6q+4cUbtfO2FZvVTk9SOdurJ4QR1QA/g0ci1fTRStnMCVNIhFswKI4Vs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M8ro534A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M8ro534A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0768C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755697193;
	bh=UXfnmkcJS0d7yEnNgr4YxIf0couCynagP5pDJQZysR8=;
	h=To:Subject:From:Date:From;
	b=M8ro534A6yNMZsgBhcRPdztn4XCwi5kK6DueOSTPkyTM2LWURQRmVQGJyO1PFW6LX
	 gawifgoy4nwWVzoDZimXgc/Q6mThdpszu1XaqUL+S3M45LtEOkq5w+TsNIMYRLWIhu
	 bcSCR8faqW2xY+BK+b0U2HbkQxCjs4A2oGE/fv8kyldOeLkh1W33lRNTjldqoS6DaG
	 RvIyDDkVUm9wLMT8lZY6z7u3MnhxlnxyN0yKaIRjI6l9aJZ6uPqi51T0FhUClov5Ph
	 Cuf/9aDsINU+NSHxnOY9JcDFgTpiNlzsxXTxlyRQZgelulD1hn3SFY4Vk5mFtQw0J4
	 rdJjT4lihwNvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F18BCA0EE4
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175569719357.26160.2099866385857945493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ca7142c920a1e04e043a6e5b1b2aeeb5afd3ad992e0ed1520ff74d012ea85b9
Date: Wed, 20 Aug 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755697193
