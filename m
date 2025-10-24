Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FD9124729A
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761346794; cv=none; b=YsyA/mnmoQJgZl+5iXVFN2+HxMCAjG9fV7SCSNjDouGA1VKzerkjtiu3fdojjhFB+UaG4Ky05gbVjrg7k4nwv7Lou2Sp2Wh+DXikUaza9vHG8mwupfS+cQ9TFHhd+XG/YVcHZXIZ0uACDdnTV0DsbK1vmH0pCqbRQ6UDz3Rozlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761346794; c=relaxed/simple;
	bh=RJtZryR+2JsqSnxJIqpCoNex8sj9fWZFt5+nzAwqwh0=;
	h=To:Subject:From:Message-Id:Date; b=ChaUXxS1cVnkz8EeyZZny84Zi4E+U7BdtfFzD06Hyx57azN2iDDANaYSWci11GLW7/N7lL5vJ39GM9FgdZv5DVvGSUbeRZ/8Z+EBvaAPiMY/qrcOVVZl8xoG7BvpTCuZsWjRWsb5AcddnKbPaFHJxANpVrqv6OZGXJ5z+JHxnB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Coiwjeh7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Coiwjeh7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FD5C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761346793;
	bh=RJtZryR+2JsqSnxJIqpCoNex8sj9fWZFt5+nzAwqwh0=;
	h=To:Subject:From:Date:From;
	b=Coiwjeh778mMdI7+cpmsQ49F6awD1w34vrcn46mx57YRN/H5oSwFA1jtVaCB1NwnU
	 WAAUGEqkjB0Z5cQgRK0TVoMuB/DduK4DpDirsJDx6iluzpGmwy11nOEezl3HaktjH2
	 yrkSSA5AmH52yv6cN4kHhmeECTAO6u3Y4+2Ukc5R4VpuN2Ziu+LYjvTXvh1jqRgDXR
	 bPPBqRaF97CklCbfm1eGsJ8HHqruB7dt5BAIf+1EM3NcFaZSAW7NX8oxKUCX7Kdoov
	 7gsU30LKYDCF+esPnh+ZdQEQPh1ossCC5ER5fSHLZ87/K7h4bJrs29UDQhbYMJ8WzQ
	 PAeVvLeUgZr5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F7ACCF9E0
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176134679360.13725.6347279643216885525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39837799688be29bdf81e710ead97654a54cb62ac204a351de846c295f70786a
Date: Fri, 24 Oct 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761346793
