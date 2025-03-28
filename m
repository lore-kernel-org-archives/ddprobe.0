Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 587F48F49
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743136195; cv=none; b=Pf6FDve+gKklcSh9yMEFiU1xdqAeMVeRK1hRpio38MuhyahKKCu/E6GOaDzFi8xm7CuzhkLp8P/qm+oOj/ze7N8qnDHKloryQPQt9PDKTgk1ARu0gD0WduwPE1w92mqIDG41/XGkMOFgcAvP35DLhJEnIasYRMY0MoqNKHsLEuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743136195; c=relaxed/simple;
	bh=ljdyNDG8+WEkjlFU04vfoPqLjT8P6DXH2TOiATqNSdI=;
	h=To:Subject:From:Message-Id:Date; b=i7JMY0mML3r6hpWbIIuTQuK6L5m4snJqgLEZRS8jDBIL8eTUxnB78aJf2rP27jdoPNYZF23vVs3a2U3agMbhbJJt/+EZlF6hykOgR9F1Ca1jG+hNaMobCXzw9KT+zbf6Tip6trLZyXCBSmkUsYkboku3MsQ6RWCu8i9KCwPHfVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JoDKXp4/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JoDKXp4/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD9AC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743136193;
	bh=ljdyNDG8+WEkjlFU04vfoPqLjT8P6DXH2TOiATqNSdI=;
	h=To:Subject:From:Date:From;
	b=JoDKXp4/6BzWDAd402NmID1F+lbf22wIIy3tYXyFv+0O8GR507v9Bi1iG9IVM+Gey
	 ji4TI9MCQaT90NHZUNQbJgQ/OwKJk5TwHrUp+hR1di9jLk6vkf64WUQFmzWn2OO19z
	 swykNCNQ8KSYcHqcSiTr5WWnrTqiPViZG5ZJrS2TK4JFPReV3vAB6xvzB2NQ/OHuBH
	 yrMJ9CzNFq2r+N+dNQXxlBr5am7aTu2dPvNhdKDrU4P57sdEBRG5RQDMBg/CLb5dQa
	 3cpKTjF5hBBiIByWyv3hWjRSQ90+VGkbguhPwTYMja3nCad4RJEbzZEbiSB8O7J3Ej
	 Z9XOKP6w+Tdow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3101C28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174313619366.5366.9801627964397762635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b1d4e0b21994d214857fad7690f11bfb457b60dda15b450a112b4325253ba4d
Date: Fri, 28 Mar 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743136193
