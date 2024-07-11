Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FC5516B392
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 15:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720711643; cv=none; b=TeXyFIf/I+WbZjTm42CNpi6iNqAmGY0Jg7+x/0lGHwMT4cY0LsP1EJsOWOCvMvNSlWkCEKiVFcivcivcNQhM9jZGfiOg9oc9TeShnP8f84AWAscLmkYldKXsuJM8OoVTACXfVNfCug4LkPJnSjALuTHM75WmBL4tmMPS0t5Bod4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720711643; c=relaxed/simple;
	bh=A50jkX9li6IEaDAPWkvEJ9bgGYaomxEfmum6tREa7KI=;
	h=To:Subject:From:Message-Id:Date; b=pGoSvx4e1sJJKR9YcAlokr56zVNP+rEw5CXVDtxyZRr875Tn0AsX87z4CurcHPdhUkOX+ye9z0/TCziodwchHrlnhsqM34N8kySx0/xCQb1cHSqiGY9DLY/7ErQeMLAbzQrTch00l+84eQG1YXn38rwFChOMH8kWsaYNzaNHGhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M9JwqM57; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M9JwqM57"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E970DC116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 15:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720711643;
	bh=A50jkX9li6IEaDAPWkvEJ9bgGYaomxEfmum6tREa7KI=;
	h=To:Subject:From:Date:From;
	b=M9JwqM57G/jbWE+/HNybiwLX+XYZMfqFLlmKcPuvz49y9+S5XlQk1MS/XBK14Gtv1
	 DWsrUdOINWbmA4Mk/WJ9gHD1YKYl2L1N0///cDdO+gWDiy2lnTTWH76NGjyYr+SnIC
	 2mvO2pJ6HQ6G5wY/6xxZ5MdFVl5QJZbKct2vT8ca3RZsk8H86xUFxmB7n2aGYX6AyA
	 71TD9LDnquM6e9XxxUfnITsAjOxjwZZHbqRTsjm4GMZHU0Tvb/xD6uurmru502K3sf
	 ehyjRrtinutxvzmGPyRigj9oOXk2YJf/jn2sT43EBpefq8THY1KkVG2GiFm/aqsZZP
	 kCWEmj/ip9dzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1DF0C3DA45
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 15:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172071164284.516.17356571925633791145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f58953d3ca9d6fac7dfa9a91cb2697d4cd94e6700f20be34751a8ed401a02508
Date: Thu, 11 Jul 2024 15:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720711642
