Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC86239E7D
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757404794; cv=none; b=LJcRepS2efPHuvP+AyC31NmLgVscU82rBhYAbgcAdoks/ifO+Quk1kSYC2BdMQQFhrdmqbQz2DpbR7y7l2jlNv7CxlUfW36hEQephNPnRIxWUOY7RovlWXLWjdAxEeYeBEYoc9QHp7O+M8IFRZvClk8786Jdn2ot35i+iKjBjMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757404794; c=relaxed/simple;
	bh=LPaaksAv48XCkVdBembDeg0QUOyyTspgp73UYjvfU+Y=;
	h=To:Subject:From:Message-Id:Date; b=DpBSwhSrgoYpGn7P/9N8TtJY9UrDwOUuF2Nzn2GkGIyAQlSy/HzPxphAfJ0gblMzxOajOJ0W4QeYSD6yFmHsz42HVmxUtoYxvFqgSqd3Swck0ZLgugXQ9Q5mJUq2+g7gWCwFngFI4hZyapzhgE58pS6QzaQaSSM1jm8TERpsonM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=scpl8tks; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="scpl8tks"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11B5C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757404793;
	bh=LPaaksAv48XCkVdBembDeg0QUOyyTspgp73UYjvfU+Y=;
	h=To:Subject:From:Date:From;
	b=scpl8tks9S9TaMp6ersYv1uCae80HbIZpOZbQSUaxpHfutePAs2aQrOk8hCROoGBb
	 InVkU4hVoSa77gnMpiYqz54+KAgh9hfHMlprmT75GHM/bPqJ3Bc/Xw3Tr15BfcDs2J
	 o1q9+1n9cblnfBZZNP62lryuhg/pGiGqMAcRO48TzZzn0RZcG/VBPBcUOqfhkj5a7d
	 FPt+OualHtY4PCEuz49+zD1OJ0OHWN6Qj9yy3cpPghYf3cKtAJ+W/BJhJgkL1PaSpI
	 Z6HKWbI0MhqxWE8qs4EZtrhzVQELHgHSK6sHRSIuAWxomlTHULe5e1E6cgQsrXNfsM
	 i5VZG3kKTGbKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAA8CA0FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175740479358.21408.6018936563782859874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d13d6f212ca83db15de6a16229e2576feab327eb1a9bc3d6ef0ed9ae57c1570
Date: Tue, 09 Sep 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757404793
