Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C72E63CF
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744601994; cv=none; b=RMi0q7bh6AdXoLSDVHzTnAXaEIEnEk9eC99czUAaJwUrm2mXGS1LMbegLH5ym/TeU3qr5G98ACXmkKMK5tDYEvsk3eccRHTzasFexzIVF4JjouteKm57p+FqHy1s+dIAZUxht5UWUhHSUMVt1eBmAnGVvibvo/Ef1DtYxOJWQt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744601994; c=relaxed/simple;
	bh=Z+HUy0iu0ByDXQdF/m7h6/SVgFmH8y7eXjzgkAkH/4k=;
	h=To:Subject:From:Message-Id:Date; b=ViD8FCRJYqZCtJk6T168sL1yP3ou2x+OjtthmXVb+WQyr0V3LqrJLGvCYhMSWX/BvosObgsCtM8yIE2KqUMH2OxXVjOfUcVcNwMAKUILtMMWbH+a+2jnKEXzilhd6+nWvcN/Su16ZLVZzBSOF4pHVHNQoBSpE3sijCkPsvOaJDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oB19QSSX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oB19QSSX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC08C4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744601993;
	bh=Z+HUy0iu0ByDXQdF/m7h6/SVgFmH8y7eXjzgkAkH/4k=;
	h=To:Subject:From:Date:From;
	b=oB19QSSXQSTLNXiCiDn0Yi3l9SEbiyC3yxJKGRCa1Xd4BLnNSQcEarmqoYeVnXpfo
	 ZGAUk7y64vq9kunk0O2THU+DUOuYSNUg5Y3hyZHdhQYurKHmeM6J11tuCXp15uviaO
	 +3jgEd2XHyobyuh037zTmXBDJlMaKvmeN5hoLiNTOA3dPb9ad+L/fTOTt07V4rBSSX
	 MtPdEgIdnaUSfiRb7JYvHK+EcPbXruMMB/2VTL9K8aTMG4vfsrzquflbGtGWvdJdAs
	 RhSrj+ja+XlYXYbMsIpa4MxBzURXkh9bORVvVRImW7d4hY3RXMOHq0jEF9ISSGtLjO
	 gc0rtKuPvFE5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97CE9C3601E
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174460199358.28668.6647574736950596238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58623d2440b1bad2fa269366d7fe42f065db30ada91b79c7d8300ed647124788
Date: Mon, 14 Apr 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744601993
