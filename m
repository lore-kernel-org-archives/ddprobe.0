Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB5FC12AADB
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 11:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707997097; cv=none; b=FtmDrKThBy5ZGIaFwhnHLG4003t2Y9kcVYN4tRahTmK4dBOM6vT4lk5jVFYnB7QmNGyKTePbpTAYmDv89GNVH35briNCCIc9a7QSssZwi7z28M6JSyzxwDj550XaTdFbxaCw1tiaLY2QSQqmWiV3bbvVvPeLKmF8crNeJAKX7AM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707997097; c=relaxed/simple;
	bh=u0oBmgOFge5saTFmabsB2POr1ZQ+Ok2aUaLhAfiA9TU=;
	h=To:Subject:From:Message-Id:Date; b=qHgD3vFIq15Vtu3HWKPu5ettgnLKF3OE/VOOTzgJqpxmYt3u1JPRdVBQcaULIFbFYZM9ttCrjCQEelNmwO5diq9/88KAkgKhAPrzGXr9eEJPRbY2XdM2rZXfkzPlLhLZ1RHvZP98+8153hFCAJ+c78n/84YUsOiEOmdnAWkjWDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=akYoFajQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="akYoFajQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77DDEC43390
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 11:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707997096;
	bh=u0oBmgOFge5saTFmabsB2POr1ZQ+Ok2aUaLhAfiA9TU=;
	h=To:Subject:From:Date:From;
	b=akYoFajQEFu0oBYDdssx6gVq/Plq7f+Bwu7jI+dbb3xb4w3SJqtOYMwuG8tSTj8bG
	 7hdV41Bc+jaRZLhVhgG8/+bw4OJJRfWWVW1oLJgySGDMKWY990XqpDs+WzjGrfGoNA
	 +czZGSRjp+tCqwNIl3t87v7hGZRrEHPJZHFur3r+yLNw8+WqDI9AxqgslPbDA82Jcq
	 JFzO8MSH8xc5bsGI1HgCZfNT6EcJbTik9ZlY6wG/EvX1Vamrdeiwyfa/ocl0kpnac2
	 o1WDGzdwTQfyylRMulqo/5ePv7XlkHAWVSNwUGmheKb/oYZ37hazv4+kyxeg29hdM0
	 FILlTRpraZsQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F50EC4829E
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 11:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170799709638.19860.14238145237955857262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 697342697eb5854714ca7f305959e01257029ec22b6bae794553f68c73186e06
Date: Thu, 15 Feb 2024 11:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707997096
