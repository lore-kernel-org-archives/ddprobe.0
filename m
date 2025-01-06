Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319C235945
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736179554; cv=none; b=X8O/Wn332z0nUkYFIULbHlDYX7P4Ldqp/1dG+e9kt740i/8UcsiCJcuWnBewh/4Bcf7daHr/I6yAu5kJlIaA8YAb3zpOTuFVw9BRFR4Iv3zm9XfumiWUDNBs9lONwkmhdyHdkn+cFa2dTVAXfrsaVx0KqDypLghQSLD04d7FzOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736179554; c=relaxed/simple;
	bh=FDGGjTEGGWRhkLpypeCknhVLYQG5GDfhybxbu0B4OMA=;
	h=To:Subject:From:Message-Id:Date; b=qKsnlPJ6g/taNSX3BwL9i8e0X5kfeBe96Ju0GYRxWwGaZSfaXro/Ox49fGq9VvRciVvXac3nhOs/5iJYaMskXDqmuR8wC+NV5FzCJCXoPLg0m2QCV78MiAefb4hUo/52e3oK2I7Ugvi8mW0frsv1tLA5J76mVWZf/OljBDSEImE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W5AWD41C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W5AWD41C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2DAC4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736179553;
	bh=FDGGjTEGGWRhkLpypeCknhVLYQG5GDfhybxbu0B4OMA=;
	h=To:Subject:From:Date:From;
	b=W5AWD41CXh+rzmdOznX6t2OxiQY6l34YHxC2cHPkHPU2NfqzKkLmMpddcFO0MCqBp
	 kAQZF7uiOXKnfZwYl5ZIMH/NFi8VyrDgIonSN5r6i9dWwODsjs6bs/FipMUkh8+AwQ
	 0eHiOVo93M2Xv2uXCD+3xmIm6CdDerAxcD2GaQQ4Bf9evjFMinSdgMM46bSn/a8Kfn
	 yOYkfUhx4GrfRSBpiM8QPvkPhs3pxMkgOiffpWTRUxEh+Bfjd9c0qXpBQU6vH8osvd
	 MH3MiW5YSUEp/h6ulZJeFYHLbTdhXsbWaCccCz2kHwlEKYiyieF24I0bRA5/cEvAwo
	 75hEXIu0ppm5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F829E77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173617955357.1315.12054230329467366595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa028d67319378080d0ce5a10869256c5ebe440a76843879864b38947b05433a
Date: Mon, 06 Jan 2025 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736179553
