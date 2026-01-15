Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 158513587CF
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 10:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768472034; cv=none; b=Y6p9WFTn44+IkWsBTmJMoX1NN96f8pnLvINIsh+7JPOx5rsRloIDuosG7D+B9WWKqXkMarEEFPTPJkfoTPe6BQ0UFJZvZLXIv6w8imIXXL5RIM+2T6xz2nMfAZuOHhJwlTNjX2mO2jeJ2IVOk2o4TSV7v2QrEZ4gLd6S6Mu5yk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768472034; c=relaxed/simple;
	bh=P4jM1HEP9n/mgYQYG8BJ0Qo1lYgREy01aiCeBZnSX2I=;
	h=To:Subject:From:Message-Id:Date; b=maJswtHKYSo8rOg6sMqwa3yIO9tOClFV6aHq/PXaTQIaOWr1q4KBMrvOTSrAYjmqtiUoOhNnfl/OYVi9wrEKPgrxknLw5pwSNah8Fc25UzHNdO5XzHvR+tXxwjZfEhuYFVGEkHBLMiUEdf9dnAK41uUw83vYNhHV5eFQBobXB3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d9eBRXqn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d9eBRXqn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACFBBC116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 10:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768472033;
	bh=P4jM1HEP9n/mgYQYG8BJ0Qo1lYgREy01aiCeBZnSX2I=;
	h=To:Subject:From:Date:From;
	b=d9eBRXqn8PDXUZ+ZqUElt8ojF6kMS7cFQ+ltiy2va7yUqNkS19G0POUIm1RURqMKa
	 3gPfMNmMnW1YTweU6eabkA2C8rO53LR8Pg0OpHEaU8vkdp8WH/+FoYL8vuFw4IHxF1
	 91r8pqbcuQa69hYgVLUlnBkrnZcY7b8HYGVGT7rjX3B5iAngWPCfRcHRIg82HJEoth
	 7O3TE4rpjd3Nbo79vf+lKbyRuNtoimRS8QWckwT+AuGtf+pfvGSsXRiHXX7Mr70fZA
	 icGo5/0bbOilg0pEd/sk2h6mgUb6pUgOuj/UldWegJ2Tx5faaHSCMJ105IRxbH4zoQ
	 uU/QxYF8DRGxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A069FD41159
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 10:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176847203364.4474.12152909908303858673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a8c377913838f790093432e7d8006262bba8dddddee089c7525974efddfa4d6
Date: Thu, 15 Jan 2026 10:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768472033
