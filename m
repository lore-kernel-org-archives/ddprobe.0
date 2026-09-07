Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 490413A453A
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788817834; cv=none; b=EYqi5eAgZBAmPyIp9/JzrF06P6MTZgAYbFKvwOHcURvvIGCwegKb4W89XKgXrCvbQpQO9YMCUNSaHNzPSmd0VIu0702iyXjkbZx2rOUo9zyJRb5i0X0fiiBuUzv7f7H2brmvuh8Cd/AcYoAjU7iqbeRzmT1PQWGGFxPH84nlHds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788817834; c=relaxed/simple;
	bh=rXnoiROVbpxpXqUOOdjIrMXqs56tYbWi7N9mkTO1zKA=;
	h=To:Subject:From:Message-Id:Date; b=cVXMbmpVyA7C7B/hsrwR+GcWl83ztB7Ovw/fovh8LC6dsAHvkGYIEv8mm3hBX7WjpdXueiu2yL/5UhER9s3aSnN7ct9vscNX8ZfifH8gruK2bXwvXxOd1q2M8avY9azLbnfIWDDF14U3AxprBZnXKvt8X0yIwGiU5s7DGQv5JKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jYrLYiOg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jYrLYiOg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D02D8C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788817833;
	bh=rXnoiROVbpxpXqUOOdjIrMXqs56tYbWi7N9mkTO1zKA=;
	h=To:Subject:From:Date:From;
	b=jYrLYiOgvdsLGWtnkfKbLlyLwFgAjOxRas7A7Gs7BDZOWt7+j5pyLcxl/rTHIpnwG
	 6mdMWP7+Tb9dbGT8oguc861oIG/4C600HqegzozmGn1XILs0vn5bsffts1zFqIE6B9
	 fvTijAVtQ0WNnKlItkONlARP2c4GbWOG4XwU8/rMek4lx2k+rnMj+cw6Q9t67Yy9bW
	 VxMkJ2M/a0NtOV7ILTfn66sDRA/Q205vDCrfNimnzfSXyWgr1O61Abozi/aXOA1FrB
	 bUKSsV5WAbSq+aA6KiZG65JyfFHAq0IVyKrJBi/Vids80AShHQ3uX8QvVWSRY5zDgW
	 NtzyWD//Q8fLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA56C79F9E
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178881783369.23049.17754412172073234561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5ddd746ffdec670b522d64438905e87adbc0cf16d8604c54ed4a869020afb6d
Date: Mon, 07 Sep 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788817833
