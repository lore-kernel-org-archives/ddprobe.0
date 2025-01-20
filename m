Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5944128EB
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737336354; cv=none; b=CPM0AoiUN1o4ZhZGl9P1hLsarpJtVkCV3EDJimMHVqUsaqSBdoVrV+0zFPEn+uXo/HJXNP2WXXksXiWMU4xQKtdswMr0SZWJOerhyByv/yD9zlacLvvhRtIov0+ID5JPV5zVz2yAYlE1RWeTyanLVq55SubE9Mw4oP4VAR4C+z4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737336354; c=relaxed/simple;
	bh=a3wJtZFLBWOYx3HgdKhunFeEzrgsBqoU0fbPItHrOQE=;
	h=To:Subject:From:Message-Id:Date; b=EfYaJQhOR+lJjzqwKd9JCSSUvDs4RlTVPEUniTe/p9l9gG4o9Rsb+wyo6R6IWH9hacoBWEI/mkCHw4N3BFw5omXOWQTIsYy/2i/Y3utXxD7aaFW9jh2me7tRtADaKphSqEEcaV7r/PDA2Bbe6wvkxQcnKZ2PwIEip6ShbhmjYlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P/PdIRyZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P/PdIRyZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B01ADC4CED6
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737336353;
	bh=a3wJtZFLBWOYx3HgdKhunFeEzrgsBqoU0fbPItHrOQE=;
	h=To:Subject:From:Date:From;
	b=P/PdIRyZy85yDrMEx7smFUe01AwphXC+jqMZWdViMXVh4J/z6uHOb17b3aRArBDpc
	 HnCOhB430WgOZYkYgm9UeaLQT99cHRcBcJQqyMehbpApynMF2OTjVkIh4hTWiZacCF
	 8FLm1VRg0R+NdQNE9xqn2+4Tba3AOS4vxFc0aHIztBvSwpz+jNhsqMvvBoj/9h4/kL
	 s5r0RD/qopM6kJP/3MoLiNL502vwn6OQC+GhCkeklyD/W9I1CTiUEwSC44ebscbZU4
	 9ber2x//3r0vOu+RcNcLWT4h2Qv9j0iI0z/BLarzbR/lo0+Xdvo2dBVJMtyCDR4jxt
	 fjmsagI41Mvtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C343C02187
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173733635360.15167.14001570123925417249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1f3becf6c1fca2c5024c11f83e8fa1c2daf74525e4e6db1febbbd4a3f2dbb38
Date: Mon, 20 Jan 2025 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737336353
