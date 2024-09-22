Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3916B320E
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726994754; cv=none; b=UvGXmSyeSwuyq3guw22B95wj9uqPN+SA+Httikl/tKbZ3vlvhEnLp82mXB/HNkh4lm9zgoHVvWqBsFnbOJKx8t4yLyxVn9VEGrqZ5dx+7yOhPYvHuK5l7lqETy+jbt0X42YJTlV1JD7XC9wh2SnBRxIr2u/Pmh1gadeCfoaQj6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726994754; c=relaxed/simple;
	bh=PCiUGW3y6Z6KdNhO4vC7+k+YneDsBi3Dkurh+nI8vPY=;
	h=To:Subject:From:Message-Id:Date; b=hvMcqA06X01C0BmjN1JXGlYXpg6Q72JSw5syzgTjGTN8RBfGKhCZkQX9pJZnFTIDUqfobFV/Xl3wdGgDj9k427fezhsYJ5zMLeR/WXXuEJgR+TkFjzT3wVKVfh4sIlChA6tXvr+MD5W2PedK9ybGbOmTqZv4Xw2KdAP8c5OkaUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oXjs057X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oXjs057X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2012C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726994753;
	bh=PCiUGW3y6Z6KdNhO4vC7+k+YneDsBi3Dkurh+nI8vPY=;
	h=To:Subject:From:Date:From;
	b=oXjs057Xu71mgzFTxFOPxOxu+Ppfl4sleQyF2zX7UjBn3KT28lh8E7efgLiie0RDb
	 g/Zs/PV+xdunpY9LfN016z2aTePe5wigV+RrlihfNYlHgaVvHt/fNJJ7mWzXtFZS/p
	 vxAHuvqlEPe/W6x8PCemVpD05TSf6p2I2bUE5fIYje8LV6S05YckqW7IFA3axceZUg
	 3zJxGOIHX/7jRUwpkdsDtLSJYEF5ZqJljF0ahw4HQnKuQQUYH2rJ0e7hJkRgdHG+sx
	 +0M2yWt4V86s1AY9ngavPuDUpqRmeFCqO8LVeicsVF2JA9KBOoLFRKi2zGt0tQ4trj
	 Z3ihyxM8Vf8zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FD4CF9C68
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172699475358.29370.14079106973027977024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c412cc77383a659e6bec144b457be1c3ec3f75df6d11a2961f26f010cfe35fcd
Date: Sun, 22 Sep 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726994753
