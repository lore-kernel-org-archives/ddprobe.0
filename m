Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 446543234
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737186954; cv=none; b=gX0HcFJjTpvIpk2tzUGmaIu57eaSl7B/OHVtJ6ciBaOZ1xmMA6UknJWZYurPAq5AVGyAyG/XE21NuJPWyj1oCfVLl3pxdbVr7gv8bGCl0m7TR8tJWC7dvG7Tx8DfzTp3q4uzrgf46M/c7buL3rFSrNXDUL9bzgDShYYFsISclKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737186954; c=relaxed/simple;
	bh=WM8Xh0co1Sm6J3bRqqd1KDmKx1BMjbokO2Kfkx4A9Lo=;
	h=To:Subject:From:Message-Id:Date; b=O2IDx1kh9oSs+yMgiJwWtqvte2dUksjHLw2lthX57kR/KOvc2rkMPY8XDrTJFHXdT7dH7EZjwli59WQBi/P1BuglJDrCh/JtghhO++LIspUjgRSn4rCBrVCqXLZuRbruhb01temQwFfculP34aESQe74WX6g3xXWUsVT511GkG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hAzm+FAq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hAzm+FAq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE822C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737186953;
	bh=WM8Xh0co1Sm6J3bRqqd1KDmKx1BMjbokO2Kfkx4A9Lo=;
	h=To:Subject:From:Date:From;
	b=hAzm+FAqZN/B/Y51iSFrx0Z+u67oERydjcZrWfR7DChqpf2/VbG53mZiSj02d1ZfG
	 u/G9wo80Xud+puZOnLnxh0yq0SAln3BoeWHny3S3hla16UT0BQ8/jH9rIdiI9x8QJF
	 MbfKll6rJCtSTZcZvTeCnFHXTlqm30KKrBiU7JhtnnjEy/UsJQF+UU89xkWA//PW3P
	 0aFKYUw7p1fra5NSthsGC1XXyZhihr40fiunDYvFr5KJStNz6k91dPDy76je/EXR7m
	 FIahZBBQVkcS06dmLE1tBO+6dVPb8aK3QRwUeoX+eJqxdV9cc8mXi75tKs1hB+9mG1
	 egVBE3uJ249kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96235C02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173718695358.30424.8303291406195945746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cca8fae9ca0e2c95cfa20277a41ac576e4e8e7ed1a1f56dfa6da26e9791b88c
Date: Sat, 18 Jan 2025 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737186953
