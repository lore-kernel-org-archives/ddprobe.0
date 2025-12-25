Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E6898462
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 23:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766703834; cv=none; b=guqwgHENsQzxKR0oQC2q/DX0gv/zopgjoR8gvh0xTcpV2IGzre5D22i9gx8UiR7SnDmdk93jQuKpA6nGc4D0VCHllXx3Dhx4UI/QMTiyvQKlXQx/vMyRD9KVDzKKZRdQFaNZTVlXo9J7frrw0hOfhAy6e7xcYVIBSUs4YV4G4lM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766703834; c=relaxed/simple;
	bh=Z0Ax9NI/qmeJ/QSO1uYWjmBOwJ43Ans5pbpTe+l9tU4=;
	h=To:Subject:From:Message-Id:Date; b=isZ3cVytQLpGC76WTVXWzZlFFZ7EnmkNG/yC8dKRRb44ghWfWXfF45mirR+6NZhx7DmSaxnI3VCi8JNdzai1HbTPBeoFSDOpbmhCekqRWZDM1SjA8ENL9FV+Pc8wMVHtxndsSACc0QTOFCabqeXeaCoy6SRPcn5jEHnN3h7d0V4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WG1aPXQF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WG1aPXQF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9BA0C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 23:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766703833;
	bh=Z0Ax9NI/qmeJ/QSO1uYWjmBOwJ43Ans5pbpTe+l9tU4=;
	h=To:Subject:From:Date:From;
	b=WG1aPXQFAG92EYI1OS32JCi54dptUsZZ4h/mFv8aS4GdG1KtPzoYRxn6TF+bRP2R5
	 N/ulRM839fUF0yp90016b9elrxze1rwxMiF/8+5YzIDW7cuTAnF3J0rrfLAKzM5QCX
	 98j0UfldwXewH2g6LG+gtE8viURQffyYKR2rZ+zGm+/SsmFIXltQZ/ZTQxBn52VwQq
	 A5bUTogW6qeVfAjD4B6bycCUqHw1IixyCuGHsJVc5XpnNAwA+Kic/Oxk7chZCWErjL
	 jM67Shi9Hukwleh8O/psjT69sUaO1rSgJDoVELZ8Dbe7cuTLPH76ppJ8xpRH+5T8Gj
	 IA9RzN2TKR+jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97469E7AD74
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 23:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176670383358.19198.5073697043660288463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6306e440d3de0e55babc67abafbc04858bce4797e4dbf3cfd134d6dfd5dc19fa
Date: Thu, 25 Dec 2025 23:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766703833
