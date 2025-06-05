Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC5113D8A4
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749137994; cv=none; b=JrPu4mhsbO+8BXbTIMuhcP7JeAq+nNR2ZAmnc7rlacd0QflFoUyevBc1+7RVQesqo5ecXaVeT2hSu6DJKsj5+rsEyjOWJXnxsMycFv0SRgrjOkeQMarIOe9qjLMYjAFgnlNhLfwE+b4ViIuFFzf9Jf1c/9PTml4eHP2lSGxqgb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749137994; c=relaxed/simple;
	bh=QZ37qgXJ7qxgeit7YY1M1kYD+G29K5+kLuHEfTy1A2c=;
	h=To:Subject:From:Message-Id:Date; b=p/P6aGmGjGmkRISX1vvbJ9kCe9toh3IV/kJHQ/feDEA5mdSVA75gdmTzsbXadlAtti697erNlJGRPlAp/nrONXYmLOx2O7d0aVi2CJX4Kz88eKR7Sea+ev4zJb780AdWH1dxvvQWuySP2Ue32+5qWazk1EDmH5kHA4aWQoYCj10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tVppjqnl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tVppjqnl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF125C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749137993;
	bh=QZ37qgXJ7qxgeit7YY1M1kYD+G29K5+kLuHEfTy1A2c=;
	h=To:Subject:From:Date:From;
	b=tVppjqnlA92EsOq7dz6WRCxMNCtV4sygW0RzZ/ZEYP3uj2Yetc7pxUKrbaQGYfsec
	 Y6UTL1clbcXX9smCAXchCupOx6MEsVBg2uZf9CB8BUUxZ+fEIwGBerjU9uesn1iAJe
	 m/QFv2PtaysR8sHQ2rRmhx4lRC+vG3zg7p80WxMqWaNzehjkNKG1/ny3L/68BFTOk4
	 EqRulu6zLoOTVNI/hRcyplUtWBOz84yNq3WdVTkxw+aeT1evIfIR+ZG8Y/xaX2ldYU
	 8SfjZwd7csM5vAgtt9QdtwO9OiFC16rdAMVZjxAyx3pBV9VYl0udRMeoLLjaLgr3hi
	 I4mEdD235+qGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951DCC5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174913799360.18461.18254428137046593035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db30396743eb24997892745473684a766b64417ee273267b7d567f275e55a812
Date: Thu, 05 Jun 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749137993
