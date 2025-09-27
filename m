Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29FDA29A9C8
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758963594; cv=none; b=PaYlINFO4dW06AYKziupTVKVX11VXjZdWmnRv6cafEf91NBaXMvgpBmO7coX4n/CBZEKkap2jcvwRiGMriGG3+zUjQgZyIA23Tbx8jy2i50HHR9dqtd90JDJ1KvwJgvBhCcyoM8kmz1DbbGsVDk5uP6JqnV8hUCU997yJLnFsFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758963594; c=relaxed/simple;
	bh=x5e18aCTikX2A8nSEHeag9RzXUKOs4Mkuueoezs1Ikc=;
	h=To:Subject:From:Message-Id:Date; b=tfduvyzmPmUFYbCZeNSt10bqvhRiJ9rnRfg9y4lZlIk5QUkoaxmvlzJDVFzZgGFyp0c9Hy3ZeTkU2c6mf/hYe4IM2JYmMz8xDPOcBw7bILuBhQduGXi5mbza2G8FUQRBJmlCSQtsibSlSLogxkb/AvS08XNtrFeUFh5a0q7HEc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iNtASXzM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iNtASXzM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F92C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758963593;
	bh=x5e18aCTikX2A8nSEHeag9RzXUKOs4Mkuueoezs1Ikc=;
	h=To:Subject:From:Date:From;
	b=iNtASXzM7m8KvdJc8mbi+34RgQCj9kQrM+A4tNdlBN5CAMsXpmvB+j6Ws7tAmbaeL
	 DiFMCNLvd4IwlRvhKtO1Dc/ngk/DoKt8sc5+IWw8Kw6pe4x63BqiUqsVOUEC/SgNXM
	 1BP3oal8HT7brYj4gyrVYCEo4gAhORAabKxWANsF4NPPYYeRfgXqiMkYpraIGXnGBN
	 gJRDSMXcx4LVby0oEqgI3RlEuI4JUt/qjwNkZbXZIJd9Ll8ZWIo+Ju1LcxiwRzeDYV
	 /PhCyPbY3OyLYmJlG70CmyXoxbF8xCxftjfZFrrRaKEX6UEY8V7rGkT5ANv7mwAFnr
	 DSF5xMaoTp6pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C85CAC5B9
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175896359360.26922.194929984699790164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 536ea2935a513f7a2286297ba12c8f766d34a92e581cb654c4ca3710a0b56e01
Date: Sat, 27 Sep 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758963593
