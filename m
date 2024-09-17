Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A8D1A923
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726553754; cv=none; b=M7OX9ZAZ3+TsJ4UvgD/Zxuq8NY7CHy5fVPdjXfjCuVA76j3LbFdQUAsndFKmPE54BRw4IV6wjgdtw2/IFpa+dId6bBYZlb3sxJAML7PljnqbbCDulswuniXJWkfzXSsOg8RnAWs+x1rwCLr+F1or4cq6E7mlvsHFZ/7+P+1lDBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726553754; c=relaxed/simple;
	bh=8i1Yj+kqKPbqPB+JSW23xIy5dbGc4NEpAWn2E8IrjEg=;
	h=To:Subject:From:Message-Id:Date; b=FN54uhtp9iGEBCDoNnKb68WC6my3szLtRnC1Z+zVy5o5ZOt4cZ+MseBIxL573FJm43iZBC2HAWigJ37/gdQ9NfvkqQlfJ0OkpQVbDmM1xnPX+p5hFURXD0u7J0at3AuaFvzOp2MJQ6ApMn/zH0ydFyTT+cma6olDf9oaC98h/Tw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LkklFEr6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LkklFEr6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27FBC4CEC6
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726553753;
	bh=8i1Yj+kqKPbqPB+JSW23xIy5dbGc4NEpAWn2E8IrjEg=;
	h=To:Subject:From:Date:From;
	b=LkklFEr6fKQPZfPYmz0YmhYN+ZaXEFXcEneZSgs2+AiZD2Wi/pi6LTkuKVLGr4Rpc
	 89bbfdy+tlpkcVWDSSRWXP6QZZrxzVSk7bNG8+ZKazrj6ZCGhQe3qOIBfqyJWZ5Yj6
	 5fMf+VT71f3HO2o1p+8xNpOa75WPFDdSVMBxtTW0cNSC0omCOLtZUVCtFBFsdpCUpE
	 RnAezUXRNo7IUa/xT1Z1+c4/QyXLQv69HMKfQtYaYb1JxdGzn4c2n9uY41FtF4EtWO
	 +DL0znh8mKcUby5w8EIUdEx81lQvdvot2+KPjCtQWJHWC+9rymPw2R+12TwNEKxtl9
	 RdT5ENkgzVL7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D6CC3ABDF
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172655375359.28359.12374262962404078389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e1f904fed5aa8c72e9b599482ff48a2b46f31244e9d322c7a012a753f6fea9a
Date: Tue, 17 Sep 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726553753
