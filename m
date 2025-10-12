Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3029B218EB1
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760256594; cv=none; b=WM4YBjqmQxdu65Fr3o/niV2/hOuJrAVYVT9raTKLl76rQ3QM1Ad0imJj6qSVFsENJhaY4+EyRi1tnXwth2UIlVhQQRnfjAtQr87Yil3pxZlmriijYvn+G8x7t4z/04jTryAQbEjGdzzcl77fN/zvGe5mAjEudzZWaMhT3WzqZFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760256594; c=relaxed/simple;
	bh=+UK3GVBhS0S2z3CpDpnrtXx1rIGFsgIyG0UDnicdpSQ=;
	h=To:Subject:From:Message-Id:Date; b=aHFwhnapHtsxQeq2GcrvilQSejkvGYkBrR+x3UV0ny26rffz1/jotk9/0dx9ASQdJ116yJ1E6JAKlBwzYR7s1sA2npkw3k/8tK5zabY2skMOwZZ2K27aKGbJdBHkK2PUoxTmPxYtnT4CsnbsmoHQfYH3gMCuKBa2Kwend1oZd44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tC9i0MhW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tC9i0MhW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EAAC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760256593;
	bh=+UK3GVBhS0S2z3CpDpnrtXx1rIGFsgIyG0UDnicdpSQ=;
	h=To:Subject:From:Date:From;
	b=tC9i0MhW23PsAfKYH9ZS2bSGiFyAzP9e6biCoiDoLbZ28V9Oq2bnTEnqhvqfSfi+g
	 PPWSJ/znZuYh6QGFHMADbLbysXXB5JG5vZZa7ekuWl+mMf22mStzfwbk5roE3tvQ5X
	 rGT1XifI/ohdgExRcecsCbbqIiMoSBU99UGPKG7jV+WyG2E3fJtu9aNtiJJNrLSOS8
	 TPEvvvbKecHM5dYM67JH0IAItKus2DF5iHgPvj9X8LLXq/IPkHVgc2zNONHyxiAgO7
	 gB9+9ddTcw+hFNvqfhEeCzGYa6eXWq/BZnxhPFCDijpr9nsUbYR9ffvXdnoVWsXF14
	 +1h6RQk3ygccg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928FDCCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176025659357.9300.13802999897617494816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21231d3f2e171c7fd7e3564b53341ebe3672bc67006f53f4afb4806753e4634a
Date: Sun, 12 Oct 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760256593
