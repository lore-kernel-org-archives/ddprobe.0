Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 587D948788
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 07:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719558263; cv=none; b=YYZ564pQG/3k+VhGTAJIb1bEwReh6DjCKWYifY6lhHwMmbLhrzBWUry7xH5/H16RSE8doQC+lrRVN2YwY8ryTpzpaqV4u+fi743f8T/MIxNVSWqKzo3k9Mm/NfObuAhIwH4OW/ZpK5VVU1hBlt7XGKOouMkYmCzCFuMjoYwK+KQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719558263; c=relaxed/simple;
	bh=gfIJ8WizOVijHAuCyvK/6IvnrbCFgueiITshDQGOq3A=;
	h=To:Subject:From:Message-Id:Date; b=LyjELKOybuhT0yuzbbDxkVOTldal27Bbb7zFT2lQBo93t8hXI7/cxekNddoU6xEiyrY8sHh5SG08s4FSoG3g0SX2yCC8TQpUKKyb7/kWxxOLrHKpgLVYrVqidG9IVqGfIuJJl4r2ZRDD1CHC8+1il1ZYDyHGgjBn0OZUexzocRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ny9r3+Cj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ny9r3+Cj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D464CC116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 07:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719558262;
	bh=gfIJ8WizOVijHAuCyvK/6IvnrbCFgueiITshDQGOq3A=;
	h=To:Subject:From:Date:From;
	b=ny9r3+CjtCwaYEsHgTTjA0Qw79sQlkRzTcnUk4gqJ6oj6NpWuFz5vQdZyhy3NIouJ
	 PkUArtz7sD3w6HJkI+cM2m7RtjObzdA3fO5T2myuAlBmWsAUA5bWacU3Kh46G0szFR
	 CrzgD8PtCFrbUXn1dVzHwF2zXnYHMXDF52C0Hx6282n6TCgyQvyypj+s6lZhiNY9YS
	 XQgTzvIQ70HnRIGtIFnqVHwnFQb6ep45ABmeUa0yJ2nDIqihB7SroSrLKGvfv98ZZk
	 BWLtlr3X+kYFaYQeHhwwbWZXhczMuGRV/DcOkGB54AIrufmSEPMsqVAukpuHCwk/1b
	 UEajJCIgmjOfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF92FC3064D
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 07:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171955826277.11953.11664878669184096819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dd37538263fda303a5dfbb0d52d6fed883f207d45fc43b072b31d63d4b1aa1a
Date: Fri, 28 Jun 2024 07:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719558262
