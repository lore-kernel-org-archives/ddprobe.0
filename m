Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E49A714A8B
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 06:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708064897; cv=none; b=j5CW7e4R2moVXw1rhyS9XoHe6K2hX2Oooh0XAtAU285lo9BxEp6vIM9d0OZh7n05kbO6IOYlpE/wbiPRDlUF7kYPkZbZ+zs91iq5dwKpKviIPZ/GgAQrfjFr1ubJNJpslKOj9+mY1sY624JSpmRIB9XvtU6KBGPfEOdFvKUjP50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708064897; c=relaxed/simple;
	bh=YGjxw9R2ygDgtoQNEWUvIfG7+0OwCgdw02EfQB9iJeQ=;
	h=To:Subject:From:Message-Id:Date; b=mHEydT2DnNEN/ff19wpmIQgXMG2GFWqfL9ktaiRsEoSvIkVkOBmjL2wtLHKBrrn4HQ+IApZpQ8E3glsvsyRb3QGv/9ZIAByCusUhhTGCpqt/ikt6NHVEL8/Lby8XYgeKpHWjZqpIzV17KT0uTodE5Uq7NYERhVsYPIDd6Hszm0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rjXluxXf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rjXluxXf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A3F3C433C7
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 06:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708064896;
	bh=YGjxw9R2ygDgtoQNEWUvIfG7+0OwCgdw02EfQB9iJeQ=;
	h=To:Subject:From:Date:From;
	b=rjXluxXfh89ps5NBQDhkGhBX99MjKlxkh13DC5PhD8OsilT8RRhrA3sdpKDUEghAW
	 9hv/wWeGbntDTwP+2uDdIbr/yIO4nu64SrZNkCbxow5P6OqmOGBLjLJJK4eL4BcXPU
	 RhTXyV4Kpndix07L8C9AQ8ADlcJF7cJ7zF1eSdRbiSdV120uv/klwzqdbz8bjqY0v/
	 YqVp6ybkYCHhk1jOlHiVyDxZX5FXBh+7wY/EDuPugY7lE1jnA0GYgP2KCCXB+Xgyfb
	 M9De1fQi9Ez8scNQAR9Q7Rkz2VGaT1VxZa3zUTjYpZ8hGBJjprYitFO92bqiWZU0nl
	 QCbxURsGkhcXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 607FAC48260
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 06:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170806489637.27215.11816337857693705796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65c62d2c26682bdd365d95570d235e7d555fcc35492cf7d757798c9c11d7cb7d
Date: Fri, 16 Feb 2024 06:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708064896
