Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F4B535C190
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 03:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783653514; cv=none; b=qn5b99NkxhJxUJFAtgZHWZpu0d4A77KlG4Fgxi524pnUAl6EWq8chQ5bpYARiAyeTdzNrg5hBx0XS74dhhK78ggGN50iU2zHGxusnTknwyjIxvXYGPLg7JE4okbMMp+f/fKJx016031KChptJ94BjUaP+CBEuf95XbNmefPKRKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783653514; c=relaxed/simple;
	bh=kscTcFwQthRJZsiXGXcy6A9qnXBCVCRFLLcwW0JywNg=;
	h=To:Subject:From:Message-Id:Date; b=tJo2YZSaQADJH4OYwaNsYugi74AQxGWY09l+Qky/pgfbJnB6hAPWgcpGY3bJ7Lkl/GoKWbVhqgNUzEecIFxa1GHavkr8XLcOLzssayN2u5kdWT2zdbKXK7+3XbqK8AVwIDCR+EVnt2PUjTAPRFK8uQgniRThyp4U93iU0sAaUyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HWH005VS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HWH005VS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C982BC2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 03:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783653513;
	bh=kscTcFwQthRJZsiXGXcy6A9qnXBCVCRFLLcwW0JywNg=;
	h=To:Subject:From:Date:From;
	b=HWH005VSBNZi0MjhRsT8CJ+LG2VXRQ+PpolDt9OvQzqiiQFFPghOQiU21eESyxmXV
	 I8WZJBkQsjzmIj+Z/AGXh94qfAKbpi4Hsu44uYZ6QODHs5JdTp4/DZrzONU6koHbMi
	 u3eemE86HZ9aHZc0fSs/MEapHe9SVva078nNjjC2/tdbweCmKhqGtU6SYraR9OutwK
	 Z8o77BDCgPd1CPwe54XapMrs0vq2qLo3iApI+YVMIhQwNCJgIPlGFMcRQPtb0iWbJ+
	 GPsI04wBe9XKGFoqE4dHchQIVxXGk+tDzMRt9k9KB1BQ2ykGPe8560y4FNzfnTWm/V
	 tmLknX6R2lU+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7CFAC43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 03:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178365351368.16419.12634054055106250858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d15dafa1e9ab2f6c98d0092366de2e1c8afc28111f404dc6b4b317d2dd9b0888
Date: Fri, 10 Jul 2026 03:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783653513
