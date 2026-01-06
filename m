Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260D930F7FB
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 10:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767695634; cv=none; b=nAvv4vVxQNFtx6TcXLGYkEzQOMxrD0WUUQwpZQPUMwFkgkBx9QwdeFOY9kIJAeFlRmMTf3Sngh2kIUwpIQ6b4YJsvEPnGEf0L3JpYJjr+8/RH/qK7ceqetw4cpNW8gP1UdS+oU9vLIDwV1xTlP5hX5uzg85Z7k/unuWc6+QvX44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767695634; c=relaxed/simple;
	bh=TP1yg5Q9ZKGS/Fp17rRxzaK2UZKx6Frc1QT7zsL3f9w=;
	h=To:Subject:From:Message-Id:Date; b=bDQ5OrWPDdnUQBkoJGP9uCV+BaCXN0Ji+X5OxMT5qWU1emh9kFfNnRgCFnMnzbRNyCm0KrgZmq/6PqJ7CNqeoWpWSU+YOO3S68R2NIyv3p8t1R6I14jBoK3mByuOgKUehcwAhRSww85uA9iT9hW2KtZD+rg/5FuyKICnqMvAsqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X5BA/e33; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X5BA/e33"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5E7C16AAE
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 10:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767695633;
	bh=TP1yg5Q9ZKGS/Fp17rRxzaK2UZKx6Frc1QT7zsL3f9w=;
	h=To:Subject:From:Date:From;
	b=X5BA/e33Si+94j4RbBB60JVD+bllNFKfgclWxayKyLPgFZAAp0QBMHy1l+9V5gfqv
	 lmVkRRwHpOXnYZMR/nyCmUKhulmWrXFd8CM2UjO7dpL65+pihfNQhuD2244TPBRqSl
	 2/h1pJ/+HoqYiWnVCJn65VjFqUfVKiCxL+Tad4lWXJNFqKHd0XQgsBFEoIgFKLpCGL
	 JQugzeUpjZ0BRgcW1NiHSmaNQawdGBuffHkuiPO+zaLriV3R/0tMqor26F/9VKwH7Q
	 6Dq70VHoqC6T/9Kymrd/f4k4DPpAA7YQMtJ5mMvzIJ5CWHP2lbpdwOrt/5LgvH8siy
	 AVpJ3N0udNHnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3DAC47BDD
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 10:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176769563357.32331.1278088858350679593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f56bb5ae663b92d2255e50639e1324551ebf66da01d6d83ccb525848bdb3255
Date: Tue, 06 Jan 2026 10:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767695633
