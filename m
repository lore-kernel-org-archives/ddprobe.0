Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24494265CC8
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751410194; cv=none; b=hEgFEAk/jMMzKQv6GVPpfby3+oIAha5BM+LhGmiiDrz33L9rc3u8p+/MZYQhqrhM6I8w2c168e2K+kYmQknhTrA24il0+FnSh8kGPoORA5wNM0+/XhorUuK2Df6hoVg6JIdTCq3mKjhWAJDvIaZfHhpmrRP1itlEQ7jYvkUPPtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751410194; c=relaxed/simple;
	bh=ibdJGy2/NLxW1WVD2wfUDhUQPos94t267if+HQr3Ujs=;
	h=To:Subject:From:Message-Id:Date; b=JcXrU9RjvYpE7l/wHXWQDjhTs4XIyom+P3JEsZSry/YKnL3z5IYyWiti120w5qeqd9Xugk583X/qwm9AoNw5IdIiwxNK1bnSjFT4WP41ESsKch+0V+/TYF6ODg7bYFzsk1AappuPtUlkbkHi9lEdVhnLvJOtaoVr9sQISvENJl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RJb1El7g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RJb1El7g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DFF9C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751410193;
	bh=ibdJGy2/NLxW1WVD2wfUDhUQPos94t267if+HQr3Ujs=;
	h=To:Subject:From:Date:From;
	b=RJb1El7gTqAfkGDSCI3wdi7b9JXIkLKbwOFChqn0G7Blcvly1H3/uQcKeo3XRMHou
	 r+rZhpKpHVS7QH92R6YW6HyejUzwxgTEr+618EPBur7eOl4YrOxdSb2Hh34N/tVe13
	 G7H3oNddNIlR0nJYw8s5A70fYWNzVCp5Qjv8rZgNGOL3oV/OBqPmfjQ9+IxUKsIFuz
	 14HdQUExmHg5JkncYnhXpahHl9mt1HFLZ57q+f7d5gAwIim4eBzZos6S/5+JTfrAfa
	 2DRy8nMeMjsTEtS8f3TzielaBYRlyF4ZnmK2pA29OnkKSUEzMf1gJsdskXtFGV5hSV
	 5TR8MCsiZPO2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB16C83038
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175141019358.4421.10543530007553569569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1c4ad5c4ccce9bc8f43a675a946c7c616b50aa4b3d2c54423ed3dfa8ca3f814
Date: Tue, 01 Jul 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751410193
