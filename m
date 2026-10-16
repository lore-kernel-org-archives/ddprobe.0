Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 324624C9E13
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792158034; cv=none; b=X7Fh68PqRGx291KwaYtzPjAZyfm2RVWejV7nGCpzyq5E8yiLc+27dXzwx1yJgaArfIWFI1X5/yFhWykXmRf3Xy7Iymnv/WwW6OHqpFJJcZoethTJ9BUAnMYf99X+UMCsSFZm2sfl3gi0xpLx1u34KxDt8VZT5a5swbO0c1b9gaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792158034; c=relaxed/simple;
	bh=/SXKZhPIMI/UVaPOP91gXWYBSJfqdbcyBuBoGYosjkc=;
	h=To:Subject:From:Message-Id:Date; b=WGEx+5YQAF98C/tx0rkGNh/9ePhMMpwgAVNbTp72beFl4hCan4zPOwfkt+x7OFwMH9LSkLBQ3/x9mihfucktvNDFkX1tyjRE8XS2HmyRg/8dmrrWtgOHFc0JG8Yp6wPdum+kj7hc1ZyWjMVN77NTlinBNzlWISO8jPhlv5s+cVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qCbDCPiT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qCbDCPiT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB5F7C2BCFA
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792158033;
	bh=/SXKZhPIMI/UVaPOP91gXWYBSJfqdbcyBuBoGYosjkc=;
	h=To:Subject:From:Date:From;
	b=qCbDCPiTGMa53rJb0XlyQJpUKfz12rGEoe9WC7yohd8kO6DEXaIuW28lbGYvT9Byi
	 4G/Nno/OcnVACl+n0NOh1pqff/LdsipKp8YPrBzIwYpL2P6lyACAS/TR/4cmKDhSMF
	 XntNaHRssP9is9SeX2NM7UFcND+CLX1+DSmb1KI1x/ODl6C5BWxVfUgc8RFtu1nWxZ
	 mrrPkTcddhzacaeZezWVVB4Fig96KmLNuMyYu+r/1lHWy707ijOO1zS5dPVh/fQc31
	 nPmsuM02ErtNrMe2IEv8G1YCXtz3Xq66HY7itxc62/8OkQaR369/Z6VaKooCG6bu/D
	 NCuoGVkw/QDbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3683CCA462
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179215803371.19410.14460663390518694879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60c62ba6137cc8ccdccd5583d8339715d40c4e48bd3d0e08ef8d6416c4e7c7f1
Date: Fri, 16 Oct 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792158033
