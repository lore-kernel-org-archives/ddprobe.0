Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3729017996
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735790154; cv=none; b=Xe/B103zvCmZZD7wotKZLBNA7viAea6Y4Fxk2AfY4jLmiSsoVwKDQ+gIf/Ps4E+IrvV1/T0oDt0XUZptnvc0s8YfhIw1l1RxxhcjmC0e+9M+cWJ1DqFU6cc+fg1Wk9i9bBTF3oMtWHBPDuN/rDsIXJLYRzsTG2BC6IrH9Sz2BUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735790154; c=relaxed/simple;
	bh=US42HF6jSi5jtuwfnlgvArjXtqCVIUiq/9+tOjCTtKc=;
	h=To:Subject:From:Message-Id:Date; b=D2VcdayzrsGV6pB9YPx3gWksVEJO7O4ETgFjw/xYVhW6FTzP7l6MHz1xJDhplu7ikM5USrMlO86I826qfUzFEyjMN4+ieOt2zTh61v/ZL5/hePLPnTuqRXWIXiIChO/x1HkzAJ2fIzMA8vj8qDhUD658qAS4R7NwtRU/rxs6jos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BJ37B8mL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BJ37B8mL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE494C4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735790153;
	bh=US42HF6jSi5jtuwfnlgvArjXtqCVIUiq/9+tOjCTtKc=;
	h=To:Subject:From:Date:From;
	b=BJ37B8mLgsMI/cDh6X6b+HyA3smQoFd3vwTSlp+eOUjQNgJZwiBuyymu3aLdD6pnL
	 szDVE2W2rYtBoRPTtKRNqyEuf9srIL0Vw9jbGn71maoHXvtjGH9O8Z3GQbm3XLs+Ge
	 449+oKEgaPWzWlvFjT0bXeSwEbyzmKmPzlUSDyPtZoJqzVre0RxhPN41G7q1j5F7rq
	 3TumaLy/hvfSWGxnwpF0HS8dci7eOLGQuhkeb6x0Glk7hS6JGTuINF/NWUTlbPM3j3
	 u9NMHkEXv2UHdpZL/VBEYKcmel79KgfC4465dMWS401adk59HMdRGuv5vadULYEfUv
	 CY6Xvqbe2Fumg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 975A7E7718B
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173579015359.14746.15323727205025437949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b947bdafb8575ed997db117399a23bdc5933224beb3632e695d31ee9912bf7cb
Date: Thu, 02 Jan 2025 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735790153
