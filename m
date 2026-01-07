Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 354E9318EC9
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 21:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767821034; cv=none; b=qdF+iqyaB1LUr3U5jfZn9kFuXhaIc5qm+FcvBlb7PpUsU4PFkovc2qNcBdGy08/zsWC9K60pe3CYs0Z9KCFLK5o+eLgDT8f7pgnfmSENWKkKhLZ1XCaKHszP4p3/RsdIZEfMP5OC1b8Ie8tCqZPAdpxcPkU4ec+tQK+oL8wJqkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767821034; c=relaxed/simple;
	bh=ufOD1w0oQ3Q+gd5XauPTGZbEPtru/LbKW7EEofpnQDk=;
	h=To:Subject:From:Message-Id:Date; b=UcETm7zvZ7nz0SpR9dH/yLnKSi20Sash4piQ3+mI5pXdw2TGkJCSzM70h6AJ5CXLyUjBzRC95AdScxQ4/wIzEhMTPTB/0g0JHdPIAwRcy6wUBWCe+t7h+ojRfJjO35Q2dOJlonrE3xyjihOOS7U+7z9yN3fZnpAmVYRGzZ4sVUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YIHyfyP6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YIHyfyP6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA5DC4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 21:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767821033;
	bh=ufOD1w0oQ3Q+gd5XauPTGZbEPtru/LbKW7EEofpnQDk=;
	h=To:Subject:From:Date:From;
	b=YIHyfyP61aCWmP7yzCZ9ukox2fi6lg99And0qIP87cAbUkMmQfOzIRAYjr0mXUaev
	 hobbdkpqeOdIPuXWyKVnueee8kTjShPPAyNylgztFGQB+0LBMc0zPhe9d1hpQecvlT
	 iS9ygZyAvl4I9CLB6Y8veOBUMWghohkr7JDfTOVVn1UyjBrfRG9ylNBxD15AeBlSEm
	 mTpUqO34P8VHdeAuNJtYrcDNOqO3eJKdXO6/trvhHtJpJ0J8efQy8AjWEp0Il8o8yI
	 ZK1MfQy03O/AV5V5Lh4KCT+NMczw0RuyVqZzg0tqtaRV61/GElCVx6houp3pYPjelw
	 7T6DHGXhwGx6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90389D0D176
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 21:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176782103358.5599.2746859034138119411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 291e40808b7fd7bbf1a5a0ed64d5e89d451b3985e64a1cdcd108f1a8fc166449
Date: Wed, 07 Jan 2026 21:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767821033
