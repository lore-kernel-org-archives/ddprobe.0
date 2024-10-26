Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 314EC182C5
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729953954; cv=none; b=M8G+VVJG5O8UAxZBI7ZhOULUmE3twzuuWFigKuMB6+HEqeUxRpHKULDibme+7okhpyiUujPgq/uW7NU9FfyxgrUKzvjpKXEqTQkwVBGzLahcgM9KTJZK+Bp/gYu3kn2vhqcrVWmZMqEi2iCTs6Q5Grl+HTVZEHOapBf22m/NdDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729953954; c=relaxed/simple;
	bh=1/CI24u3q2EnK4aRQy+1ibRRpmGxoTkJLB6R5BXAK2Q=;
	h=To:Subject:From:Message-Id:Date; b=S2FPXIyBn9AXd/q1t32eNf0p4PbHO1dYbXYYCsj+I+aWm8ZNMuFd40vLvU6r5SZ/LEZ4ycWqLwzTYYhsSVkd8Yn3UN4qrWk/xKXCdKQCvGh8w2dW/0ck/Gs2YHxUTraHhWO64h/ea3GRk8fAezVP+JQJuuaOTzwQkNBGeM9YP58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o6vzCUJw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o6vzCUJw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF7A6C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729953953;
	bh=1/CI24u3q2EnK4aRQy+1ibRRpmGxoTkJLB6R5BXAK2Q=;
	h=To:Subject:From:Date:From;
	b=o6vzCUJwIu8FoT8jArxzVgq+ji9VJwiJaKXVawb0FKtUAuHwS7L8X/HV09xZF1QcC
	 g0GzG0RtIRrOsoJ1WEti8GaOZAZwA2SUYFY6mFU+yJbBkxX/RmzA2KRNbRxKYsN2DZ
	 k8AJcYgmH6frSGF8ACGHoouZtbJ6D7N+xC6HLI+eDcDQhg1infG3WTJXn+ThzWogO7
	 ARSTft/BJMcdBa9M5iBCrJYsoUnl2riywtzOufF+wtber/NCdHXNm+A2t+WV2ZG5+b
	 99oruGps5P0CXBCmNGPTNlmeByhZsPuH9O8e14dbxu/0pdl6WIblQVZBsNaM/OrZ+O
	 EwMYdcy+0cKgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B8F5D10BFC
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172995395362.11732.13893406646589454941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47432c01ae3640d90b8699017615662c51dff66538037e337e5e786eea706690
Date: Sat, 26 Oct 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729953953
