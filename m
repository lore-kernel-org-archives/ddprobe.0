Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F76B4C650A
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791546034; cv=none; b=SJxrNN+5c1MuM4klp+3mrQepG0LUIgzAGcgWJLfq1BxNy01r/layy+NfzqO6m5cj1BG+sQtnojC3AIkNdxKKxCERjgB0kfE3tyH8ckG7bjyiByDnnOztoB3lNGqKc2KHN0qTg9dl92GU9l7MlcjVINoyRWdR0/O1aSP0QFu1VVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791546034; c=relaxed/simple;
	bh=C7a8c0bQ91zk4jAHENmVrxuesyXt/N5xhNOmmO/iyD0=;
	h=To:Subject:From:Message-Id:Date; b=agxvcEm6ddyjUet6rzyfjahsg7upAfxNyRrOijLAxFdT2FGBd7s+XSmbXwCqn4o5+VRYwXdGm9eAyOhPYGNvqHjw+YlTDCSSl+XUGSUyHfd5NKf8nz7BoDxnLuk+BLc33HnLtVMrTo7CZQ1HfjDRgniT/x7xPIU6QbT5aEZm2CY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fxpochAE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fxpochAE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF15C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791546033;
	bh=C7a8c0bQ91zk4jAHENmVrxuesyXt/N5xhNOmmO/iyD0=;
	h=To:Subject:From:Date:From;
	b=fxpochAE7hnMwW8d8Atw8o4eksPKUCePXbzUb5bZ3br34p0JRg2c3LOncl4IVlHGp
	 wNxqC2Hh7TP+S964d3CqpNS9eMmNaNC2rYjYY7IKLe4yRlnfRM9RuffUwH/cIZsXSx
	 MTlh/EC0YVSTdEr2aA+qoSxfXwPVlZWX9HuBqwASH1gNy+Le/mj428Wqyhc4c0Cx6T
	 DotANHtcf4MFaGl9wlcPY7Uq6SM3YOC5WGuymbtY3UAmkIci8Ab+Jgx3+vWCVv/MM/
	 uNWt6zMTNWuje8SpnqF1ngDZoBTQ8SFQ0wN24jITxkZe5Z6NNsS0N95ErMo05oMj8m
	 sr8hE0teZmdOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F42CA6018
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179154603368.21094.11238250019347654778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bff7ad0ac544d4a877c46399aacbcc44cec150824edf403d3e628078ac8b094
Date: Fri, 09 Oct 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791546033
