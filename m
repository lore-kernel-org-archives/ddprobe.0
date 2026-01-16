Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC743328B76
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 01:23:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768526635; cv=none; b=cko8wjCx1Pa+CuORmnhpfh6eo4o7m2IVp287IwV1wBMWRd7vYKnL8BDbj/5KnVsOWSlayYmhnmzyvlE2dgcxVax8DpimX5Ii3fq13sTnTOsZC7miPpF1qEgYMCfMkfjRRG6nsaLQbHnXRsaLCjSHaaE0AJ6V0UCVliwZfEM3uB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768526635; c=relaxed/simple;
	bh=ZqadU7V2VJjrp/lUqmzJHOb6kiBfzA60EfRj2+e8504=;
	h=To:Subject:From:Message-Id:Date; b=J4n1hGdEKdTGPrDMffbcqmAzfZS3girYt6L6/T2KAQPdodgQ0PH5Yg9B6JgqY/nyzVz4eZXWAZloju6VZIg7fI8N9zK0bhpRS8+pQCPO+h+p5MDUcjGwTr/0TMoqMCf9EqsVsnv/HdEKPQK/5DHAY3KhSfX+Mua2+qFtLtG4tzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mM9P07EG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mM9P07EG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1660C116D0
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 01:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768526633;
	bh=ZqadU7V2VJjrp/lUqmzJHOb6kiBfzA60EfRj2+e8504=;
	h=To:Subject:From:Date:From;
	b=mM9P07EGwcG4ocns3kQhRiFzBBBPlT+u80/ypC0hjuZF2lZ5HtplgGD6tOHWFWhhw
	 UEf5YPlOetXXpKBXT07b6lY9rNCeRGmcvBNCfUJWZPuPFxJuT7AKYMGX6AvqOWMfkj
	 p3HwoqekX6YybN0YT7V9TfyHIXQBHORl7sviyuWMEahqjrcGc5JEw0yFNBJYXMEQzX
	 NCOGTRQxOXe2/hlOsHdDhvZbNEVgfd55vcX3v9pW3DrfswXIUkOCnh2qNvhZeqcOh6
	 Frvz4IlPyEzYGEYJCk8T4AUjGaPjbR0vsFLXuZwu8qojcK1shVA+ms6+swXUlROKyz
	 L7i+xG9ZabA6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918B9D47CAE
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 01:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176852663357.31324.12978603916153427852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3b03f2f77c8e32329426debb1f5079e454dd108ab54eb1335538acd91ee873f
Date: Fri, 16 Jan 2026 01:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768526633
