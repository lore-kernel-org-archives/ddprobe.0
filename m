Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332BA137750
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729550754; cv=none; b=M8ZLpM+7JqTqJGAg/+iblkUTxDTOaqFp9pxxSaOWqix9R08vUFjYUzR3NNCtdOSeHVXWs2vs9+bSxuLZXe1u/mHAlEFYefxAFAxDA/9K5cMF6mrDYX0E1YMpjy1EvBPLgYZwHl1WS+bAxT2YmVQZo5dsaG2Yn8u7OCmqImSYKqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729550754; c=relaxed/simple;
	bh=KCz/Q7m2hiKgkgblfrS+0bmCX9B63NCrTtYD/OAGzBo=;
	h=To:Subject:From:Message-Id:Date; b=IJHrMagvdUE1EMBrHZE2a8oUe9vsT1szfQOTHt+aUdF2/E/L7kilbrqq+JjaZ/G0xq+fHZXWWSTA4uvIK3WFyypGpyzJQ+KcOIK/bV/XlPttJHf7xyUzhz600UIEZaJD+8eMvGbQ3rG0AaqKVN0uCdU+9WLrVhRT3t4UpXB/+zI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PhUWk78m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PhUWk78m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB320C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729550753;
	bh=KCz/Q7m2hiKgkgblfrS+0bmCX9B63NCrTtYD/OAGzBo=;
	h=To:Subject:From:Date:From;
	b=PhUWk78m1XglS/uaRjXPv3yRHAPCLSzsOhD4gMmSVlnQhZEshlvmOwvmdkk8kr2pa
	 xrcX3l9/d9Kh6TBtq3VRDC7ODz53hZX2P383ZGI3HOtjy5Wx95JsojuwjTCxRXNnMf
	 WSCY7Gp0eHQvODSf/cXFdX1jAcLlwOq634w00ckE/wgkTrg+zXS+UqAuTV7aBu6eyJ
	 L6S8mU/0iO5EcgvMrkC6ioCkERsh9SiMJ/FByR1IpcpO68Xh8K36maLcV8p9KDgtss
	 QZTVVZgLN0V6WcxvCIgJDvRx6601V/G/FuI355jWq/61Dg+J02DPQQHvLtOKWhwD4O
	 H9Fj2v3abqnlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7E86D17141
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172955075361.416.12081848967416943316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c341c6b4a04706dd745fcd611fef373292700ed5641941195e812aee85568937
Date: Mon, 21 Oct 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729550753
