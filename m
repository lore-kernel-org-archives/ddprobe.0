Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAC4A343D9F
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757602793; cv=none; b=LheT8Bj8Z1ms2ncDGwdEaO9DoLlQJemUAEG4mB3UfFGpWS1hdGddqrceqgTOkW8A2yRz2vNWvgMrTkSu5SEsV4g6MMSDzwQl8NUoc6ZXKZd1jjJmDUM8NFgrALEUdKMNRC0uHsYZykhhP2+ENo/Cb+yvzfu4FarLeewR3E0hOw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757602793; c=relaxed/simple;
	bh=z1k6/S72YhiVfE4A9Gj0OzPkD3nzwV19B5NYpRQLyAY=;
	h=To:Subject:From:Message-Id:Date; b=sgA4ycAGEN7BahnHIg0RC/HCH5+tzwABwS0sOykc/oTW3Ym126irU8BbV8fiIQeFRZrqIM3tYuIV+zZwOYLU6on8uQZL92ae6IBRtH3SFwissBcZHvwqFjWA7GEaWqTYpi+HyjGZWj5+bVIQJBfHXLchKa+mQSPIGGkf1D85A+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WUB2Aev5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WUB2Aev5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC2C0C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757602793;
	bh=z1k6/S72YhiVfE4A9Gj0OzPkD3nzwV19B5NYpRQLyAY=;
	h=To:Subject:From:Date:From;
	b=WUB2Aev50h3i8FDi2rm38RsHNwBNfNhO6YncgLnQ/rQefxQj0V3WQ9kPNyZ4TVNug
	 Bp/6WONyRNF1ffsIflVrDcDwSLAxaZAVnIhgfpdmx8/gTTFnBSNoctEMlNpQMotwGW
	 jVpb7lAAdDrDu8wbDVfLSfy9OerKYob6ASr9Kcz5LgadmnYhewH/0g11moVxpjf2/m
	 gYgF3OFsABaZeJuYkTkO2FQMIbAoh4WFJc6CVHBq7T01tSTU3CB3E29PMtlH5K0Su0
	 9NukjNDFZk2eiv5a9O4N7S9lOY8gtu3MwKM0Gf5cYL5fVl3q9SXUFBZPZB/fwEvnnL
	 nAJeps22rn4CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954D9CAC587
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175760279360.20407.2328721792151759488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5efaf63655ae22f1ad3c00049b2676970dbff4c9f71ab5eeb164d8fec5fb26be
Date: Thu, 11 Sep 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757602793
