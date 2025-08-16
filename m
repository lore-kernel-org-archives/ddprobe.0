Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C6F21E25E3
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755334794; cv=none; b=H/WEpVnSBfMtRnvA9iwRHyUt8XKfRB1x2CHm5E8KC60JJeADVBj64Ieqq91gRYW0zyZpcTPxhyTrQeBI3bCn/eOVY2Rlu+MWbzQthsx4cuaUuT7abGVrbVYlm/Mlew3dq2XwBegHA5eKuwzVpJmzzbJEn1Af0+3q4KUSqasdcSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755334794; c=relaxed/simple;
	bh=9ifwcgwDBm3UrF35o8+HB2v+EYSz/o/6Q9jSn2v+wV8=;
	h=To:Subject:From:Message-Id:Date; b=jQUcZVydY2c0vCEpI1VK3Oq3OLeULc1n9sQpPzw0tk1promJNES2rDhQxv/JKXr9XdPsCJ1BmSmJuTesIA60vYTg4qeBs6r5YJYxu2672M2Li0oHWJ1rhWVzs7ACPzMSNy3XWDodEZPMW8p9mF639oAiEOGtToElIQhUrfboXeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K+dZZRVq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K+dZZRVq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BB03C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755334793;
	bh=9ifwcgwDBm3UrF35o8+HB2v+EYSz/o/6Q9jSn2v+wV8=;
	h=To:Subject:From:Date:From;
	b=K+dZZRVqobtiL/jsXMnq5YeH4smZFVm1qS2pQW8U9aFgyEbIbj9IEfW6uxlED4ib1
	 Mh9bcS+uVp4ZLSpG7ViqvC0rQeO/MokxQtO+pZpkNxUAt3K6qGlNTaGscHojKPaMBp
	 7IL0r6WT9xmviJOqL5UFmbWZm82zXmjL09BY2Z82cxaJXqSLzsOOolROUafrNDHFey
	 sJD+6hO7nHSpn7k1CWHE3KyFnSVWnTy1AbfCiwA//beLj3DcDZh1+7uYJp1hb9vi5d
	 F5z5xLE1/dqsb6RHVjzL2T4RjpqVpQxasH+ftmMLyOiayzVX72Y9kx7bfezPTTCZgJ
	 prpPimsUy9RAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECF9CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175533479357.8860.2085148216088598567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edbb27dcd6054a20f670d2bdeaee5759cacb9d5ecd47eddb8bc4d6d94ee68c58
Date: Sat, 16 Aug 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755334793
