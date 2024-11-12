Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E0631EF09F
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731372954; cv=none; b=L5f9HXlBYkijYd/rCpX5D07+rp2J59x5BfiKjvdPp4MJrRWRfpan7Z/6Q3ELKR7XEFQ0M1h35CQHchBCpseFqvsbjQIm9+MA7BIWvOPH6jmdmPtyk/OVM8+WcD2gb3oINZj6hvr6EuLlkxxkGQgG9R6dZaAIeKeGHK73TCJ1HPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731372954; c=relaxed/simple;
	bh=tU3AsukVGSysaSKUSrc15SCKBFegG7svgA3ZV4vOOmk=;
	h=To:Subject:From:Message-Id:Date; b=sC6ay+6pLu9M8RzwzDV32yIyseBs0FYm1casF0zV36G+3BVLI4OL21NcH05yOt99OAmCzgz2oScVgPpG/wFZd/OpljRMu+Fz/2yzBBzm4ImE3Zc+OnjAzGbigvb16FJpXAVWEFmwz0vcu1y074rVdYe/+DEdRCKZUP8v7LSjmBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u6UjLuym; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u6UjLuym"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8032C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731372953;
	bh=tU3AsukVGSysaSKUSrc15SCKBFegG7svgA3ZV4vOOmk=;
	h=To:Subject:From:Date:From;
	b=u6UjLuymNB3ok93oXPsRGK84yVibNmbUkpXS+H63/cgh4qrrqOYKn3/Hm0UupRdML
	 Ocx35RzT6YcYYRxYUkku53JTSsuchXR8DuFw+BHb8ux0HZTsoD/XMJc7ew42/nZVnr
	 YV0NdfE/XmVQob4au3BXGC/wugU6czrsGSuQbaFKGkNxWMs055m6N8LfS7mDUYZvvV
	 2bDU/RaJWNj1URuoB3FayzRhIHcoAH7s7O4FBYgZWhplF986pwB5A/DjVsatN3JnrT
	 eBRhA829iTah+5cMW0TeWkWbpWan5zDo0ol/qaiI7NNbR7ZJkyVZHtKkyYkgJMWgc5
	 SvaakY/hnn8tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D73ED41D41
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173137295362.5115.2949039394041315260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f90dc158a8561c6eba9b5e4ecc40ee4db9cacb590eb8d32549bdd5477442a93
Date: Tue, 12 Nov 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731372953
