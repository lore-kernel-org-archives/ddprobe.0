Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C0DF154BF5
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 13:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766841834; cv=none; b=PJGofhacygwJyCaG9ttTtd7dYUwGAURjVATwgkF5UwrWDC8AsWLiygUnx2Q28a9JOUqXoyQdBN8mmx7fgjckNCBTBYg4m7gZF/c28CViOXzLXcslO5po/uMruUGJbCr49nZoVL7OEYlsrrvlHn4ymPrj4EZkLziNwNWm5HHP1+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766841834; c=relaxed/simple;
	bh=2MYOVlb4SI+tgBWOFHKrsUOs1s8RBxMAtztk4371GNg=;
	h=To:Subject:From:Message-Id:Date; b=oUkqgiq9TmnV1LS1VbtHZaeRp8rQps/aNXV/CG0X7/19zNXEdlYIm8qAVFGtRgpWoEm4iPwi0ChwWxyjQcgFjrGEggs2GcvqL+j16BHrzcGW1dKvtAAKnXGm9gtfXv3kO7IkIQ6CUopA8ftmAYunmUhbTPIhALgd36PqK51Fh1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DNKcfbQf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DNKcfbQf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C40C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 13:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766841833;
	bh=2MYOVlb4SI+tgBWOFHKrsUOs1s8RBxMAtztk4371GNg=;
	h=To:Subject:From:Date:From;
	b=DNKcfbQfsZ970+/oo1kTS/5uRzaHQMHOxr6/uAVAZDCgi6sVx2JEdBDY0p1IkMPGt
	 fBAdYpjxFt9la3fRaw4WPFsofQtB3o1tmXBjq34URzcDbnYkEomGEHvpkYow4UwVNx
	 6yd7BTwj1X5YiF4a9g08vSraYTrZJlYl+azWOo4hsCoB9u0H4dCkBuXFz3kJa2BDU7
	 eIBGVr7MEdG3ogZBquSOzOt4/SHDRJf9kjdx30veAbRO56glPtYJlyWxZ0gSteftyM
	 oZwmkzHVpXNSXjMtQKN3Gz/XlR9/zl71jT0JQUX9vCdclgmPQm2es1LxbEanvXPpm4
	 n9sw0VgUK+7Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E97E8FDCD
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 13:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176684183358.11794.6166680675031118005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0edcef64688849ee80a2e31c4c96af0e099c5c36032e2838aa8c1ca30d6820ab
Date: Sat, 27 Dec 2025 13:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766841833
