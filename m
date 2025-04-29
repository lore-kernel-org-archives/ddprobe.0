Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23A0826E145
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745962794; cv=none; b=APauFj+rnt9u/E2Y16RuT6PV/V5tB2VWYth04Q8mXwOqdJa91XIXDsV/M98Zjc6k+f+hul2mqvQixPRip6LU6hSDmY4hQzIE8beYMs3OqSVIS5WAsY639TvmCUu2aPOEwwP6kOMqa9YQItIbwTwNsUsy2twbYUo+1NdFe+IaN+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745962794; c=relaxed/simple;
	bh=FD0sZZvyI4nZ2g2H2yHRwNNLeVA9ESR4f/bsVOL7WQ8=;
	h=To:Subject:From:Message-Id:Date; b=H8VvhCgto8r/fB+YopUpXfbOm6cmYA/M3q3JGcD1jmedD5YzaOemkHewLEfzbKDAPTwuJrfpIPv1lIk77RTqf1fhOJnuNzOZntT1OM1d62Px1RXQLMPSdYRCSkTX3d76/G9ZORx73OW4wN80Vb27Xnx4JEC4TpNRlXex3YuHzW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aP3y0/zE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aP3y0/zE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BB6AC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745962793;
	bh=FD0sZZvyI4nZ2g2H2yHRwNNLeVA9ESR4f/bsVOL7WQ8=;
	h=To:Subject:From:Date:From;
	b=aP3y0/zEp16donU8agv5fEU1ahcS4cFoYvm2n//ic01FByNGJTJeK8qkR5ebx/sOx
	 5GE/s3Ko+HMsu21Po8U0AAajdI+qRuf+XUKhUOJdhUUEimtQ5vyA/um32VhfIM2q2w
	 rgNy8a+RgjOkmj3XQKvrN/Purz2V1IpN83ZSEVsN1jwAFNrhfemn3xLgutB0a/jibm
	 MY12jeT2LIrzqqyUZQtN5fGMo9v2oODyCUbP1S6+R+yIeKJBf0BfpWBqJm1zQxHO9i
	 khnNX6G2fhPnsPX1q/Vg5m7ZscIFyT/lipBMk52FXHHCebGf6C+2mfhckkU3ZfO7gt
	 m4FTsvS/wQRFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6CFC369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174596279357.11966.8238122447193011798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88d8228a8d8a9f72e31bf569f0185837cc3caa3d568efd7bc2676ef1d60a4f2e
Date: Tue, 29 Apr 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745962793
