Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61CAE1487CD
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736541954; cv=none; b=Y5Nwmw0E8PpOsY+8jbzU79FgpCZQXF9Z4R11BdGdNeFB37KMkXaKfgvjZrtCp6wmCoz5WjJYLXs0O5lcOMLEF7O+H3E+QNhva4zTlipJ0qVSLPhaJlIoomEqwHxtCjVQ5rkPe6vwn9IF2fRbc4UE4K0fQPEm/mENieUOG/GwOzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736541954; c=relaxed/simple;
	bh=cgFEIZpyMds8+3bYwlsQrAfcC0VLzHn9GIkvjarlRO0=;
	h=To:Subject:From:Message-Id:Date; b=FDbVQ641HMnB0LbNctZ35DEYeSLE4HGf3Yse0RmyUEDOrboTFZXeMjgJ7dKmyuEOU4j6RSvHtf5ClhMfoj9ur6dRFE9cBMnap1Ejfc+oFpKPERJtxPYBQLMKfdtVuncRSjypDxzKbeEkwYSzjoJpiBzDNVQkUnYMJ3857QHZabk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LZCMYAh/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LZCMYAh/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD055C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736541953;
	bh=cgFEIZpyMds8+3bYwlsQrAfcC0VLzHn9GIkvjarlRO0=;
	h=To:Subject:From:Date:From;
	b=LZCMYAh//9hGffrQj8r/dcQ68UrSOSXBwBNLH5RGMaB+SfBAzUJ30wGN/FMwFf94E
	 rDuygLNfQk3EI+9lqVJxqpOnSsSwxp176vrJX9ROjjAK5EO1q2h39a9AkhYNGgRSjD
	 Omzd+kfmP/rJHjuacJ18zCsN/9W+3GXDdaYo0gzkK6fJjQqk3U0YkzV/LkQhGVbdNC
	 LPSQc5mFcmvo6zKMTjIQMaQNwsyzXvsMcYaxFOTJDWxsLxHqFeYXGDj3fvCAbhi1bd
	 RhQ8WMzRLyPlox8qxd0eLD1yzJ7A5q/bbMUWR6f/6jGTYhlZyR1Ws9AGL5byTvA9nf
	 LtVKrIfK2KNAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC98EE77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173654195369.23291.16221951255783227917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d423ecb16408475f4d5e1592ebecc56c6e1572518e9cf049fb66e493976987a4
Date: Fri, 10 Jan 2025 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736541953
