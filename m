Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43711AD2F
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743320394; cv=none; b=YGy85LLhkBFS0Ro0SiGKwRHQeImB8eTFfjhnsK8BIhj5Q87WIRHg6yNN5unZwgJ8CwWB37fi/YCglFLgm/7HRb/8+hodsMm4joLwPxKIwxpq554EK1Mx8PsCq/znrrWZu/jzgNZu8h6tTdX6kgVm2EQsgPNMbnrgXgwm+wFRU+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743320394; c=relaxed/simple;
	bh=zN6BibJQcjw80gd7DBFDvCww+SB9Sc6bI6ZEg1yd54Y=;
	h=To:Subject:From:Message-Id:Date; b=DTDF8kenHnFjrJWF/VBWeqkCJJapjnWsbqdX3TkJP5CMb+gt2Bgf98nlRyQ6pwJ0AuMZOfa/jpcX7uZgi2oJhaLT614ruGE4/E0Wl/6XmZ/5SsmK+tmhaMt1QDKJvsnpzCELQUbaBYDAiM3D6vfO6IoD9k/tY6WroBZqgOOps90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pbhT3Gq+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pbhT3Gq+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB38BC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743320393;
	bh=zN6BibJQcjw80gd7DBFDvCww+SB9Sc6bI6ZEg1yd54Y=;
	h=To:Subject:From:Date:From;
	b=pbhT3Gq+UygZ3WREPWfm6au8tCgVFqFej2EojbBnSZLC343Gq/gNcIrQKaa5p/4Se
	 8Qxdm6biQ5nKjJrNgJawRL09PoYoasNoDIdt47/T0Mt+FVmYHjMVLLfDeTjkKfv73C
	 eufhlbjbMCaMmkhWQk4oQO5zO7pXFcbpUWGw4lEVffotFHtOdMKFhsZ1ZX1TfLxaAM
	 8kxx1gFht19zDBUlopTffc1wq5vYsHEXHozxYQk/KJC71vOc63zfx01u8aL6XpKh8B
	 PhVcJQR28owqUkH7qBRFIsNc89jSyvndDJ9dE9w+p0cHcWsh9UHSR7zGE+Oic2kZ/9
	 EOOGQ141L8h6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9730BC28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174332039358.4269.6807470090349857501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a84157b3583be8d6d12dc8d1e25a9b006137833e506c4fc1fc7f31237810c237
Date: Sun, 30 Mar 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743320393
