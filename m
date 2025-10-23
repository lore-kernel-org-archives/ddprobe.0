Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FAFE18E20
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761197994; cv=none; b=Je/4e79EloNBijvyFvrnWktPAZLx/STcIIQFa9nk4ON71i66m2DcnM/bmlql9PntqKx3SUgr+sj6yH1zRNLC1Vqh2cURlBT6LTd0Itw1py4JF/fGyXkCYAevy+7xGjy57Cisd5fXaw/98I7olVaoslQd7VZxXQ6cCmtCp5uGZXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761197994; c=relaxed/simple;
	bh=2SRuVYjnsPGgZPQaddCmXytkxstxxDUhhGzRXa6Ir9Q=;
	h=To:Subject:From:Message-Id:Date; b=azlaN90kZfqO4lLwvVDi7jSxUjHfYFXGyS9eh1U87xEyfb/5FWYgy0L4uEU3ysd/lBpiTrCJ4xOC3Bf3mBpaybczWyMkuVAaSERvUkpWGfxq4+YFJhTijp50X++zfikb9+u0sGlDn8B295EHJG6EW+ZyqaODdF6XvfuJc7iKEtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g8igvUoz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g8igvUoz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A397FC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761197993;
	bh=2SRuVYjnsPGgZPQaddCmXytkxstxxDUhhGzRXa6Ir9Q=;
	h=To:Subject:From:Date:From;
	b=g8igvUoznYV1UrVHjYpHAVfuRBMxfhxg6wi9DJWxk+EVNkoSFOX4NVc/hfv9kdQEa
	 /ydZo6xHJJw7P85sgwKMeKK04NKqD8g+YzR5yZoF8wgVYxibrKvyhNl7VjCsz8/8j5
	 DxfYHNDneJCNSRWt/NOLheTrkPSo9Xva1kwAXZPp1kw8P9PlZdC7N/qdtKM8iJIEI7
	 cl4J/UtYcS+BydV2Nbe35hIRhNlbB+oKvW2GpyvJgPR8x9pVxUeMkwCiEyTQbxuK9s
	 LzOsbNS2l/77tKyOgWOvp7vdcUzoagXLjIAZ0YZHsrXWIre/qOLETJQ0yXTzq9Sozu
	 l+FbUTUre3FAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918D5CCD193
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176119799358.15093.8012529555110262970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ce73da535d029869b24da406cce160cd27473e5543f2871ddc66cc81e34505f
Date: Thu, 23 Oct 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761197993
