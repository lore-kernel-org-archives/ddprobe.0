Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D363374FE
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 18:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715020343; cv=none; b=SJp6wJZUD/7xG0wFfD9QLE8KDDBx5yUOkN9wHf+0+I9mCoblo1ZF4ipHL3djJyQDpdDWEKXhUVQtPxnzoHEZWgcvKhNs6eILDIa3TZDkF6PugDn6NoGd266j6vME51crwpWS4NjO4TgxYay5Lx+PZl3MuF5+dJTwOdSYiulwfac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715020343; c=relaxed/simple;
	bh=fl49h8XRd+CnFDFzLiz5A4w2dUivP2LtXC/6lv3RNGA=;
	h=To:Subject:From:Message-Id:Date; b=fs8j42aVdgWZroHIyJGmv7Qwcwii7a3YKxIthpQvQwOpz1sbrRtinYGYsgldNVeCUYHhUqJptPxsXJmzde7+AZts+1sq7bxOgBKsG8I+WrRu6Oggp9eDWNl5F7Tz4QTcFc7iZzjx5bFzV2uKLkd5LmEqpmzl8GlmuGwvS9+Qn34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qjTDQ7Qg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qjTDQ7Qg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4CFEC116B1
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 18:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715020342;
	bh=fl49h8XRd+CnFDFzLiz5A4w2dUivP2LtXC/6lv3RNGA=;
	h=To:Subject:From:Date:From;
	b=qjTDQ7QguXiILZEAA7s0GxQkkdJei8jCGb6+XzMwHQ4Qvda6pi20L80JdFWPS0vg1
	 Mk5Wq7msjYc/bvzw4XI9LZOzDX92HZiDk1K6Lo2t/BJ09lPES0SVtP279Od2WKTcsi
	 3d6X+GwSvQN2Xfh6UYDGdbB6cbA2/E0tZvH8iB8RYATRb4p+uV3TDtOYCvMaJAhWuq
	 wly0Dq2B4tbTDO0eEMuEuoj8UQ999EjHQXbpdVVcjhe+dys415AfeNY47ewudO3Uk/
	 PyoByq8htq68g9eiR8VqiliI36uq7xhuQKyYgeQY6/GO20BFvY0Gpg9YAZ0WVh2btf
	 lnhMiq77tTuLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFAFEC25B5C
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 18:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171502034277.22085.15678061005842906978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf8e6881f5f6bbe741750b6b7f5bb55bfc965abbfff8ccce4a3e2c8516ebe77b
Date: Mon, 06 May 2024 18:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715020342
