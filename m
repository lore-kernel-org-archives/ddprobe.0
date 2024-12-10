Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3225723DE9F
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733826354; cv=none; b=YyrU1bR6JDx2bfxRvKo0EsTu5WJipnxctIUa2o61OULVs7w2FXxIDgpuckHaPGR0q3Ht1rrx71Fz3LNKvAMIYkVVJNiVhwrMi3+VDfCyKxzXf64EJti19GDCfpbFlbXLSZibu12KdRgRYfCi10rrlu7RnXcGjOpwa9xUoHTUclY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733826354; c=relaxed/simple;
	bh=eJ1DdEVGdjuMdDS0Bi4unG8JOwIGeC6ffRf6aQpUTNw=;
	h=To:Subject:From:Message-Id:Date; b=NK1POPnMIJak+5qgV9HeWVnLtb5jwJQ5Hy5k1nvPkZEjSpDY6fBwF7jc5IYmjnQLbHjyRfRJd9NC0M/MruJwYFWU7w+JalPtthriHLKAynytgn9wk8i0DH+B+cLdyH+BU+IlF93EzjY+QRiSI1Sjh1uWff7rK2I3RihjX+MZPXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LBEdfwin; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LBEdfwin"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6612C4CED6
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733826353;
	bh=eJ1DdEVGdjuMdDS0Bi4unG8JOwIGeC6ffRf6aQpUTNw=;
	h=To:Subject:From:Date:From;
	b=LBEdfwinvJIdHCjMP/LjTepu0a009WIkwEtmcCRwq+ewJ135dv2HAkNN9v6gwpsBX
	 7RBliYQjm0ys8yaLGTdsmmmA0GAf4OYonTsQJxOIqFViu4Q3O6JoYesN5Nb8NQvJXi
	 /C3M/XPBtpHSx8qfByvJKO7sFJ3p9ToYGyTyzW5bORb9+eo8CEVj6eSsMuROoUi/v2
	 b53N9ARfoPCRcKyTPEA7luK+gkyT+ke7ZqHKjIyIjxYejADmdwO+nxQQyfRF3G2qrc
	 g1pehkRmFi/5PR9r/B0+Ema6c8nbi/4TIeSm3zu0t/miGZwqYJYZk/UJIrQ7XXwG9J
	 Nnz9O4oLodU4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2C51E7717F
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173382635362.23313.15513512655213424032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e248b5e7ebb6c62fcefd9ad1581aa1c01859b0f010b49f29760c977687ff61d1
Date: Tue, 10 Dec 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733826353
