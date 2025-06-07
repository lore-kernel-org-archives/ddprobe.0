Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3219FD2FF
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 00:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749257395; cv=none; b=U4o7idSAtr5EfE1rn3il8UioABp2R9f5t4FQ8SVcBGQytWUr9JNZxxy0IDtS5hQxPp8zwaOnYRb/WBD14wavCV+7ukxjpBN1sl7ay7TKi3ef4zou9frPwzwAd6ADlTifJYbSM+JgxG5xrcGP7Gl9io6z9lvPn8ejN32q8KzK+UA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749257395; c=relaxed/simple;
	bh=0WoPEN9oIjaHjqQZqt1xh9K5lVeRTccY+Kad6xUKfno=;
	h=To:Subject:From:Message-Id:Date; b=ePXedb2NSLngOUOrcTdllQOy3RCbrkWLf34HnPuP04nqP83oRphuMBswsnVexVcmNeQ6JjKdlThLNPe+vqj0Imd6NOXopUzwrEU3oAfB2cfha2Ot+VcKMGso1ec3U02fdzUsoVzWUNQebxsAnMLb71U828Ld0e+WKwjJ/OfSKVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PWenafq8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PWenafq8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7811C4CEEB
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 00:49:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749257394;
	bh=0WoPEN9oIjaHjqQZqt1xh9K5lVeRTccY+Kad6xUKfno=;
	h=To:Subject:From:Date:From;
	b=PWenafq8rOZv7XaG5VHewik8+oUw9vywTSDmcNS2D02SXqG1+kFrw/TTp0+6oLwGX
	 z3YsTW4NdgRx06/kfdoBHqvUceEwzSko0AoN8/kDRBveRTnXoM5R+nKz9DioLKoh1y
	 Da0Ia8dOl4TXxuY/SNJ/kwKW1CrI8eIp9aZ8/VLTN0MjkTtTc9F/4s+hVnfhLSqCUF
	 VEh8YrqcYNd/ae0GJtokFTF134vjWTpeqJ6+ZlghxkCdgdCByYddndiolYXLr/dbZF
	 qlrT3pnak0YiuPBcr8Y6uZCeBRruDQep+QgZs+g7ctW3HqPb0tzv6bTYvrAfbwBisH
	 Lb5P7gnT+0cwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921AEC5AD49
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174925739357.23189.8804400628452724116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d2945fbc3e8300e36439780a82473cfa0a9ea053b0656d96fa26e9e2b457b1a
Date: Sat, 07 Jun 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749257393
