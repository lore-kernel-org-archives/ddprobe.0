Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF611A76CC
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727988954; cv=none; b=hXKZfbtbaBX7p5dZfGGguRGpiuG9sSeHyQjFvKyyvl2VMWmWSx+zWIRzFjfMSi7is373I7qEwgqoAtrajKK72/HKEqnvfYx7+n34nXhEXTyAs5bNnhkJHO4A7lLeqOHnzx/n68om+8nOgCq9iSFCiT5Jf2Un+A6YR+eCkIvQzyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727988954; c=relaxed/simple;
	bh=n33N+i00+4yPbBJcRD/mYemlzvD508klvGjPnMfFp6A=;
	h=To:Subject:From:Message-Id:Date; b=ZqMu4PlYcOlrZ/BAVo4LmHFXUD157TRHmnX5qpti4jUUAZXjRv6P3s9xp5Vj5byqJtv5bkfQKuGcG0BCDpw71ZMRPFhU6K7LdI16idnBR1RMFqHySTobJvFTTigzsda4YA4xO20cQm0T9l95G/r2BvVtu42qR9Bgbh1QYtr4QLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=git1hXQS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="git1hXQS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B20FCC4CEC5
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727988953;
	bh=n33N+i00+4yPbBJcRD/mYemlzvD508klvGjPnMfFp6A=;
	h=To:Subject:From:Date:From;
	b=git1hXQSdPI/y+wdo3+jMlpHEvKNP5cvhy7Y3wKP0aSmkOLarFSxXuv8GmYipkCD3
	 9fF0Unh6U+eUp0u03zd6yi2b7rZSJ0M4yLaXpMcj7z3XO+sHD5nep5zFoK8JmUObek
	 Xe3+n4DCL4EMn7SSTX7n9ksQBpMViC3lGdEtbkfxWb/kJr0teYW07Sxeg93rwaMDz5
	 H2jLbQONOwS6Z3M1G62LIfCvQTsSqzWwBZp1aB54XoGgUf1ut9cOkKd8qqHfTNfsDE
	 EqloKs3dVb7XwYKbqBKeOB5+IKk/VKszdQZydL/5CdbfT+U29dbQHxNeYsF8ksofdQ
	 0OQ9WdkuJgnKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DD94CF34AD
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172798895363.31885.7871776941673407599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd2f6ef6991cc6cf525b893bedf54fd56257798792ca4896a30818c43b4c7139
Date: Thu, 03 Oct 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727988953
