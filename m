Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B6014A4E9
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 14:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741270135; cv=none; b=aD+CvZlidmhJE5oJsU9xL041PwkZpl9bXFVkC7uxyXtp/zaeCpfWRE1HBO5zB6d6K/XkK53l2Qp7p2A2Rnw0KUvksm6EpIHKvYP3Ud1OZOg0UfYvZTbQUEFA5I+MQ6GvhSoTm/q0DNs1B3cBWKJvo3hS8bT8vrzqoo+ZLaAjfDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741270135; c=relaxed/simple;
	bh=di5n5CcOIY7IQY8Fh8LHX/RpohRlADJAfmSnirCfO4I=;
	h=To:Subject:From:Message-Id:Date; b=XfKxnJssPDWY+wgneYZXMXXpRGkXs1UscOqyLksEe4Z/a1KpyZQrGbqwiBPct+Nrb6UYDZ6J6V3A04onBnX8lvOIcZiPTg93/ktHZZGbkGBP4xzDqov4BhCyU+lBGB4WAfU2UffJ9bJKwF2DseGZ7TCgbaUyPkydRrU8te/ypdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lYn1puY9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lYn1puY9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A878DC4CEE0
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 14:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741270133;
	bh=di5n5CcOIY7IQY8Fh8LHX/RpohRlADJAfmSnirCfO4I=;
	h=To:Subject:From:Date:From;
	b=lYn1puY9BBT005MaJ6Xrlx9MF86RHrgdOKUL7BznbQUtIqSCYWHuf67LNiD9ugItz
	 pAMK8ZxpA9z3Nb8yhIiAMVGpuTSMsDfGe8l88AwppYRRhZ1ypHQaIQPnd3gLLThnJh
	 CBxLMgRgcNoXTq6DEF04XeCA1FdJNucYchaj1NyR2Q0ld9pkGpcBAOu+5atsbjxApW
	 RViI7GpHJa6KlKIScV6ppIQ4YamVkCw9SOApxOV166ccUYyx1zTcQ5O/xOucriLI9s
	 T/1JtvkIuXanOoTnk/TcP6K4wc6Ogy/MUHltz83uPY6mZZWxIPBc0rHEEp6Lsov+2p
	 BsRcoGBft5npw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977C9C282D1
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 14:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174127013360.18748.10971707460014225293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b1ef56d403df75f51044b016c74e817af6c541cc724f2c22bc382c309ae4624
Date: Thu, 06 Mar 2025 14:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741270133
