Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD4F346E59
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789435834; cv=none; b=rUkKbVzHlspq1QngSjzF/3ho1kh7rIpGYWVc8+BGGWF8M1y88GcR/xA/yZ6DePoCH/4edeXnO+hirt+3XKUROpFuZDVR9Px1UU5zZFjw0f2RFdHd9skCsuA1z1xeoyBnVVqKeT1+9rg5gp1MoZ2n+qRsdUeaCKeOll+i6WajbSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789435834; c=relaxed/simple;
	bh=wi01Wpn6SGVuGdlqcFwfCElW6QmWcmYaYjyapBeBSno=;
	h=To:Subject:From:Message-Id:Date; b=HJzg8AREdAnTNp7guftrDbmxoQ3DBiV1LNdsfuUrifQSbYIJdZKIkerHIK+NYmHbiK1mx2k0AMnBUDcAPBEPdnYnARIgKfdwylRWubQqKM2GOhDTFQEwtdsfHbovVg29LM8DQy71INjaoCRV8lt7YXPpUYosWX6dxLhEQmI7s5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qC01yQDQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qC01yQDQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB6DEC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789435833;
	bh=wi01Wpn6SGVuGdlqcFwfCElW6QmWcmYaYjyapBeBSno=;
	h=To:Subject:From:Date:From;
	b=qC01yQDQQQNTU9uhCY12mbWC8tFVRgBYF8uICLdHPBk0dfJeZ6z1LlKoK/mi+z341
	 3VPbiF6Eo6HjgNw8hrgFSD04pvvibq6tz2CQzePgZvR90gcN1DR4hiUr7tyCnPdKQu
	 ZzRNBIX6RTqV8rbxJ7U9BgbEGOzU7nf5jwyb1glahcCWB/dHyUj9wYgo1t3ET7d4Rk
	 CC9ebLntQacs9K+ShEYnZSLEEZuOwbhsOJuVCR8L2rDj3ZB4dUr72YHxJYxrZy9A1f
	 EfEnhs2dMwMtRhnpHnOw+bF9mKAdsVKiaiiDwRuL7QQQbqUcQMJFLYXLvCmiQuMJkH
	 AWLeXlUwYFLxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A980FC88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178943583368.29672.6327805616839862018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fbfc68845b97d340d56e4a9ce204e3fc4a0d838199ab25a2d8a4f85eda0d7ca
Date: Tue, 15 Sep 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789435833
