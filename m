Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D381F91F6
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 04:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781498794; cv=none; b=eLh/Ze9VKzEhaeqi5bDb8+Vo2EFNITkfhbKyefzRFz9LnHDrfe0nGdDdmhC44s98iNJv/RBCf+lZfL95gusQw1Ta5MKalce9Rt6aOc2dJ0gv9oP64wpgHdsbwSFJVEDGU9DVixdBeA4HwXKfA+hLalrl45wf6H7rEpl0BWZRsUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781498794; c=relaxed/simple;
	bh=h9r9LexjlLhys240u62WziMdxzZcsS2XTToSiONob0U=;
	h=To:Subject:From:Message-Id:Date; b=LUnT41Z3LX44QzuYpZj+lLksW7MzCxoY4FzH1YQJQc+DOmskeQ7P43xbC23UMNXym/M10UyICagjwt7rZ+zhrx+dU3SchwYRMiKcPmGhP0aB+FxwjMFx2qTJ/PfkJerC4XIr2nsejwmiqRQLHsmW/WEw2f9r+YaP5RFD/K9DBac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pSvgvmJy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pSvgvmJy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA7DBC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 04:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781498793;
	bh=h9r9LexjlLhys240u62WziMdxzZcsS2XTToSiONob0U=;
	h=To:Subject:From:Date:From;
	b=pSvgvmJymJkjiqVuDLOoclY7Yr5KGUjhD48/VmnaLXh3LcHVrs/7Jw8MbStmb9eby
	 IB0nk/4ADK4aBalNd1+XN4mWbXVSEmy1iaI9ZRUxa5ju8hdJoQcojVA74K1Ij4Mfs5
	 glljOTT0uJWHsWpYZNJkwvavNiarqsOCmPLDwfDUfBjTN10FyWc/op5LzE/BYlWw2S
	 oddLYB/7Yd4GSumhKJay/PX9Umnx1VApzr+xDZ1FIN6mwW12WvBg0AFt87MXi8AwGA
	 058x9zw6xPJ675ThCWAbZhcUUhTtzvb1b7vPlJYKdW1LAVfZ1x7CvMDvYTWeVs8ri4
	 TMUWVunTnb3lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF867CD98CE
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 04:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178149879369.28973.11298820109535265464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee1714842e757cbe9c4c4061b52457c494e58975514bd5ddff0cfa7c7baae8d8
Date: Mon, 15 Jun 2026 04:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781498793
