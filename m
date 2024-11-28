Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2698D4F20C
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732796754; cv=none; b=Kdo7+I+xBFRt0aeu9BX77AobpYdXnZhAMrOdvYiL4q77jPP4ClXac2+iBtg114jUHalRQEkBbVipQK6bRhd9sjRJh9aZbiUw0J05dmSOE6MNt9gxw4ZXxbtbE/wIxEzn9zYP4Rte8/j9mXwmOAU9dcogXb7uqcML6fh6YCsAT2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732796754; c=relaxed/simple;
	bh=vniBfrFNvKcfN12LtdbL8aAJ5zvs5pzPaowrJaylPGE=;
	h=To:Subject:From:Message-Id:Date; b=ZlqGfHxyoJ+WpuUf5Ee7ojUo9H43i7/wgGfl3XTk7+2NE/8aIwrYAxDOsYvZL7Z5zI6VQ48599yFy9yxgWvlVHW15g2C786gREyJR0nkg04D+sCdvV2ttAbuw/8kc/0saU5D0doQ8O02RLwtlG4xEFvhchwuiZIs6kKQE7sLO3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pKbEP/TN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pKbEP/TN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6D20C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732796753;
	bh=vniBfrFNvKcfN12LtdbL8aAJ5zvs5pzPaowrJaylPGE=;
	h=To:Subject:From:Date:From;
	b=pKbEP/TND64HtehC16cy79YoxbIBGCKVSaPVtI6WBdnkbZL1ryW8On0W+6HMc+MOl
	 eszzoPJX33i0HUlEv1CgMLOWhR969vbzNAE+pEzorAbJp+D9eRb6ixoJUgQKxJ4AiL
	 iMxbwmLx7GMpkR4EDDGi4lDaPSAAHXB+OI75F0MSN4b9hbh6TS3ERAlfpRSVqTNsvt
	 6pxtyM5BkLd29hWppuBwAnK0Va88ebhtKB/V22E2WgbFAW1AYOfpc6TcfqtN/SWoeS
	 H67fxi5BICMW2cDLQagsgrc5oezgHBXtTOLQzS1bi0AfaE039zW71l2o0CAwTvoWyz
	 3jxunSxT+Xy5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B127D69102
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173279675362.29456.7480876214944482240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7acf48e37ccf1cc1e7eadf8b4085fdc4f6867123c775ffa008fae210ed4f68d7
Date: Thu, 28 Nov 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732796753
