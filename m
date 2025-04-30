Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3336C2A8D0
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745983794; cv=none; b=VVjzi/9Iqy5OrLVwJVTFyPtm0NRwcJlduC17px4lx1O0EstS1NOEt6oVTV0tz3IhwjujYo2OkkfB1iBdqqC9qvBMB9bPJC5NGkRTJ+gzOrLoUYHjoZYHoFhcfCUyKr+PtCda3y7EvMOaBTZYGUvqdtUKRKvHtUf4GFjU0/XkiRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745983794; c=relaxed/simple;
	bh=3EYlKjxj1hcw4mZiHeZ7I53qVHQKIXXj66BLpdcJPU4=;
	h=To:Subject:From:Message-Id:Date; b=Elgvn8XCOmKMG/QHSldq2vhVW5zg2zz+YITq79VddwOMkw8gpzSi+1SYdj4hBUwhaZ7/rg8+d4JyHkTor0vEMn/CR6NR1unA8upl9+uUoRpnI/7O8DqLhD3EipjolmCVXyGdM5toLhuZ9eSuqIvkX+/+Ykl0fLaxhDwbmoG2SHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ReasFyp3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ReasFyp3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8425C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745983793;
	bh=3EYlKjxj1hcw4mZiHeZ7I53qVHQKIXXj66BLpdcJPU4=;
	h=To:Subject:From:Date:From;
	b=ReasFyp3xjeN1sUp7vuQszNivONUwjzvH3R0BorOt/Z5smP+10Px56hXOg+UY385H
	 Qs59cPsjc3bU0Has1TjJvTPkym05o22CA5SjLsZPNsSHYRGojkEMyKYSABOF+CMire
	 0K/CjZgIsD+bQekMwowMaclXjYwu48HsxMlWbD+/dfRo6NciOwLJKOXmvbcwtBwW9n
	 rvCPPE/wVHxpZgZwbELjBuTYDL03TgyX/dxXiLRgzAP5CDbVdN/hw1NfdVugKShc8w
	 48OWN8yue5dCBmYiVfwAES6ggK3O2FQlHb8mwnT/G8Ktv2vcuepT7hKK9JIT5zoFYE
	 26QUYkwfjsl5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BC5C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174598379357.9527.14169340531195952111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b246338fffc2443c1ccd0336ac2499f0579e47bae7e1d1b9c8e8aec0b4156848
Date: Wed, 30 Apr 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745983793
