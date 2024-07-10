Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4997F848E
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 12:26:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720614383; cv=none; b=Xx6WJYbhgWkaq7XSZuyrev4MSkxjg7NR3R3WDO1zF4fyr0qOT6PqP83yASSwwQz3CjAPLZNYAvlU31ZIsEOgybgqEkx2AQl71KyUUcOqBmGyZJUjx7kr42lXvYB4L00hovCHrJJh37TZN1huOLMbkPz6LEtQ7frDhyQ39V2yGhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720614383; c=relaxed/simple;
	bh=MdkiGy3M7mKmpV42GR3ph5Ph1zmT07jCXUlFq9/YcpQ=;
	h=To:Subject:From:Message-Id:Date; b=lh6esgitMNmQWS3SOGx16Qbko91XcWirhEY1oEIJ/a3lU5xMuzR8jQHf3uLXld/axYSQe5FTlFHxrNXtDIX/G/4Q6LxyahqxbVnSCFL2gZVtsLFiWrCBINtDjHUpM6Dn3JBlbiFvsQilF9Ic0/qUc6RSQ+FdmgYNPAZHZe6PLTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cpUp5iL7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cpUp5iL7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D51A3C32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 12:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720614382;
	bh=MdkiGy3M7mKmpV42GR3ph5Ph1zmT07jCXUlFq9/YcpQ=;
	h=To:Subject:From:Date:From;
	b=cpUp5iL7BmWCo1t6uezJRnNkI+5cXL/cKbHxJF54/J/QuxjMJS2B1cUX8eK+e7XXN
	 EtwQn1NCfwNgvHJhkiTSdyEaO6qj158jgbeSSU5lD7/yg9jTenHw4HSRJBj04QdaDE
	 7msTMOkVxpbCkSJBtyypwo6BzZxoTr0Z+aAF/vTeapqFepbHIfyY3fsNXi5zS0EzdY
	 64MEJ9xHD+LqgBShQ+2LznyxIVbviKynCI2wWdhCrb+Xk/gYqe716gno95oq1+bxAM
	 0fIvr3G4gm7QkSQn1o2F0NPf+ty4EqvxU64DCQAsfkmFNF5trwp0swvmNANxcgSn/R
	 O07Ru5QYKN+Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5F1AC3DA42
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 12:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172061438280.26096.14440792076188921072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a770e23e8929b0a30cbab1244b7dc87b2ae0c0cf0008eda3e5dbb8bbf36a48a8
Date: Wed, 10 Jul 2024 12:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720614382
