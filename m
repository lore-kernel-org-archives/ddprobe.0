Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7366E7462
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 07:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719127943; cv=none; b=T3vhKH8vqu0/he69wqnfoCUw6+kXinpMX5s2K2epuPmTS+j3X2MhBuSyf1aa1o8nWXaxwpAPqwADLbKrGD9X3jytv154hqFVlA2akkU0zgkWBr/q+nzLwNHl9Cz8PCbv282fk9h1hzMphSoc/q7kHfbRixw7dY+GzBhdIz6/V/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719127943; c=relaxed/simple;
	bh=PIweWftKShQnCIONBY7+lp9eBMINfvEo1zGalB1qYAw=;
	h=To:Subject:From:Message-Id:Date; b=ZP/KLxbZL4yLrFkR0kiIHHEdpN7YujUm+QFJxC58a+YtHvrX4gFdrl8rXB0JpeKAFKQt0DYRxXPow6tqAYXjpSi+NYfvlMTOvFZ8YFzFoRKG/t6mnm+LhmPrAsClbRD19df8ckh4gKmzTCp1oDbsDruxnN8+wvG3evLfuR+HJeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ACO+d7iv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ACO+d7iv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1AAFC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 07:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719127943;
	bh=PIweWftKShQnCIONBY7+lp9eBMINfvEo1zGalB1qYAw=;
	h=To:Subject:From:Date:From;
	b=ACO+d7ivqAf9DtKSPizNZVUdRTPwVAdDuwOk3YcFdo50iTQzJ1uqlXPm/3ls3BkdZ
	 xA3xEOqa6hTGvEDhhxm8PXpEdlL3fvSsSMXP04V342e4BnieEb/MSRXy/4CCHT0Jl9
	 WN+1HEmvzOdXTCoTer5sPjxNwOz9uC7PK3JIZ7KPw+oPu3nxAUCgZ741SL5qgd2JMb
	 BcQI6a23QLe1Nq0vZ8tzqMp4NapDt1vpmWpZtTACj4Bj6iK6v+Q7jJiGBLMRY+4IYx
	 55Mt/5fhE3dVMmiIm3QqdUzee/5mZtRvRfH2n6u0UxhDbG8Jz1f1oIsAdH07SaUR80
	 m2bQKiGUSW55w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDC36C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 07:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171912794280.30512.3887575170321832149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fd3c74c2e3b614fd36b66f589c70ff452c98510f289093bf517da2d827f4862
Date: Sun, 23 Jun 2024 07:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719127942
