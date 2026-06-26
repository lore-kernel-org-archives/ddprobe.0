Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF1D25785C
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 00:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782434854; cv=none; b=gqcIyV97M4Vf8hfWjWpobYh+BfXVQk0nj/YBql5298zBoGPrtKRdYdwGQGySz+lCKgINLu20ZOfQJB2766CAsjQKCA3uTtnYfyusJf9LFMo+SNZu1o43GuL/Xi40JStI7FyEshs+6K/glHsHTTALmOIkloZMDPFtWC5ose38Pl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782434854; c=relaxed/simple;
	bh=KBCFhSx7rp2Uce5OF8NtwTMExQRh3ADdpmdWPT9/JX0=;
	h=To:Subject:From:Message-Id:Date; b=GcE59eTconc+lrTC21I1fytFZ912G9eXwMp1mO2qyBb7HnHXg5Hk28OWQyxWE0rQliqD3/M/BCyH/q3KfGYi34endne+fRNzCm6yvuiDFrdmO/75ByHm2qc15q85reXyb0L6/o6ysEz+3aJxFGHBfi7fjDmf25BXkzZfzeEI5uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U0n+Hv5W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U0n+Hv5W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C49A3C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 00:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782434853;
	bh=KBCFhSx7rp2Uce5OF8NtwTMExQRh3ADdpmdWPT9/JX0=;
	h=To:Subject:From:Date:From;
	b=U0n+Hv5WawwBqgZUClmxiGeUN5PaIxHXAw+wVJe+x+c8f4jyFoUhV0zTFK4NuTfTS
	 k0Gg2XBZFyWZuHLZh7lLzCrmvWL35TpuFyATwZ2O+7yadL+1gaSHTxOLUwfWTS7Jai
	 ZPqjOew2v8E0xXoYNazk4Bah6U37gPAsdj99+k+LjrtFYPzdY08sI1scw4Fd4JPQl9
	 FKdLKDQILfEYy/NFDq6bCbHWlQhkLB4+GBEz4lAxKUbz/Qay9XySIJn6+u47xX2OAb
	 LUl+Rh/Sezp4jsjFUyvZOHT44xJHr7GNoNOJyiCwm+4tXEGCtnMjY6BlpHWUGQvBvC
	 F0Tpefb79RL0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA344CDE008
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 00:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178243485368.26694.2814937737779782898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60ee68798dbc2b73b869d0670fd6450f6251fd0ff96b9d45441e30be8789a86e
Date: Fri, 26 Jun 2026 00:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782434853
