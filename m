Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26930242D7C
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 15:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770047634; cv=none; b=kjA+XScvcoeB739q1dLZBMGbwDWFIH8Ullu1RxcKT2Pz6cJZ6vN6vuTdeREZ4tecoo0PY6nF2GRWbu/3qKWQU5UQgcV6xa6vnYMEZe8dX4eNp8KIFIgZpkA4BYcraqeQ0Fare7X9OrRElOsqgyYxEgMcTD5ghJqXfWOD0QGQxgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770047634; c=relaxed/simple;
	bh=Oy81hDUXYwLUon9k6RuqJ4Y6kXQDvLcAmtX3//dnZlE=;
	h=To:Subject:From:Message-Id:Date; b=Ks7j3DqtvQ24uszZR3+4F5xrFPBYNx5vPiVI+G0yjCfGo/sumcralfczBLP0hnKv+IHLRpgFUzLzbFUdDdS1euzSIox6ZSOifOyfLtTPc7OQUJmli7L3TzUWQal9z/gim8cTiSIUWVDLrj1WcapCF6IDgH7PIgUeOdWvOQQPZ78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cEiVNg2c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cEiVNg2c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE8AFC116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 15:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770047633;
	bh=Oy81hDUXYwLUon9k6RuqJ4Y6kXQDvLcAmtX3//dnZlE=;
	h=To:Subject:From:Date:From;
	b=cEiVNg2cVC/fj/V/JS4balmEUjVvk2c2locPMEY4bbMbCgu0O7V/qPNTkOKdcLLSt
	 5adicZY67Sk7lTCuKHnoVwhn25l+Qndzmh5JG4uAp2K8p+b+0JjUGJ+++sV/QVclb3
	 XukCWeNuhF1EfFjLlpfKmm2wvKZZQQCxmLdsQYIu2UdCgv7JQC0YIxBPuIKYeRF/Xa
	 zqOF09QlswRg17Ap3Qu7w9m9vRfRJbgtxLLrOTshzvu6rTX+Gug9dveoAn60MmBK7C
	 +sLMEetVp8dfqLaflCzefn5ItWIZMs5JOvHiLsTs3h4/3xq59unmIcIVeMPa4WQ1v9
	 S2wjEYnNw+LzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95776E7DEF5
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 15:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177004763359.28121.6407276421450715361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c7470379864f07dae42ab7f1b66f3632434da71bf4b68d8b0e6615acea5968b
Date: Mon, 02 Feb 2026 15:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770047633
