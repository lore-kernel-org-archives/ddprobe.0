Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D1D32C027A
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761334794; cv=none; b=aMCJYzQaw5Uh/s8QXSRryrO7848GpOJkXZ2v20JZG3HS7Y6D9JUrUZf/crC/0YaYiSeARK0FKoFqRE+GurkHvBBlVY8msCiU/qvDX0C7e7nzij0/D8DurJ8hmzCnacyREO2Hj7LDlYPufRMRzP/gZAbtJph8rstlwZEfKxr4T00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761334794; c=relaxed/simple;
	bh=LBmT7fCL0Nm8YQjv+kOQeHtl8UrgNoNwSy+9luhambE=;
	h=To:Subject:From:Message-Id:Date; b=ub8lnSw4PwRnE0fzP/D2Wu7wVJRMOqI0AEpqSv1WqOMpfcxyIxg6xMZmBP5Y9iWv2z4sCB+bDbUURDYQhdz9gxwHor3fLCYRrZC43DgcDO3GEyggZGaBwHDfU69KI3nQpewK8k39YCM8LpyH4XKdAJWtQlBxunJqO943LFnoQRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mtGKh/1g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mtGKh/1g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A147EC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761334793;
	bh=LBmT7fCL0Nm8YQjv+kOQeHtl8UrgNoNwSy+9luhambE=;
	h=To:Subject:From:Date:From;
	b=mtGKh/1gP2ModKHYbfDrLK/sJS0xPE4yNVnvSlcbbSs/c9GERF1urCGW0jZBJXcwX
	 nTDXHQno9QH5M5vr2hO9yV5O5tn5nixK+dUgycJx1gfoh6DNNAeGGhM8svjCJHGz0c
	 oifA0tu0O6UfhiS3rP+szISJE0bXf1YdVEFuqXfWMRhwvIblHfK8+QuaZ1buzd+VnP
	 J/UBfT4orkQD3v88NOjHnjLXE3/eWw3HvCLzS4mTH5nI/IJxI/ENS2TDRcDGidKYTM
	 roAum6TU7xd6zIVpjez4AII4w4uHlAvj/oQ3UwUCkvqbTN/aFNXYMo2OpowPTIjEy/
	 B4IB5e0UvFnxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919EACCD1BF
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176133479358.10124.10316031713799139103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f63686d7b21194f347615de322310b2a35f1d8f06c9351b21142958cf8ddfdc
Date: Fri, 24 Oct 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761334793
