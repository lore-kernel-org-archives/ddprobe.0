Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 256C56F2F2
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 06:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766212434; cv=none; b=UflCxkAXyJawtdo5Sp0uJVT7uiqgr/dt0lIFbI1T5uysOnl8x0G01tGBnoFMWAD2QzTjmpNWRjIGrZdrZgu4u/ubz2fX6myEeEpAeB+OjvGt4dvFvwPs4r1nFPiBvdFGqJBjFj1g5HY062CDdRZbAZOVKC6DDRFTpGI37J7bdMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766212434; c=relaxed/simple;
	bh=tg5nCO9HtUi97iPQfUBd+N5vGZ4dSBN01rpbrHW1tLE=;
	h=To:Subject:From:Message-Id:Date; b=V9LmWEFoPPpW22fOIcyWwd6rLA7wrgYeRSH9Wnu2jYGcKgSGkaHumj8CIo7c7ExEYXxfHdzHnRw5yM1jXITNLTVj/39c8txlCQXSypuSxdSbD+FZbwDRTF9Nimebje4Lm1BnpXPjTYrBMu7fqPJmdNDwHjABaKQ324UwxbBXgFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QJQxa0Ez; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QJQxa0Ez"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD3DDC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 06:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766212433;
	bh=tg5nCO9HtUi97iPQfUBd+N5vGZ4dSBN01rpbrHW1tLE=;
	h=To:Subject:From:Date:From;
	b=QJQxa0Ez44SqjB7PfvMiOAS19T/uEIHbmzeEOwx85AzVakugDcae3xv9+icF6ZnfK
	 L/j7i7Dp+3Jl6TJDwpeUxFYPrDXUbRPbGeWvKA/PLJWQba6fnBnbfQ5YaxPm5gKN1x
	 zWkUujrlwlMOlZNWfjze+8xZA+Q6emm8Fs3KDSBIMK5PCEhBkBa9A0mjgKN6jGwWQ7
	 JEvYFYEbCS4KS7a6GqETmX/i1fJEAsAskl5cujfpMcSPnOFZn63dUGfLlePb4/UF45
	 /2cVTFtuZvrC93093KnF0dkHwWJBstiwetVz5DU7l3fzSouYLR3WhqdTnDhyrpkQYW
	 0zzQLzSbdni/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A7D9E6689E
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 06:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176621243359.21894.2941423435187118783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb188881ac0139fe7b1a71d083b86edcc882180d674d02468d628997a14990a7
Date: Sat, 20 Dec 2025 06:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766212433
