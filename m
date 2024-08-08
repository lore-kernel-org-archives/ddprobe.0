Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C9A729AF
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723079754; cv=none; b=TbQwpU/Y9Fa/I5wbHlx9oAe0kpbfH5NQCAl27t2MUcyuBCNEw5NedX+x5AEbbB2JxNI+OH5nlZqPj0lOcn4AmUe/UB2Dnwjd09SK9t5bgGKIEYIq7yw+0AC/tyS5vDphFnBxe7/NfpyvMYXgt6+mnERUxzyI+5iy3KrHxaQsSJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723079754; c=relaxed/simple;
	bh=9TWMyw+bF6q1dmKZ4+RWYYvoy0DVloJGtTAg+W/Y/xE=;
	h=To:Subject:From:Message-Id:Date; b=srfssJ6Y1EK+589mzOI0T9Fk2ItAjYJ2ese3L7zc/K5Lytm+csxIOBOUs1qOHZKd3yTkN+lvtpnfNgqwQSpMXi+HPBFWZdi2ArARnmeAJ4hxxx2GyzOAGahtSXMWZF8W1i1p+XA9NcdP35Th+cN/dsoE6ZrNn20TBfddnRnzTZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rXanD05c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rXanD05c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2684C32781
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723079753;
	bh=9TWMyw+bF6q1dmKZ4+RWYYvoy0DVloJGtTAg+W/Y/xE=;
	h=To:Subject:From:Date:From;
	b=rXanD05cwXzyokfWgQm0O717Nsr0s84Tl/mxf20sISe43fOFCIJiNITKnCI3DTLjK
	 IK3HNzk71ck3vzQFWY34xeeqZSDxRMJb3RPHUnWFK9K8SbQ0VOKQbp/ypnFPueVr0B
	 geHe4SmHrSFJ0dudPeBt2eqJf+S6GPeevIxcZblIODmORowvOPiVqKWTiHXrb2vQKe
	 l7fonr8tOxe0OD6p2O0k9DFiAYoJ/rQsoxrrEMgROwGygxYWKEmQ1LWlssCvaWyD74
	 tRzS2MAZeUBqXAEfB0X8Ali7xfblaunKpIcsWfLnqCl+xYLkxXHLBOZHKE/HgxBHPN
	 wd0lgEnX2Qrgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 998ADC3DA7F
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172307975359.10122.16050114985014934408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bacb62efbc3128927b89be0d107b09a6f81e355c976d53fd5ef0a73e3928f26e
Date: Thu, 08 Aug 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723079753
