Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA9D14F98
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749179394; cv=none; b=uGInswiPQxHluURM4JWDAQlU4efkNq0YGhBNgZRENEk07RV5nxgbVyin7BVkJxbiGmhlPFhowKZl9bPITTfi1moPCN45XBJ9mTLFCCyVV6yKdK7AsqapYFJemuP1DESm81zU9fGiaxsUsHZyNyHt+qwRyYfMFgwOAO0vUIS5dOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749179394; c=relaxed/simple;
	bh=vMKKfITkSnjujDp2/J/TnluK99yp6PRphVQ3XAgBBdY=;
	h=To:Subject:From:Message-Id:Date; b=TCN6m98w00gDYvQd2y0N3d89a2E5cy3yugBOPtkocP6IVYURMCFh3ugvp9zLtACAIuh8CfvQlqM+7Aya34KQJWYq+OqPQ61nD2HTWr5PDaiT2VjCibV7srxQh4ajlsCu76lPvz92VAuZxRWMZ0zZo4nMEpJTJdYo8h02BxsJt6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cdG5Z4mn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cdG5Z4mn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A7BC4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749179393;
	bh=vMKKfITkSnjujDp2/J/TnluK99yp6PRphVQ3XAgBBdY=;
	h=To:Subject:From:Date:From;
	b=cdG5Z4mnSAT3VnJODT+eTtgnYv8iPKEukjrJpQpME3yn4WjXKdyFaGtCySWp8Cwq3
	 tQuol/FbPVPrEY7o2q6mmdGyDCg3Y/FVwGS6lvoXGCQAMPcwVZLbuI/gI8Mlgu5GfY
	 uCBzhhDqHIrNjnAv4zD5xf3xbeS/0++vTPJKHHD2QBXU0mcYKoC67E/kavomdiONHs
	 ACt4CH1VvHJYAy7SdkjWFI1IREqaLZDV5uU85r4oF+yApBkMKiG8zQ7UWNGgxk1oVr
	 FSrkMAnToKILo+Z3NvoB+4scvkDAZVRdGfJQYYf6KE3kn1BB1RW22u3P4bO6lmmVPV
	 RRBWtWAy4xpHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D93C5B543
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174917939358.14372.11613014870026803022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7038204247e23386987ed35f665fd33db078d12d14bdcf23a0bcb09927365dd5
Date: Fri, 06 Jun 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749179393
