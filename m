Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C50F2745C
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 01:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768441434; cv=none; b=ejt/wQA860ZTHy0L3FZ2HqgQn9qqYqv4qgKHVWbQ8oTunjwN5HjJXdKZS/+QrSm4Rphn91i2uprkvAreuoFZD4MwCUMYgB9oFt9u0cYqBUPUYkAiHs9BMIChl4nj9dZvvQKLlKZ9W+OukWXReonB1v4L1iZFi3jFjPy4BcUqTN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768441434; c=relaxed/simple;
	bh=RLqmYjvlWvsVxN87Kj7ujcbakJto4zxyrrSvMjDbdhE=;
	h=To:Subject:From:Message-Id:Date; b=jym09DehD9i9UiB4s1g3pzBK7AvxiL/du3d+aVleHA2OFz44c8/5sES4ll4g5/OF1yUvXxOfXoDKSTVXbEDI/E+RjopO/v9mGQrETNHzK5Iv5FcpBdnW4zzcp/+FhgqUBAirme+8FA9A0RjH5l+/ZnvKRuu5Lp0jwLNjf5+WauI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l80JjO/9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l80JjO/9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E311C16AAE
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 01:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768441433;
	bh=RLqmYjvlWvsVxN87Kj7ujcbakJto4zxyrrSvMjDbdhE=;
	h=To:Subject:From:Date:From;
	b=l80JjO/9u4DadxB/pjc6BkMTu4oEam/IUtS2OHsQEYg3fLhBHRyeuq96qkSwxzdvL
	 jbDs3q0E2RWbHuIubqdgs1xOOKK0MIAB7hKcY37t0MRkXLnrVuhatIkOutHNmKZJ2f
	 QX8DWSlDLzRzciRRjOwZyt/w2kQ/PHAl3RbAwUOMtJydX1ncvbMimCRTOy8rkxN1jd
	 fW+mRFZ1As+8vJS4BZfYGCg+zZKMCsg/O1tZEgKaadYyNGWWjGeO/DF5Urnr/8xHza
	 I/3UdUtA/IeGR46yFWbtndU/bbeH+MtiBguOQeWQZY8aByGYhGwkeBWdvVZoWj+DjZ
	 DKZKdEvC50atA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F63BD3CC88
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 01:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176844143357.23201.12129334047938534954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0522dca3dfec3b75be1125a1120cae3a56b9dab12ab9c4677968fa462f71ae23
Date: Thu, 15 Jan 2026 01:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768441433
