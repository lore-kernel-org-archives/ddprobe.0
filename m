Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36446285CB7
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753876194; cv=none; b=u+TioVgimdnCjeGsSlYgOzrV6mUdZWbLwJaJJHlVErqb7qVYY8R38d52Hk0yC1Zeiw617w0hhqi0HiOU05Lcf41Iumx5yjsGdpe6KmpnTMv/Kw+kj2zFqd4et2jLCoDR4y6aauZdB1UJtScMROl+3ijrdVM2UbxfQQSI6y+QABs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753876194; c=relaxed/simple;
	bh=bYN1xUg/V6tn6UFkZLpQlMT46zyd/Sh03QVzdUproFA=;
	h=To:Subject:From:Message-Id:Date; b=mLJTU0oitlUxvo0ve/nt8oukCt7zNre4FI7vIfO92S+37CBWgHbWB9czPIIE474l8oZiVcG13dc41TAI/DN+Ge1rmmrst8HzXFkz+QsbYs7gZ5ODSvNYVFVGhsQHmF/x4+alaRhJ3OgR2f11v7p9eIG2C/+4N/8awFcV4SslEZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TqpaTw94; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TqpaTw94"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D97C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753876193;
	bh=bYN1xUg/V6tn6UFkZLpQlMT46zyd/Sh03QVzdUproFA=;
	h=To:Subject:From:Date:From;
	b=TqpaTw94bYKYBgs4UUXHARCR5dGXCi87/I9YjNMd5SZO0HHCQ7L2Vh9FIOmboe2wR
	 d8/pYDaSEVK0dnXL3adCsOppT++fSpo8pZt/8KId7esyhMrohWCVMTt1saM8umJUbe
	 YFdkT9ofooYoM5fBkcdN5ZK/s6SwUkGThUM6+AbsTY2qMYDwbtIVyeC20ycWugSrBX
	 lY9d5JZltbMCud7WUb5Ea9jB3jCEzmDJzKvbnlzU0++OmvNJ1x4Ja9FNuSsAg5pIt+
	 lhOnf7lAL44GCS70Et8oM7LFbDKxDjkijCYzuo0Hnb7PCvFD93WAhuToo7roFUiRY1
	 rLWFDI4oY025A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6B8C87FC9
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175387619358.11105.16470197876647110778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1ab315a0ee9f105826cc38efdcbcd3bf1be76096cd456ef834984a21655592d
Date: Wed, 30 Jul 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753876193
