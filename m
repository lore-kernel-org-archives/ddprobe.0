Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15375409131
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 16:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781540794; cv=none; b=TQrws6afhc3Mu6knmRHbQdD2Sw5M9TvLZKJoyrq8sujnPkdQ9aQaHn4gudAySrL90EiUney5/bxP0TJy7DbcLUlT5WPEh+0GEWP6v25kr4F7bkQeDawrul27fTm7BPqmxsq3MaQOIUmZm1e2PEUYY3AGXp1HCwOmaInERAlh97o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781540794; c=relaxed/simple;
	bh=bA3cOKOvGGx/foGxkgxBsOfiuAv0BHJ0U731Kn/dLYU=;
	h=To:Subject:From:Message-Id:Date; b=qaSa7GxA1SBQRqT3znmc1WCrrnKEskub2ZF2xGFlHD3t8WpiouV8iqumiPr/CuW+d3S8m7YMM6h0XyPW/zwp1lhrCMUfP9cPBnqSC3pl3OujM4wIaK5ONQACIiNvDyA0LRgannCjCxBGklRfc/6XCbiiXveJHN4Fk6LtnT2zkSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g1COakvn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g1COakvn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4B5FC2BCB9
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 16:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781540793;
	bh=bA3cOKOvGGx/foGxkgxBsOfiuAv0BHJ0U731Kn/dLYU=;
	h=To:Subject:From:Date:From;
	b=g1COakvntHiPLmWEsNTfoAMiiyCebbN8pjQKTiiK4coHNdipWdiqVi2vPKlwiktH9
	 VXB8wROktZN3TG1QzW9JVT4kkuu55SPKKrmNy2g5+36qsQaw9zGGoRHE3MUFDvNrTU
	 ah0Gbne1WC4aDGZDxubuH7uugLpZvc7OW9f6d1tfmbi5ivWSKJW1K1CJUumbaKGTLz
	 1w0a7jw3Z7yFYJCGdjcmpSie/+0JS6aXw9ehYh3CiikvQMvQoQMB5xpNQrOmPj88EH
	 bk3NpVm23Tc+Zevl0PtIDjBZKKuNEhwuaj77kDtWxGChhoCNUJxp2aG734rnso+xF1
	 RiMx2qNdsQBKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B60C1CD98C5
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 16:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178154079372.20689.7291430261954870758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20d8e3f3f855956e674e425ba24d4f0d01284d771d61e24fef383caf1543190a
Date: Mon, 15 Jun 2026 16:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781540793
