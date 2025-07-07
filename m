Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B6E02BD01E
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751897394; cv=none; b=QznWvbTry2gADOs/KJX/s4KLgqT2dW+n0iKly5dAILXHtMI9xb9kg4gRm436ppZ/xqPbL/bofQDtJXdJylL6yDS/g2Zx537PY/K7IvOYD3Gdeb45v8qoN8sD5HY93w1sCQEsWjyfRPfgiL4S6LLwQ4oChn18EaM14hkCv19uWFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751897394; c=relaxed/simple;
	bh=/ik948ZyGAnE2d4z5UTVHhBzUozmwIo9UH1YdXHVyVI=;
	h=To:Subject:From:Message-Id:Date; b=mrCIPFLK8qliIEGzdGez6fANnVJJYlBRWhOtYneZpPK4qF4sgeshrj8tZcUughWoGXu/mD1HAz7oIjdrH9DinJQEAgaK2duDJrkrqJqUtn8IOi+f8NxAAbBRuF1fj41qCjEwuW7DTlJrE8oNFtkP+C8n7qOCSX+Mg6pJPK7j+JA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m79WFIOm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m79WFIOm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AEAC4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751897393;
	bh=/ik948ZyGAnE2d4z5UTVHhBzUozmwIo9UH1YdXHVyVI=;
	h=To:Subject:From:Date:From;
	b=m79WFIOmnVn7Cmw6dpclLLoKh4gEh8TrNjLyYe7oOlLs2XY/aECRS+cc71CXyxxQR
	 X2jA80HtarJgUR8WxdAIkkLFdVfavI7q0jYp8FwPscADDyO+bnO+FrN0OZcsoXuicc
	 8+dfTnDvJoctAzcLnlhqvuRI4Isv8i1fmoqjiXLA0kP10e/7sq3X1zyqB9c2EFkLdQ
	 zOVsACAoZZD78vwqLqT3v92OWE0VCAVgTSLKi5ggAnqANeCgGarQqQqSW2SObUKZ6+
	 DhlZsUUI8TvYqLH7bqkcGiz/9NqLgj4cPZaBKLZrPxEcULSU66yXTmKcwC1osyzkma
	 WiljbAIoBYWqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8C9C83F07
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175189739357.11846.74641301546677387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aade38a63315d699f6d1a7e746235b8fe89fcfef9d4c8698002adc7006b3c559
Date: Mon, 07 Jul 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751897393
