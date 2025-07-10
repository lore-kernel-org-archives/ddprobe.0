Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AC5027E7F2
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752112794; cv=none; b=SoeZR+8Si7/uaygwL/bS1Lmz4ho3akfs4VW4VFSLmCLPRdHf4ioJ8uZnSZSfDunXyfxR78Ay2MOaNkWyoqc8lsf8DbtNToPOScj6AazmQWI6IEs5kYF9M3Hdp5yfLu5YXMhr2+3QVnUYj3EdMfY2rdvoE+1w2/OqH9RBfovMuwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752112794; c=relaxed/simple;
	bh=Y626Xxd6+53G+4QCJc3Wh0NQleh04AIUd/1d8ghjyRg=;
	h=To:Subject:From:Message-Id:Date; b=uVTJ/ZAIEetWIav8naPicrORfT81ou+ddyZzk7ffHTXvawDcq/j0gP/3uHzc0XCNIOjnErYVMQihQU6n77BNUa8A9BOc3Ef47pQ4+tHTwu33XTCxUHFFCB6aFoGwWEwcSkzHDDHalOn4GrFb1BxVOK4Ea7CF4xbGFdsBzmq+afM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z6BAfuqH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z6BAfuqH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06FAC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752112793;
	bh=Y626Xxd6+53G+4QCJc3Wh0NQleh04AIUd/1d8ghjyRg=;
	h=To:Subject:From:Date:From;
	b=Z6BAfuqHSSux+7N9pn9cLFP4XrA5tv2Zi9rieYPUexUVIvB6/w9XFLA3mAPKElCcD
	 x0WCOEmEE+CFAmqrHAbuJabWCkGCMk2bljuDUnrm3LOFSodj7WyJhgAIbzINFY97p6
	 UUqfjkYyXioM1Z5hk9QUbqOq3Lo+tw64Rv9wiNs4U/YPUGWo5k3UJGuZM+/D4HgfSF
	 NQ93g5xwGWj9OQ+2nE+xhPdluM9Ktt7UWCMPD6LYkBScEkGGIfuxZgDrw21QNenwEF
	 2k0DlojiDSmNF9IADdD+wcvAPqIgCWQM9jdVGs5t7a/+mZv7Zav9nU4Y8M5Uotvt8F
	 tu9g/fuC28dZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F641C83F10
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175211279357.29734.2889453569557474175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15617e4b80429e1f9ae0b53476ca369c2ac79d9bb04419e26da10dbc2430a405
Date: Thu, 10 Jul 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752112793
