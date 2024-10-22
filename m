Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 308F41862
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729569954; cv=none; b=bdotwiEYn9AAeuIl/8RHZ0QJdUzXMo6Hd2XyA/zpSrYtGEEQldPa2wf9K5a6nOcvtgeUIEAfl7ZvriuPew02quAc+wwtNpIvxl6frNnMoKL/y65yPd0PXWKQ7eusE6fqN1j7H3Doxg9XvJv6S2n4n278zpfPgbY8A1PHf1IeVMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729569954; c=relaxed/simple;
	bh=bB05XBo9jmiQGws3L9EfIzz4cmcqO7Kbe+wRB0JQrdg=;
	h=To:Subject:From:Message-Id:Date; b=BVeyC+lL0Ve0B+rGUlpthZGf5sxEBBkUdWl7J9EPdNFU18LHxDSXo1fRO7l/zdvKQstJNIsrWQ1GoojaNpN/m9zEGSvfM7YTK/Hhw5YIb6ALlQyEDeQ4SOGtvidTufhYR0ihUs6L89Zr7OEqjaLmQ7FyoKMO37WydsqkvRbLNGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GpwK+n1b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GpwK+n1b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6ED9C4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729569953;
	bh=bB05XBo9jmiQGws3L9EfIzz4cmcqO7Kbe+wRB0JQrdg=;
	h=To:Subject:From:Date:From;
	b=GpwK+n1bhtiL+eeuE+inPXVFeF/oloc7hLMNaTioyKAFg9IF7dsEf5HccrPKQeDc6
	 JhP60oJI4+7NFMEmaw32YI4e13mapd3/f58dEP2UY4onafJ6PlWEdqiHXsdLXCNVyf
	 REBVF35hM0yZQJ+7i6g0FAmP13VJIxFT9Ps/MsJ0FkPnaEXUWZ8CNrcTYKP7iDHKXQ
	 CqKTc6DQIQsycxkIp+8pvev121MNCrwuDxQEdeSWQRJTorrefpzHLs53lSBqkGNa8V
	 ubUTZia26KYQfFJoRIgxM7fKaxpVo8hOw4xzlM06WR/hIEcEFYlsS4tcMsU5fmkaZv
	 nK75/00p/uIPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980BBD1715E
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172956995359.8400.13432079116820335488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea6e1be1431898cd7006132f693fe155d3cc141a17a6f70d17455f2e89672922
Date: Tue, 22 Oct 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729569953
