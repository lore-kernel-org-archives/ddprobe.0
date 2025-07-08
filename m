Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 272F1249F9
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751943594; cv=none; b=uCZvxv/7UsWhgldY3mhSfaojdODAhtdtlhTvM8j9x3zAvJu4BTPGhsxM6vpS7LZGYFJxMBqXh0Z5rszWlxlNYWOLWy4GOrd6LLkLhSDcEhZWPyWfPovzunBCGRXHkMtDZQr4WKh9Xr3rrWRTDsr+WdRq8xjV2VP486vjXCMPNbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751943594; c=relaxed/simple;
	bh=bvIdoxzw4nmhGQrfWZN4zeyoO0JciJMAv+xuwQarnok=;
	h=To:Subject:From:Message-Id:Date; b=UTeOGlF4mUcZECLYxVbzB206UbkDTlwdXLEJpZExHA4cH/TGaP+pll270v5MhEP37vindB+tWDwfpEeVGsRw/s4CFshWEaikMXHpsXjIk0d8NV3NyDAaqPayirHEF0SL35ypTJIXbNxCPrPTszkMWwYiCttMA/OvzhMRZuXjS9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nLmi6Qso; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nLmi6Qso"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FAFC4CEE3
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751943593;
	bh=bvIdoxzw4nmhGQrfWZN4zeyoO0JciJMAv+xuwQarnok=;
	h=To:Subject:From:Date:From;
	b=nLmi6QsojKszJFuoOi5FxRJaLBXr6sptmG9vC2PPPyZCu4yU+DJupCLSyyS+5O2EO
	 9+NSZ9PerTJ0tPjljqtsKkLetTO0hbVEzSolE0K82ZkZe8YCMV9tttCykl3QAi5IDu
	 EIeuzqRD/Bzl11ud5uZjqoDGS4PhdmBaIL3cUzx/6eGW/Ia13ui/9QTzP0t+73NVzk
	 UolHiO6fJogeMGVJqZk+TKyYiQO6/1xpICfUHYNE5x0hi1T4fe+CYIDq44sRPJdJd/
	 +xx4xtK9L/IXJeRw0Upt7YyD1ZrpuUMmmVExPmZnQDpYq3Y2odkFp5iYrDRQe7ZOGZ
	 fBcVKCF2hfWHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBE1C83030
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175194359357.16284.9081884577338021660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54cdaed282e9c0f9dcf573bd379c561fd4cb2a3a32b5a0186fd56280043a7c11
Date: Tue, 08 Jul 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751943593
