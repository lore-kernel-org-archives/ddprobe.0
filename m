Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4219A10E4
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751071194; cv=none; b=bQCy89JJJCLv2/uk1L9TWLTjGMaj3DOO9yiLsb4RVk2jw0oJBfSM8LEFoQcxlQ7DSqXZrYP4VOOVcirQ9ZLnlRAYJI8hOBzF5QUlbo5gouNslKx8FCpyVydxtPkfMvxnI9a55EfEhX1o2jk72F1UpCrv9i/nZhKkgQCr9v8erMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751071194; c=relaxed/simple;
	bh=UpJTHU3q+dm6e1bG0iw2DG3aRhCF4n3/ivuBEyDj1t0=;
	h=To:Subject:From:Message-Id:Date; b=QeM4YrLwm5PbNTmCelw2ka4o69csaQkVCPFBMLwykcEkkxGENQlunMUZWycGmHu2OI9bC9x5QYB6NcYpgn7Dgl0SLZLl8hdwUFDEjxLkG2C08wAwMq9z8nZ+X2N3tA/YDjIsOtniVdN+bxbr9rWxhXL8E9NKZo860f2e6OzMmQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ToZtTKJB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ToZtTKJB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B151CC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751071193;
	bh=UpJTHU3q+dm6e1bG0iw2DG3aRhCF4n3/ivuBEyDj1t0=;
	h=To:Subject:From:Date:From;
	b=ToZtTKJBO1DMXr6PboM1i1rwv050EiNMfPxZzpnflvMN22CYIpir22M2qE1ZMeS5A
	 lN9GWC0D7M1FU7uzgx/DOxWbFAZT+1VQK1rwsQsKoX1ZXz9K8ygyXKSTEhPnYFH4au
	 3/if2iFYYg1XxSEbckJrm5fVpjymcNB9owJXcaYxFSaMlFamA9G24TopeQaI+kdlyj
	 +gKASFOx0rHA5jAI0aLFRXPCQkE83mN0qvxyorNY0Dv/RjT0DcXuJhCM/z7kD1O5iW
	 KYfZp5n+rNbNeIqdR2mN/gYqjNQ2xSn+fT49Ex2TqQgw/RjJy0E1xTj8VPwmV62A2C
	 wKvqiIlHSSEAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96113C77B7F
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175107119360.6907.4797836040504565225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ebfc8ea177a7305d76f35aa454719b8196f962f6bc5a8e30e23a6af315a019b
Date: Sat, 28 Jun 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751071193
