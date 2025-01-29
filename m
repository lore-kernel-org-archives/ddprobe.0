Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91B38154C05
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 07:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738135554; cv=none; b=JqFLrCDaZbh/yjEcyTuc4nPXWku+pCF89LN9eKZV4Or8hYBzV1iUJx+ayol8vVVEu/cqwHyEnHk4CKGcZtKQwp2pcWLNYE4aIbEwknKIv+dTU5EeCjWgxRYy0p+Ojplzvziyttw1ITB8TXvpfefOfVrOjVDiSMlu+GRLGQCB7k4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738135554; c=relaxed/simple;
	bh=6UD3gqxrX9+3F5ltQuzjH8Y3aiGh1K+SHp5yK85PzNQ=;
	h=To:Subject:From:Message-Id:Date; b=RffSP5NPIzkC+2YYGuKuO/2KvV0AOajLETBPJC08BMZF/PNkMkagMcCt8MDQMmk0CyFY08lx1o49Lq4o092EK4MlaGbsbP5XAt3kaYaaEeb9r2rqxmARw2aHW94VV5Z1yFoKQtV1rmbX5RppA6D1i+axkXU4qwVRc7AqQt7LxE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ljK324tt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ljK324tt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F41B4C4CED3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738135554;
	bh=6UD3gqxrX9+3F5ltQuzjH8Y3aiGh1K+SHp5yK85PzNQ=;
	h=To:Subject:From:Date:From;
	b=ljK324tt4mWtFnN0yiHwJtO4yRf11Hcx548tSCeJnZNmYX0xUN8Pf9/qTzwqCujWJ
	 wJT08teob2KPXG2oP0VE+hQvRFTVhg4wT9DietV4wkMMAXR+Lb7y09Uwai5yxtYNT6
	 tkNoO2MmYU+6cv4i/nJewrHLnbT0XSY4j58S3msgjiMcJ4x86bBLY65geOQZF0+CXJ
	 kbCjb+QQqBINwRFN569z94i+0DzzU5abIgkSI1XnuqogHK6ESTecaz/M1JnjJTOURE
	 yIe8DjzBj/G6kgUVfC8bDi9QQmLJVyFe0kwyLGM0B/X2vosp+SpyQGUWGcOMeqQQlI
	 3BEuuEoyBZnAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF9FDC0218D
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173813555372.12511.6110573577638759749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6154f02cf8539ec0b647d803d4f179fd337b26308458c05b100982433aa0aa24
Date: Wed, 29 Jan 2025 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738135553
