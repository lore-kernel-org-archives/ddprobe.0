Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2700316A956
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760105994; cv=none; b=Sp53xNrHqV7lTN2rjeFMW+hk0RAwO9qMaUD3m6DWenmoeNxcHhb1o/ImNSbcsr8XzRhifcBCK0cnF+qr14Ur2P4/+XOk8cghj5W0Gqv7uG2R1Ta+++t9M6s9EewIo3VpVtC+vZdGhzMoFlZ3DNjqOvVT2MKnS2CAZmQtDqxN3zM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760105994; c=relaxed/simple;
	bh=VYJK+mBNgkm8lPcl6joHNVTxGoKNBJI/3uCJbtW+OI0=;
	h=To:Subject:From:Message-Id:Date; b=GOjtwp4y9JBH7ExNmXMh01Nbj6KMivYX+Zy+2jdT1ty26FPd8s3/7rZ0DXbOsv6CU0Cf4m+yfkbNZXLs8rO6qThxIG7hzPGkwfplVuGf7ICEVnTZHWRHiyMz4xHikhH/XBTYJV5pYzrUNT8nn2bBYNepN67nw8z/o4/ZQHHtvCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ig44GhLr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ig44GhLr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7349C4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760105993;
	bh=VYJK+mBNgkm8lPcl6joHNVTxGoKNBJI/3uCJbtW+OI0=;
	h=To:Subject:From:Date:From;
	b=ig44GhLrPtlPJsZEO/OipJHh1bktq5WvxnD3OZcN2gTs5G5fVBa7jrSpsppcuHIuT
	 DlQIGK0OeJUHF1sfYNijafCz+xEDX8n3OWxhRwXiWA8VHKwGlUBmt5numzBqrvDSgg
	 su9ON9NqX9g9gNSxKETFEOAjX7DTht3AET1n4ccw0/FAn6BIOoB9yfFbvTdts81gt6
	 6/fB5ZjyaS/1TVGmq39PyDlVwKvRhPf1Dm4XNmys49cyd3yIE4+1xl/95K06VrGyYi
	 6zrYQlEpif40XCT0ftsa0T8jk6iXb003M/mWL+fCc3AzilfInKoCpVpmu53nt/nMiM
	 YyKrb9vzj6FsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CE6CCD185
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176010599360.13752.15385127173565001993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 076425feadf5d0444afd149eb86581300738dc2f69bf333a8cbfcadfe3ce72c7
Date: Fri, 10 Oct 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760105993
