Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16F662222B7
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757238594; cv=none; b=W27pPW5hXsAvzePCISWn2Jwim+CgOrc9kLfcZgX2PRIWLMqoBSJqJFP93aeG5CPpOrqajCbFylHxwX9vQdPyOVaBeOvFBi9Oji/yy4AOOFG8pAJtHg83G21dyCjRg413AcMmB8A1ZLGsOx0/xrtHm9AEuNe6zG1T4q+hM32B3w4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757238594; c=relaxed/simple;
	bh=k0zewZPlFd5YkKhtW9NrFyjyP1zyBVB+131vyWTP1lQ=;
	h=To:Subject:From:Message-Id:Date; b=dLeGuEgmF/4YiPb8QyWgjHA33i+sSl4Xyu3m1ne07RMd/UAZl6TYaYMMXksXWoEc7rlveYwvhnDRjTX/X84CxeU6Krnnx2gtSMZo1uAHNE48HvTIXjapjcBd1GRYrBR8kkwxNLo7zsGpPdlMwH1luHoDwsIu3ncVD5FuETpHFUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CZfqsx0a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CZfqsx0a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E801C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757238593;
	bh=k0zewZPlFd5YkKhtW9NrFyjyP1zyBVB+131vyWTP1lQ=;
	h=To:Subject:From:Date:From;
	b=CZfqsx0axppc1PyPFcCPwso8WOEF6Q//r1+Rhplrz2SgD5f1m6mjxM5m49lATv2Lc
	 154YBxYEKf0c6z5JHOSoQTbaMpypoQ01maIejco+nAnjC6y2cv3mG0/RY+biIWyaqe
	 pD1nqAZ4K8q5vOeB+dx6p/IQFoTB+YNS4M5OwSXiAy0PL26ImQf5CPX1FdPfckPyEa
	 s3TyLzg+BN9ylCQByiqlknnJetl/I84f9uhrHwIGceyQlcu7/qczCDzk6nadWSyuP6
	 1r0yCSVxluVs3ySr7Hlf2rI9n7ja7XtyUm7gsk3R4hn0gGKSSMYz2Gp1C683+qnPf2
	 cutqBFh5zPWSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FF9CA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175723859357.31604.7189069445010771282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f5ee9539046dd631027d4af4adc0511215eaa2bd67224713f42b1ca4b823559
Date: Sun, 07 Sep 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757238593
