Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B60417993
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 04:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782362254; cv=none; b=U+L03pROhU2015mRlJP3UKzWV1X1ncuvKK0VdVDSnyzS6WlyjCrhJFydHE5ZvtCIB1n6jS/+JYi+0AWJSce3oF7wCtHksH7rGYvNtLcfuNCv4vAFItV+U6bOFRXtM6EITQyh8TDY2oWh9/5DxoYiu4VFq0zt/tX+qR6hgBS6HeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782362254; c=relaxed/simple;
	bh=hfD1CWY5jj4mSVUVNtD3wgr2L7wK8oCbhnx3f1DCkbk=;
	h=To:Subject:From:Message-Id:Date; b=o4ADBwsIPhUQxQHRYa6d0xBv9sM9IftmaV1Zxx/nlS7Lyr1KI2o0eeDu5AG+wdtmUv9A2EVwr6rGWo5fQzE80V7WzM5IUGU2q7a/zUOJhjRipix5/mqpCV7Cd5eMPCVziLJKL51WwDQ9OCKth9UNNjGS4vVrYTngRaW6/fyU4gA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JGJerFGF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JGJerFGF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C918DC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 04:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782362253;
	bh=hfD1CWY5jj4mSVUVNtD3wgr2L7wK8oCbhnx3f1DCkbk=;
	h=To:Subject:From:Date:From;
	b=JGJerFGFoCCHMcwQinUsOvuY/VeTKr9L5Lxp1r7nCXt1kpiDcf8+KUg0r/LKW7gmZ
	 HoKlzHyQvXI1zAKXEJ6PZKtJZ+c+EauejmHUTlUIM8+pRuI4ua6//mq93aL7/bRrxc
	 cPFm+7tkh/AFX1PZRlGD2A1qkBpkBTRhf5Gxy+vdS4VpgtCeGg82zguV+iTSIsqDr7
	 I5AGDIrykUeQ0+zG+O3H+NCj23CIlqhNtugm/tgkp+b2u25OyLI/U8AHDUql16iall
	 ZtWIuqkh3xya+n4SZi1jcW0t8ldiaor0B2/s7CPUv3yJrQ3WdfzKogz4uNtpngKWKD
	 oBDoliVoAgE+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA667CDB466
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 04:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178236225369.15503.10300719507726035421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8edf161839f89dd4ffc1d3501ecfed8b9f5b6883149d259872df17e26103efda
Date: Thu, 25 Jun 2026 04:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782362253
