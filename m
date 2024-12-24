Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AC864C62
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735016754; cv=none; b=Ax68+qGHwsshXnY+5JHEPng0cA28BT8dt23bBOh0Ah6tmwkCZDT+dOfCcPqRaT/Z9AJWv/DSSpJwLRiMv+nqqThfaouWTXbBiOipDnfrr5laZWP0hccEbAGibrWBB8Jn/6lKfNZON8MOcQpGBfecyjPhSEEF0+7a0Hwk7q2xvKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735016754; c=relaxed/simple;
	bh=lTls9yQ6oreFrM8SreVTKiPd54oF5z3fBVELwr8FkPY=;
	h=To:Subject:From:Message-Id:Date; b=tXx1AfqDTivmXM0Bj4yjkOLQkVUwsjxk4OLg/zm7q7XEwEsFP8LykrZTQwUuXO1TpTBgpxxgQtTu+Umr4xcZy8P9G9yVilmsfAR7nkfcCjk8C01/w70pTWfPHUsY7boUKouqiLhBn7ef15o7trdqHF4ARl5iB+fjCcRw6Qo9WTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fv2LHTYt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fv2LHTYt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA522C4CED0
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735016753;
	bh=lTls9yQ6oreFrM8SreVTKiPd54oF5z3fBVELwr8FkPY=;
	h=To:Subject:From:Date:From;
	b=fv2LHTYt4/L4K6Wv6Tm4HM0/LBrRxsZwSsTl+xg7/n3Y+75+PcDnL1wCMbeGmNQ4a
	 9hUgcBVwrh1Acu5rHW06UOjNAXHs8pEEQyrDGcmOMOzdi8G6oNnhj60exK7HWslXj/
	 u7JZzgqGZ3lyJybnWKr71DsGP9QTfPtX0jSI3pfhtnWVqWPj1+iYQZxKj1kzoDcfkG
	 yB24tykUiwSO5GZHydayrrz/Pr6WRRk3HtBI6eKDKKEFWzm8mWd7VMN83JvfpWtAOs
	 dRF+d8ZEZxVuo8sWesjNGW8toPEwuV1XGNZGtdNdmLH+z6kiuOCuxlA1F1wyyYC9s2
	 ukfQYsOQAg6hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99189E77188
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173501675358.20712.16367527883817038201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95050955557144fbde9a7688ba3daa621b771650ea1b34fb45d8bd4a0b302719
Date: Tue, 24 Dec 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735016753
