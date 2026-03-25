Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C749E82866
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 02:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774404293; cv=none; b=jJzEmvCoJBaKKpi9Fh7tixlfGcnJW3rmJ2qkgvDR2DPRjUVnKnlQvz9K4c5Jt97p4sn9tWuIkAGGyIi2cJqsVCKq0FcAqdbf8wJsJqj4dhl349o79wARGsmeemMDcGiwFI9P8TuDZdC3p8sA0TSmowtlXpNSayF9PXmXoidOb18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774404293; c=relaxed/simple;
	bh=e95mLojFEn2xreSCZKM/6LBADcEFV9vVjR9zbsxtfRo=;
	h=To:Subject:From:Message-Id:Date; b=ukpu8tQLHYVhN0LrV3VXteR+uRYVsQYiMVE4x2QEwqTSKH6GGtrtrabZpTeOxt3uN2qPYntXQTBs3BONwKPcya2iLpwgjqtmkmBGm7tH3QnTGp6zyUshfXAXaE/i4nrSwpViYHK2R+ej2ADvXD3j3QEw1W/BJmxKmZm5oZVNsN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HE4/V6mz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HE4/V6mz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A99F3C19424
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 02:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774404293;
	bh=e95mLojFEn2xreSCZKM/6LBADcEFV9vVjR9zbsxtfRo=;
	h=To:Subject:From:Date:From;
	b=HE4/V6mz5OCgFPxGIwv58rIYzQGva+qjiIlK3CuQoCsAL47zMmqJTa7AlNz8zViAe
	 PmM9SgJc5ppUfAcwdEvK8Ubxb2oGeWWAkSOt1ArbBOInusEIoQEL/MJp3N7O/CTOOk
	 wTu1GRBE0Sietm3aa8MlibSsiTXaPfA0QYs8Po02O4FsY82Owlbf1q/0Ts8xD97ysS
	 759EOWWhTa0sLodQumKrk8N+8U3QICFT9YKxwOmDubuTK9FYPjCM5JpvJCNE8P/pN1
	 frXv6nZjnqrIWFj7tTXevmOD85uqyxh4lnZqKzpw2HnRlspPkOzfPyeoHG5wREWfM9
	 3yeJz63kLRsww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D751093168
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 02:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177440429358.21675.17606420940197814108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd79f647913f6af3afa53580b043d653f1786b392dced13a02aafaa30a214394
Date: Wed, 25 Mar 2026 02:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774404293
