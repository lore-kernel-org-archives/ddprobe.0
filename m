Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB5814A4EF
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721819754; cv=none; b=C/iLmLcjSvZ8I3yBK5tVTCBDN3smNmaZ9IU1x6iX8lSpYRJWin3qu7TM4GEZO22J/eP8I6UOSvgGjuAGk0mbtxB5oOL8A8FyQuobKvM4VILbTORaMLIGvo/eTJpWkJfqyudlj6Fb2+vWDXSv0ey65r0gtj0uspo+E5ennUEJSTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721819754; c=relaxed/simple;
	bh=IzLU4vlfTWxBvtdYNO6Ez8v/rBIx2eLOBBMyItce9A0=;
	h=To:Subject:From:Message-Id:Date; b=R7u1XtMqowFe2AYHFEY/RVkFp0L4IFN1HCnNaDKmkXOI0gGAETFY8KcqZawhJAnNYEm4sdEMbu0ftLgyGsdPlXayDDXcqNqIgbeg7SxYOn93UYiGT0VfAwxWirMAGGm2SY8iCWt2xoMFXOTp6S0/059YYZWpTzcZ+adIkFoRSfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XTciQsdS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XTciQsdS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B9DC32782
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721819753;
	bh=IzLU4vlfTWxBvtdYNO6Ez8v/rBIx2eLOBBMyItce9A0=;
	h=To:Subject:From:Date:From;
	b=XTciQsdSaA8PYn/5FvshbksszY7LMhTxJ3b1Hv6Pb1ln2QyW34lPvMhQzzMRhC4Rn
	 ES4K2Fz/UXQPelFujN519sIaCDg8fwyaCiNf4MbvM7USjaHb2VXydTwkSVKnaW6erD
	 QSaaZH3UCuCDYaVMYB/kbqcucnOe0M9HBLT+aHE8a2BullY3WrEh8+gc2flnhvAtO6
	 FFbBKJlvkQA+9mzmfjk1PHdC4IW9Ch9aKCFCdTB+BgqOwrcCXA8trZjlZ08CybAa4N
	 renng4XYPiHNaczskHnmciAv2LqLfypbFRluyuhG5wbeilDWgKUaDbYNt55iS9KMNm
	 XLdUHIYDFVvHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930FFC3DA61
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172181975359.22501.11402421396535044484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e74e0d99098a52357f81efc0bea2b85b82a912b249816a9680a95fe3de78d8bc
Date: Wed, 24 Jul 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721819753
