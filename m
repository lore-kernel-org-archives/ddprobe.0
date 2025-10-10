Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38FDC2D0629
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760099994; cv=none; b=Dbx0f7u9vgfDbrLVLgxa+4NUndh+207Zz3gUgFYQhJzBu6KqMTvn6hboxc1VKpN/R6YWEauFv3sH7XdoREhTf6oi1YSByrW3YGA1+Uv4PqVXwkj5Q9HrKJcls5XGABYpvtByr5yX+19rJHzxpi+DffWH1kDy62ocPw75w9mnSqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760099994; c=relaxed/simple;
	bh=81MvYBu6L+JjEZ3/uXngWunMnVqBv+jffHy8ykcWTYk=;
	h=To:Subject:From:Message-Id:Date; b=TBx6CIFwykkIK/ktj3BUmNxNPz0JKFQJOPBwFN5Bl9l6UUQeOmuW2NA+SLhGkfH0NHn3PBQ56BO9wWoumXJgHhJW3GwXNrT/Q/ZBkzmQCr+hScW/AqcftLMfEbt2o0RRo/YE/+47e6oM0bxtQxc/c2Uil1pUUeFC1i8Q3V8mKe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d/aeBtlp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d/aeBtlp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1B82C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760099993;
	bh=81MvYBu6L+JjEZ3/uXngWunMnVqBv+jffHy8ykcWTYk=;
	h=To:Subject:From:Date:From;
	b=d/aeBtlpuU9nAhy6L3lq4Cgw064DWNKG2SFtuCPbYduo7NGDjy/LwoWc0P9G5Dq/c
	 jSbI2iXCMJEiKG5B4HXqazkYW3/sHgwb1R3waYH+0dHDdu0MWQ8d2eU1CRemWdkIzC
	 mX7mT5QK2LRyMVK8Cy+Qk1au+9PODqc1bs5mUMJUOhA4wsfIV3iVtJ0irhYRS7pxc7
	 CsbMuLJUU0ZJse2P2dVh4yb2PoyK74qsmMid02NKTxSOtOrOnR3c2Bdm7907pCW/uB
	 ba+1M0tGju3WtDg7/QyEe3kFsiEGxDX7bJBAYrLGn3qQAPRThAgYM5fbgQtZyNC9Bz
	 X0udhJKtD2YcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A00FACCA476
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176009999362.26233.1314935688182720485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaebd6975a6d74c40a87fca273ac89df0377bb9bb491f581e12110a0aaa6b288
Date: Fri, 10 Oct 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760099993
