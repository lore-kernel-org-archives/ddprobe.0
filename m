Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC3640BF5
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746086994; cv=none; b=QwHoTTHYjAnDqBbOXprkJCISW9qWBdBY9luA6xZtqUugbin3grWOVmNPmhsyERHmlzLGXYk/nonxP/HQQMgZBEZFcCWFgTxc+q+k1mWSMO7cHf3tJt+/BbJuBpEOn1GtN5+wNtTIn3xX+bCfF86bA8K/G20KV75RsxeTMOrnBNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746086994; c=relaxed/simple;
	bh=kw4d8UTm1jCq7w0W7JssDfecTT7xievOA6ZowgGmJVk=;
	h=To:Subject:From:Message-Id:Date; b=SKRn16Su0m+4Y2rAGhaGLf2in/y+yePvJeK3kz6/uXU7tNyn3Zbly8ePWrQuqVeU25p3V1HUvZTm5A89eb+lLCNPzsPw8K99WTqBb7muWXz2SyhJukTJQO9CQDsW6SCv/f89RqWfg3MM7GxV/adYh8ijZrnUHeiXQKuLoe8Lr2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gtIBSuSw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gtIBSuSw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CA60C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746086993;
	bh=kw4d8UTm1jCq7w0W7JssDfecTT7xievOA6ZowgGmJVk=;
	h=To:Subject:From:Date:From;
	b=gtIBSuSwEWA97qEHaFdQqhmscqc8io3CkPn3yqI+KF/DGB7WlIZSBgWN2Jl6TYmvb
	 iBXZZYP8eAlgRIVyfzJvA8SPHRxH96UjfEWVFsnIaUIouwQGIB8wATU4HTZ2FCUWH9
	 HrEBzY5POff/CWdE+yileXVps9XWD5tC9jO9TH83vkPKbJ+kL6N9TpgCHHjBdrgpqW
	 O2gG1EJFeJEnUEFeH2r1rhtKO73BE/PHA6jJT5fIQVU6ZvrGkkma3mM51bgA1z1eD7
	 5EUt0MPOBjVWzAtdQDI7Kf8oYwlGnNS6NcCJ0D9bS+2USEGtZR0U10YA/XstAKMdv0
	 5NnISO341vRIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCFFC3ABA9
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174608699358.5414.8093991758656237829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9eb395bdbb2c64f6f3840b2ac7ce0e0c788cd044d7b9a172fda24981a9d912ea
Date: Thu, 01 May 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746086993
