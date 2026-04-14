Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E07C29D264
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 15:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776179854; cv=none; b=LxZ0cedTUO/i8EVMks8x9xEpcukNfeorsoiReeMEyy3GDzVyrHBBnFwHqjEYgyIKa2Lw/94VBhQNPjoVslTkBnzt7j8YYPxOlmvJ0vYKqQDCNl7YO2c/bKM6JwwM+UmC0JIzVosjnBXBtYdczMUam5GPS3CzgM/lGcH4lgrFBjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776179854; c=relaxed/simple;
	bh=4o7RjfQ6cTlDg5BaJVphS0gLHAh/aNJy0LSgEc63ZXM=;
	h=To:Subject:From:Message-Id:Date; b=DVh9rZt1BTfci6d0QrcP3wMJ0lG7VYPEsJJbUf5L1DBweQzIjSEmO07CmB5cNU9JnL5rr5aZ6HMepUuwkqm7bMTlKXGUWOvqv5z4rhXtB5WLMubqkkWsvjmM+0GurfSTYUHHr4wQ8oTmXH0wBqSlIwuP8SQUdA/afVXE13Gd2Jg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QSYdsq2O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QSYdsq2O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAEEBC19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 15:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776179853;
	bh=4o7RjfQ6cTlDg5BaJVphS0gLHAh/aNJy0LSgEc63ZXM=;
	h=To:Subject:From:Date:From;
	b=QSYdsq2O0uBe/skEWr9conqYl9QZ+91VuuMY1iBa8H2rwGEnNruQEiQUaA4dmC/MP
	 z51LOxG7kfGWTLAGldVuTYGwjqzuHVnRfpRhNcb07LnmD2HcNtX3V+cRjCQVXViXKH
	 Bz7/1aNtXAmNQXO9s9FqEO3yj2EsuJNBt6+kddE58xYzCbWFOylQXbrGQWqSu2vhrs
	 FwSY+m2KFVnkydJ2Ra+SmpAve8CWOaR+RfY61QLUAmPrQ7aeoUZUwT0iwdN6czQraE
	 2g5dTAdLtqvQ0ztcOqoaqmQEe+Br4X1cok5uOEVT2IlhlfnX9K+RN/wgQXJiX7vZbN
	 9x8VMO43z/DYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A0CF9D0D6
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 15:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177617985368.18617.10246859863688520622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00da62d75cd8457727fd79ea74dad41a3b6127d639aaf657ce0d37b015e3a4ca
Date: Tue, 14 Apr 2026 15:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776179853
