Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D895223302
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752032394; cv=none; b=bSNPpmD4cyS+9uwJR+Gh4qHXuweMgU2YC1wY20HVBCr2Y14yOoP8J9oKq8K03zU9U4mVCP9DCYZCopLi22s0bTxueHtkfGAC5as48R+7DcQPVWzQ8GzWXDT5ijo9p29pxiSQY0ra5xe0oxDcem1gvniv/l5iRZ9ElSAYTeX5zGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752032394; c=relaxed/simple;
	bh=59LExEwDj2Drtd6FZdOIaWbGiNqHkyG4x4T3vRpA7rc=;
	h=To:Subject:From:Message-Id:Date; b=qLpXAqmqUKEbcPv5NmMeM0paUncCE7UVHl9YRI8L/MTIIsfAz1WJ1c3SSPWY2tw/v2m5nOf1eFkVk5qw6cUd5r7YkWS4acVDNI7ollIcauS3IKvHtF7u3Ws2J4N9yqgrOLYpEeKdoSE77XmMsCg6iGkZrBbUypQgrlD903wGwPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KBu1yNYq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KBu1yNYq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4573C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752032393;
	bh=59LExEwDj2Drtd6FZdOIaWbGiNqHkyG4x4T3vRpA7rc=;
	h=To:Subject:From:Date:From;
	b=KBu1yNYqcX1zJdGaB1XBUlscvfvUjOZmQcKRWFxSyuILFqH/FnodUUbWmI6tdpab6
	 spjcaiaKXwlreYrDoMiLC+O7oJBGu3YkdaUnto1WuRGNuZm5tncKVa6rAumMDgJbZh
	 Kl7Adxq5TjT3V5unt+spPh54NLBLEP+ntj5QO7OOG6SajnH6VFOkiesa7kA0rkh6dk
	 PxX2tfRGA1iP6dDe5UQd8H6UfIVwZEFbZ66e+jf2MaPiV++3UFyQt1fJalX1hqRWgA
	 r8ilOLFNnrI3xa8fjEZvcaTrQHwZK2szjAFhW9tDlRIBW6AbeNVKNgtRP9DVs+1WdD
	 cjiym4PoekRfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BA5C83F03
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175203239358.25818.3304470655340190139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04ba9dc9698205260cc3b4e3f226e370491e953052dec5c98488badd48abddab
Date: Wed, 09 Jul 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752032393
