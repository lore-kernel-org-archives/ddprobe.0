Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 225B62E63C
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 15:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781450794; cv=none; b=ILH0U+zXi8T+n6P+ltvEupICaEBeavC0YWBw54pW6UOM7qCmaU612zBsGtLUp0ZtjOcLdeYgDKwNdgv4TdaFkQM7jqcysAySmEfp71pBAgfjiJvS5zkbIsyriNIhjuAMg11BLH18swUiiW7cNu6UUHCOTa6nf906EciqsO3THxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781450794; c=relaxed/simple;
	bh=bHDIxhVaUihaGNY3NRnp6lbcMhDZ+2LWTViOniy0jrM=;
	h=To:Subject:From:Message-Id:Date; b=U12BM4q+u08WIdBLdhgQLKy7ZAV2W4qG9oUng4QR9bVRjYxjAGlDLWGddAwfA3SDJw634W7rhnX69u7cSvxUIK4R6DRNfzFw0nMy97Xc7Zh0sqwgf1JZdk92V4ROcUgG/mHlCE8fAkhuvGgPFMRN2x0CvF1oy5yw5lC3b3Q7GDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bmIhB8tU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bmIhB8tU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5A22C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 15:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781450793;
	bh=bHDIxhVaUihaGNY3NRnp6lbcMhDZ+2LWTViOniy0jrM=;
	h=To:Subject:From:Date:From;
	b=bmIhB8tUONtCC5uRtISCe+zvn+aip4BwBMoH1f39IrunyoZgN78rhv+kogBFRYuxB
	 3FVvtS/7CztPjFKCye2yAlnBI1d7Q5ttSnryu1X1K9W9fkn+d5N9M1/z2ekT2zcPLv
	 rX35YeOVZWMFoyHhTcR3RsW9y3xOuDK9KFEHaEl67MebUShNPa2qptCZ6N3XfaF7bv
	 NJ+uzaPSVm99cVq5ABN9H47FU2bmkqTRekagaxQ8+z1ooFdGqXDjkm6upo8mweH0j0
	 W23nfaIW5TYZhbw6RK5QzXSoKD7AiEfWpnN53ylxXqQIl4MJ2n3/7EL0w9IlgrvYF0
	 MtQdX+1h2nafQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8ABCD98C5
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 15:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178145079368.6218.5075115668179956708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61840d664368e2cf53ef0d29ef4d69b3b57fdee90fc98525c754da43831eabec
Date: Sun, 14 Jun 2026 15:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781450793
