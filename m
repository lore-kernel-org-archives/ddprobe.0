Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 043B1258CE5
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 18:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766083434; cv=none; b=rZMbKE1FEyW4fSPCEaCkmHTcGJfyMDNPOYqGOYEbWMwkF62wIMyZjxu3DOgKlRp8ykEM3K8tbhUfMB61ThotrO7msfWOSq1RXulyqQiPN6+3jvgWWN8qabJuSvt2ilH63y9/4J5pQyL0Svkl3qUrhfpeD7lO6+uQ5gAweJsQs9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766083434; c=relaxed/simple;
	bh=GUGRwQg+AyDYwi5oQequMeCKOec0b1ngFnXtNb67hao=;
	h=To:Subject:From:Message-Id:Date; b=kGPZORLp8MH3wizI0OroGbQHYhw4zQUP4ZgGKnBOd0CTvnorvXBUT1Jo6dLFxsgDfwifkLoufIibAYl6S8MxnBVXikRnD+Ac8oSAuaptH6K8/J9txgyY/8swTc1jUSbSAoUjlxW4Cg3BBHJ1vtyrgW426Kgfp4PcpiLFEuwG8ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nr38b1m9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nr38b1m9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D1E3C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 18:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766083433;
	bh=GUGRwQg+AyDYwi5oQequMeCKOec0b1ngFnXtNb67hao=;
	h=To:Subject:From:Date:From;
	b=nr38b1m9LvJs5xTgBmn2gkZVzblWRz3mYHmcodaXSmmr61QcDrhGKpXOCuxBXpUvS
	 spprczSIk9GNcdKqvjJojgscmxiSMms3/nACse2C3pUHC3ENqNpwQWY9xHc1Q81wQb
	 zztL7a81vWpZb5PRz/terYjE2R+r7XsnVkazgg48IqG5nrEHMPOxnWBLK+U65TdNiM
	 XLZpge/dNz3l9mwNvXun6m2gjVxLFy0BIDVz0Qlni/cCX3jPkmxjFGZFoecByEHOTK
	 WgCkjv2xhtBLiGwvmWB8GV4YFgu2kWlQw+61GFRSm3osmfQwtkRkYdjvkIqc6FTbLx
	 L+WGkXFQCOpnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90997D6E2CA
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 18:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176608343358.30902.12724350847802457880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28c599e3735080a43fe8ebca1261dced60eacd0efb4b7d9d2ab1b9fd808ba8d6
Date: Thu, 18 Dec 2025 18:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766083433
