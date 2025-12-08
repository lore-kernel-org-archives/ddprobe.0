Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E1C2D0C90
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 18:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765219974; cv=none; b=nZYvwEMsOZ7yysX3B1nYcHEQNHJfeHfM1XcX2QsSt8emmAQgCvhH+DAVHQpuAUgx+S0R/Ute1LYYnW4dgPhE7oBN+L9VsmhgMjSbWf2AReu1GM7CZB/0XfcIxYdS+tg9nS02eoupCZLoPUubLQceN7zmeVId8cdwC8bRsNGRSNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765219974; c=relaxed/simple;
	bh=jW9fLP8/2fAIfGCOhKybPp76M2jmjy8XslAq+fd4Bkg=;
	h=To:Subject:From:Message-Id:Date; b=T8Rh8LtYSZp/VcwL68LfVoCFIjK6Z3P3Nkq/uaKd0OxCO7x9n7fxtDGfPQE4KgOchDdeWyD4XZdocCQ1vZ/XGHZD162VzAFtAQQvTbpgrszeIamA3GnUYinUzeMGnS4d4Vc5dYZABTkifAn8EmI93RGZ2hMgFeUEQ5zQsAVhll0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kFU+v29A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kFU+v29A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F672C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 18:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765219973;
	bh=jW9fLP8/2fAIfGCOhKybPp76M2jmjy8XslAq+fd4Bkg=;
	h=To:Subject:From:Date:From;
	b=kFU+v29A9cDf/kB1IZatpgeQazMPLVva4hSqmVEoHHQSa1WC+PihqCg/SSOiFrtwy
	 /HFgMVOkWuOmCtKb1tkfFyZI4IsgTBpfYp7H0dqtLpnST51wWrTpoDT3CZcaLNTEPJ
	 j8b1t8gA/Th1keZ/YXUNJNsjd9WlgZeFr0mdQs6Wi5Oelrn4xYhmTIy4BmmPMoWln8
	 O98Fys/No5JJEnqJ8CwNmEGBzilXih3rJLxkA4r9weX9QVGL6m/Gh/QjKdfvU0JaAa
	 JVqW/FtuIMR/rMG446mDCOcst3FfW/SZyFWvdObeUeuAWgrsmz1gDHtgjRP1yF+DeX
	 34wfsYUoA0eEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFB5D3B7EA
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 18:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176521997358.13253.1639214933057200643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ea2e1cbca25a2b9ec812627f6024255f21fb1eca7ca8c4ab3bfda2189e50a2d
Date: Mon, 08 Dec 2025 18:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765219973
