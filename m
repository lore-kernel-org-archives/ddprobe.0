Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A91F15DBBB
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 11:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713440363; cv=none; b=egM40kWBHb1+380ijtJTCCWFJkIs+Ol2oEdGcDZWntAyW3z+VnqpG3hipJRhw/rttGLBQuPrm5iWgAcR6PZErXP6s3NnwnC/49yjDXTnhCp8x/q0YxHvdNmsXRqwp16/p9iYi35/pXIsf05NiwdpH+f84zYvPDVnaEgQlm7mMpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713440363; c=relaxed/simple;
	bh=2T2oA8dav8RGLG6NMK+12QDK6B0f8hjEqHSsg6JCa/w=;
	h=To:Subject:From:Message-Id:Date; b=WUlhQ7uNNdNgBffsty5zjsxkeWEZgqu/UIn0cRN4P9xsPPLQX9BlGHn/+djyXNx9UUHw2K38IjErSUD3FcHlSJjrj/QxD68p3My0I2+g/vB0bicFodU6m8j4FOo90pzPFwOS3BGqKKRMfv8lrBY66DzgJ+G71B/bd1c2W8hXk1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qxb8EqfS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qxb8EqfS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D68D7C113CC
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 11:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713440362;
	bh=2T2oA8dav8RGLG6NMK+12QDK6B0f8hjEqHSsg6JCa/w=;
	h=To:Subject:From:Date:From;
	b=Qxb8EqfSSJauzPxcpmRnUIM0yaSINND8g9mJ+kRcpF5K0OxjJus8dlJCCTXEVn54D
	 6LM01lL7PEhM42hLGZJfH1XaT2JXf35S7h800A141MCrW855Fh9ScTyoiMXU3Red8e
	 40WEJOCCyW8MbWgM9MacUTkhj/6VAxnJ6W8yOI5N42NjBmaP0//tjulD9fwiXw/21N
	 0cpORN/+0sQ9m7b0ZGsqGgsJJjWcQQJC/8yUm0NqYwObavVsideZR1C5DMFM470Ybd
	 uV53M1tyIbWxbIZr35kLTVkBnu6NIeRI2ze+LvFFQl8Ef9tEPpWjCeh5TalhOcBX/f
	 H5RnhaCpdNNhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2437C4345F
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 11:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171344036278.25800.7253431979966244453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58fb030856421156eef7a3d4fc835a9046063ae5ea3a90cd0628a97b4f906615
Date: Thu, 18 Apr 2024 11:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713440362
