Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F19F231A23
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 06:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765347174; cv=none; b=DMYfWaH4eJzzDdF4+RKniWOTP1ac8e0FDPD4LGIB2NSa5CaGZnoKlEjJ8EJdyB+NqXpISax+xxpINDywtCPqUhqeWgVKIe+xFe7rl5vxHB/0Z39DGBaXLjMGbTWMhso/yaynh0FDJJdnk+pUmhLhm3Ao15LbA5wuR7hvUeO1MAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765347174; c=relaxed/simple;
	bh=7DdkAJffboCFhzBZwCBp+fanQK/QDLrXUfIK60JA31c=;
	h=To:Subject:From:Message-Id:Date; b=XcTHYxLAbPb5NUDaw6xELtfbSIDGKvPmPX/FHIwz4VaYlbqRbGGWyfrT+qFPq3I6ZZuGVXWDua4oP/6K1HQyi3vAfJuhHvqfduqVOh5Ah3xZTFUCRL2fs1ueBZPTa/lVcS6bECAQ/ZglKJC6EfM7hK6pl3sO0AtCIY9Mo/DFN/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aUI3rxve; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aUI3rxve"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5976C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 06:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765347173;
	bh=7DdkAJffboCFhzBZwCBp+fanQK/QDLrXUfIK60JA31c=;
	h=To:Subject:From:Date:From;
	b=aUI3rxveyLZ086QwC6aXNXFB/aGIy3E/k7lrNnOTXEsTp+WntE4VFlVH8mfnR39y/
	 dN7V/AWlwZmLicYZoE+FTSV/8YEnhmc2JGDeKpZxogj9qLZoZI5PpHWj3MUMhH8ASK
	 gRDo2SU4iU9s49H52lKKKmkp1+2wcK+F3Zi7Qcc9dVWd5g5ZV8SCm0uRiywgeq3eJn
	 UBH5q95HnA0yB6jZQ+gsuL5zNf2VJcTJfKDqYdCz1UM8ZwQLDh3S5XDinugeIDqvyy
	 jEIprIP8sg9wexKN0rGadjc6/rDFSTVUZ5RxvOqTOHSnXDTYz2O/1n+AA5WwRhTlVo
	 FqOua/x0k781Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914A1D2CE17
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 06:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176534717358.32723.14720635800380542808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11d4fb3f93c07c91c6a65da6cfa3f1c646ae44fce5abf6d4a6a6d38d3b4b297c
Date: Wed, 10 Dec 2025 06:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765347173
