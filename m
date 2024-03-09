Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F048C4A2A
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 19:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710011297; cv=none; b=iZ2Hpj31FbrFgXgHLAdzVeQSzNPFsybmUjnWBp3BHO8VH00IAPsxwTRmUP7oHFkd9IR8r6+U5w0mk5eViC2iJI+wJrZtDO3s9z+sr/POWAtthF5yPx6F8dWRGvmDxXqB3SZqBSR+lIQd9jCMVqskK5UuWywD068silY22l2LWvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710011297; c=relaxed/simple;
	bh=8Khj59xKBuYo5FCMwZqMuVt4WbLSypmh/PWviYWF8eE=;
	h=To:Subject:From:Message-Id:Date; b=lTXyWNmRP/v9TebvRUZjHwniJ73zgIJM2AwswHt9CFCoWhmxQbLEoS3n72E5SzG+G2N7tQbmZfMbIv7cg1P0HwG1eciJ+uB7oQz+AK3H1DdsN8EAxM7QGejDwtjiAanqMd3wFfNaPw0Ag3XBRtuqo99tGyI9W6h+GxMYzS7SVsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZmelNn0b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZmelNn0b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 764CBC433F1
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 19:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710011296;
	bh=8Khj59xKBuYo5FCMwZqMuVt4WbLSypmh/PWviYWF8eE=;
	h=To:Subject:From:Date:From;
	b=ZmelNn0bBAg9xbH+BovXNzGODjIBEjfqgdiv/fBzJJa3mwLlEKg2lH/zeJ8ojPlHH
	 Tm19RvPSBn5PFCtkAh1lH6R8uPAXiX6JCFTGBN0YKN/gkChWxFxjIK7O4+Z2dD2d0w
	 VGuV/QDpqHNexqcAQcEQGD1WgNT02tdBkrgJiag3BUbpPAp99ybpa/RQ+pK0yMz4EZ
	 cJUhLPSvALenOszU30tVKkrppUSpAB7GTvcI9w35ZYOC1yl50HL9t1BfUHkogR8M25
	 GTaLqtfXy5dlIwdeA9xkj4Tw5Xq3VJ9IurXKK/E31pdqDlFV9uclhGiNNEcXY9NaYJ
	 ZvC6v1I4/lXwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F265C54791
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 19:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171001129638.15003.7765931452087754247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80dc0323394a9c9d21256462c5f501ebb53d894dbdd83dc328555eb3282469b7
Date: Sat, 09 Mar 2024 19:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710011296
