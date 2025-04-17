Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2902189BAC
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744891194; cv=none; b=uiWHlNLaG57B1TBkmRTk7XFhM1BcqlARUvUYeQfUGEk/MU0AwbmhSUT+cVjH26Jr+MHH2i2S3yF9/N+ck1wPt8dYiLpYMZ47Tp1SDh2nFfdkKLOIBqv5k0BDtkQXK9rBbE8Edxpajj3hPeDtX9p1Qyd9l8hjm1EhyDTjcXzG63s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744891194; c=relaxed/simple;
	bh=W+q8KTcYhBiGSpequOWJPpSGPDvg9TMSDafGByuV+vM=;
	h=To:Subject:From:Message-Id:Date; b=pcxuUREvL3kK/VqjyU0QFGxkF5UhxV1SbIPgF0kKmOJNxM8tQ81urAQOFZMUYcy1lQEOnx9YAYMhqXOFkXhEdcoWVPdNEgLDy59UZBhU7xTj6SVWIRg5INg3f3y4sF3jKdA9k0XHIh7qoiDMAW6JmrHr3jCfzt5gNWxEOeuouzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=teCPJhjS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="teCPJhjS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1193C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744891193;
	bh=W+q8KTcYhBiGSpequOWJPpSGPDvg9TMSDafGByuV+vM=;
	h=To:Subject:From:Date:From;
	b=teCPJhjSv1T7JrDc1vMBYWpvb2j2gFmXRDSKhrUKuRmWDkC6fVzWnY5f3S0b4hwgo
	 8Arl9GdgmHL/qzpXLwEd9Y+s1DoA72/A5cVWBp9ZCOWQycVXa0xoHbfrbHECPifQtA
	 YtFbx1xLOf1Gq+Zj9cievJzvg4XQzR0kDduKEKKq73imZ0inb2RAkvYP1nSdiExwJP
	 3x7Vsqn9/iH8IKb3Gm9TZ8uo1T3qEM3bpiuNAcdNf7hbpSRHy16fTsKS+DlNKklui9
	 aU1Fvit6dzu+L/tfX/++L6rAewEWaWAIV9TOl48SRIeNGIO5wosJA/aDZ5Qz/8rvV/
	 wFcYzYVYjJdZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D16C369B2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174489119358.8755.7670090682838097123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 864b97aedfc8a417fa5beaff3f5c13336b9eb2766edb6d4ed4fd1e44646c0ff0
Date: Thu, 17 Apr 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744891193
