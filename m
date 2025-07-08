Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7BF23D2A2
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752004794; cv=none; b=JG1Z8EybgQAlfF+qpxFVjQ/IMiI7OZ8JU1Q7mKV5JZiYiHpseYTmU/PywpxCkBOScsbftfKvAoKmsTU8rBHGSOtzcVTN2fLnYJwMzyfJAk+5veNR9l+mAU6d1Aok4u3kSKtve+VHeji+IoboO/EYJfAlWnyWdgOAof5X6rcQT0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752004794; c=relaxed/simple;
	bh=QwBI88/OOHwUxL5ODZnqsXvXkmgAh2DauQTKN624ukw=;
	h=To:Subject:From:Message-Id:Date; b=c8ak3cEbigcmeUH0Ja8DYvdNSaruYjEm5yaXC6hFlOKq9e53bMHoy/jzlD6ME+AAhuprZAYnJdinqCLSncH1SpMsV6FNXAD8i8GlaMYDRAGjqWNVklqWz3ZjXW9m4VnnNeZ647LVz9EevN0wseMcNz4k20HnZz1yhe1MadhH4yk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O55vndrA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O55vndrA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D5AC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752004793;
	bh=QwBI88/OOHwUxL5ODZnqsXvXkmgAh2DauQTKN624ukw=;
	h=To:Subject:From:Date:From;
	b=O55vndrAl+uX22TnH7WEH+wmjwZemXPpX/NmK8ozDQazJ04CGDRNbDkWAE7thO8+E
	 II+l08AhqIoAnB4uIdpUw9ZkgCwEr0H8bSM6ezvRNfPCz7P5nYQHe+sQ0VFfORX25X
	 9T4neuvlmIiofThk3CQIYXBvoG2PobS3LsKYQlHJpAAEU1fAL3LZzqG6sbXg8z6wha
	 S3PNiGjqtwW2HRAspI2okOZlv8w02nysncxJMKANbPSyvQNRvLzntc6oL/iGsKV+VR
	 jylWUzOmjlEmnpktMffxQ0CQyWNz6oywpflV3J/oZPCQpZ4G2+LvbSUOcixB1xB94i
	 oAhfsumkEgAbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90061C83F09
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175200479358.24830.12291641478887891515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4144b51ff90455f436e9bc935f486eca24daa61a1eb79afc38d2f0e299ff728f
Date: Tue, 08 Jul 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752004793
