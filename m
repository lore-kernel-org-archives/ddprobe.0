Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 378161FFC77
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751884794; cv=none; b=Du7+Kty6c0IE4i+kBOi+AMyDjg8mrxMsML8DuFPHR8nLuHAdUgv0dtauyKmrA6LGsRixNBTXlSuNun7FMyeeu+oyh+VdLtjk93DpjTshh9b4X18B3KNQkIEu56jJgtqWywXMjGCtFZ2T0SB9CuI2m7BHnYZgMlwZeYW0Ba7LB4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751884794; c=relaxed/simple;
	bh=61mpmN/3SUR9rnMDAFU2qOtJ39wG1GUh/b8MkEztRmE=;
	h=To:Subject:From:Message-Id:Date; b=MUzKXWPMWuLyeIUip9wH0fAqzB2HRtgxTxZqx251ALj5oXJFIYVgU4p6vzebAoMNGwNmroa5P6AA2G0JAoC3pNOerxzVTmqzA+ZTxoo8odcDD/67RX+Ets6ji1hNo8toXEQ7/d7VWw7Y7dzz4a8Pf5cUuNRPTtDUxv4MwUkOm0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fNZWIifz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fNZWIifz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A241BC4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751884793;
	bh=61mpmN/3SUR9rnMDAFU2qOtJ39wG1GUh/b8MkEztRmE=;
	h=To:Subject:From:Date:From;
	b=fNZWIifzlb1tjrNZ1WlX7kAwi3+bmgnHNwIYj6unj07fwdExIpXp9uW2AnMJe0guO
	 oSYhCtLhA0GBH+3hXs2k/HzbJzWOPiemiimgV/GTEY9SdhHKcFe1CFB4k2MOf1FOjo
	 9V2cJJgD0fuH4OenZnJ63JsQ4b3CdnrjeVfNyxYvqrpgIuwPRWhmedExDZKWuQebOl
	 3QMRci2Rr3xTOFidItZw3m6tO5hYhmve2DOxu/zPifbpB11pl25GjqH6z9+JJpR9An
	 RmM7VBtDMrKVP0OvwqPi6+U5+jrr7ma0WoAyVY+/gvLW34aKmN3WxqN1zuvxvppGt+
	 t5GRaP4fOp3nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918A1C83F07
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175188479357.22494.2305205133330354477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3cbcf4f71f6eeba1b59cb73c955389d615a8df7e8a33c7bc0c2285b35977a6a
Date: Mon, 07 Jul 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751884793
