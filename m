Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 265271F7586
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757904594; cv=none; b=iU52xg8UXjmbVv6CZqtx37rzJixU26EILG+EW77Jw3iAxTkalwh7F+IpHIDzi6OJK9yfEn5dWNzO3mH9mIZUVgj2Y1EgGZ4+1ks4scUYbNoW8h36x9pKBLA31WC7lxy8udx+jyvCUoGJ6793hlz4WbX/hF0h+DrlB/TllmF27n8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757904594; c=relaxed/simple;
	bh=2dpogJ86FholT20zVI0Oq2OJHx5q+tk3OTZtCcAUrJE=;
	h=To:Subject:From:Message-Id:Date; b=YmyKNLRqrS6pVKerKRGaaUpanpJhgOoQJ8QHayhMs4+5pFg6Ev9Wco2hx6JmCRavfvhA/WGYwqrDj3KS0VzcZvkRkb0efgWki+T4V40YOhw+pB82LtpSL0euOD8jcNsqbqRGQliiyT4jP77+PDkidwnHHY/SVho/nmsO25Z+k/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aBvbFqPW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aBvbFqPW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E56C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757904593;
	bh=2dpogJ86FholT20zVI0Oq2OJHx5q+tk3OTZtCcAUrJE=;
	h=To:Subject:From:Date:From;
	b=aBvbFqPW+a62eaf0TsGMLK/LGEaz2i4PDzdyP6hxgz8rFJoWX1DNU4XWa13fJ6Zmp
	 mW2cExO441+SG3i6/qKOyH0eLKsEB2z+DgUwC1r+U0hgbkC1CdVMMbhkDnUcs9IUA8
	 UVPwywccRZt0AdTlvnufLXbhPuC+W918Z9hTq/pfh/F18wmL30jjxqJrn3nS4ULkPs
	 Pk4KqHfBPx1CrwdCs6FhJUMdgdPWET2AhtEnzjiRFZV2VeG8p5xUUTRVVDAr6IJtGZ
	 zbQfqey0LWQGEhO/FOjtYIX6r7NWtXSeBFahVXT9YuI7ABBfuZD8hEhIOP/QwYKwOc
	 77b6wZqXkNuiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CF3CA0EE8
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175790459357.21797.9548288194325524155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7a2e1cc04b8e725e546d3bfe2fafcf8efe5e0b96f4c744b61c1131ed9e8d017
Date: Mon, 15 Sep 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757904593
