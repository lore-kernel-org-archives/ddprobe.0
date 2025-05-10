Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A0F62550C6
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746877795; cv=none; b=CFuFGZXXXNLgdewW2udhBT0xq23KDjO6lpSr+Cnv2YEe4cYlKebEfnnDl4is9P12Whersy1jH5HKXjUl6Hrht3oRLMRbF+7rU/yaxRrXMgwRQ4lXJV9ajqTj13PdFyu/9iZg+BJIxMJseOjM0mG4Nb1wWI9x03wqLj6GVYy3OIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746877795; c=relaxed/simple;
	bh=tXkZtZTbYfdNFauUsH6bcCTDnVQixFFIrx9cRjFyX8o=;
	h=To:Subject:From:Message-Id:Date; b=X3j17zFua3zoXYjh6W2BJ4eEsY5hL/L7+C7QPihoILYDkEz4hBdb6dQ4XbBvePP07nvH1G40ziKUBPRkr0WFVu2+gyEUAAp4pgXqZXkrSfqArrsIsAaqgNs97nG3dDcl70OqH1QN6Kixc8MVdib43QcfT9Qwi8quGhb6V4qrX74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uLHrpnGf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uLHrpnGf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A173CC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746877793;
	bh=tXkZtZTbYfdNFauUsH6bcCTDnVQixFFIrx9cRjFyX8o=;
	h=To:Subject:From:Date:From;
	b=uLHrpnGfb7ObUUUHmJNRgMEB+RzCop4rdbz0YOU359SSVqMZ7zwbQYYal8Mqo1NIM
	 CGyqBn3jTsmoEYWDSphJSNcZ+ufSVcGNC648Grj4xHXy56hRn4bu5ClQGayNwmleaP
	 dhf/Vm0jwqkT4dg6QUX/JfDVxbg+fQ+UknvSNh/QKgXBLA+lnB4YZoNMbjpzyXxIK9
	 OSHbAfAOoCG5Ka8oLIiV3R9mm+nVWIqc3HstkIoBg+yOIIbgJENc5I5+g5RvtjSU14
	 q0A6Mm8Ujn407B4+nA5ruQWClXUKhL41YtKoEq76bKsngENh36Hz4MT1w8g7m9a6YV
	 P2BVJBJmFQrPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3FDC3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174687779357.31815.14555647156003985665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ac57138b1de0a9fbc41d46d38c1855184b4e3c3db76c6190ce37a3c967b3189
Date: Sat, 10 May 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746877793
