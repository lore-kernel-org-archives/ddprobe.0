Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEFA644C77
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728917153; cv=none; b=AGK+NGHsFRdWXTLU6VNeOlSUv3/Ln7EoMDQYTvvmE5T42Rm+SpUr5SUO90hgfGIJHSiIwf6QLuhNKdYLqhhymFnveKmTfZVZRHMqrINODCGEru5WoRLRyF2DGI8f/cERjZiIehbSv/hEkoAmCoCa5W+xXtf4PvnEzo2NMZjmfRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728917153; c=relaxed/simple;
	bh=56I4HH9lf6jHvvsJFumvxoFUHSPg8TihJRd4nEgE2wo=;
	h=To:Subject:From:Message-Id:Date; b=BfgryYss8z2PFLka/fRCtCKkd/2qLnp71wcvxuFqvzgnJGikGD96MZORn9XFObxaUdrQEjlhKMmKJ+eMgqXt1FO/IaPbiJ0MZCeih4moQxKEq1xus7uXE/MkuLaMJRsP1cbeZhJUCHpVwKENwPRyzQ8qtx95WEAGOJ0Vwh9FbB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KYvw7Wj9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KYvw7Wj9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB7B8C4CECF
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728917153;
	bh=56I4HH9lf6jHvvsJFumvxoFUHSPg8TihJRd4nEgE2wo=;
	h=To:Subject:From:Date:From;
	b=KYvw7Wj9ZXsEnG/PRucpYQ3NjAA4PXv5seS/c098LRbneOT4u3vUACwbFw8ywJrZD
	 hUrwW1iM9Oeen+5g6YRgwS/Apj/6apfcGnK7t3BWeXYpQDlzOkX6/cqmUZRKBqbUkj
	 cEJ9pJ7xSuqCqhZLqo24s+qZAwZaH+JTSFBoTeQ8Z2miC1LnQIfT2Ne8m+hATZ+CAL
	 a7geu71B6uUSzo6cFcTSD24qG+8ir4o/eW6J/nUha6vgcX+BeJ/yVOJzPrW5odlYIT
	 Qqn93u6yGB7L0SxTb83kUTypkgJ58QcjtPBjBFf8m25wHQjABSn0Ol2rpfA1Q3kGMp
	 ODFU7eefv/ZOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AACFD1627E
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172891715362.7371.17540221969559914277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7e23815f5f21d56819d6fad2a2399331d087958bc5436fae07792ba063ef720
Date: Mon, 14 Oct 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728917153
