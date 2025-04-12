Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 513F3208AD
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744429796; cv=none; b=QfLdLUq1xDQj4Z9GoawHuqMRc+/ZZ4LAZbjfhlJbnaHc/2ybGI0cKg9qqmjQ5EdutggENIN2ufAtP4Aex08rZNcc0z8yQc0OwuamEDJ4Iy8TQlE+YDk8rbzYPgRERN77Td8i6aoD00Pjk20OCkNfjjcd+K/7x96eVHPfDhiW18Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744429796; c=relaxed/simple;
	bh=Q3f2Y+4a08cCXsFC0sQRoVqVN2GDvnxmy7/+J6mq5Kk=;
	h=To:Subject:From:Message-Id:Date; b=rUrHqDFDwIUCWk02N4SfU+/iGEbU7ddCYqk4UX8KpkRHycJe7K05NO6kGop9zoqI1hAkWNiY5KUEcmIXuuWg4+ivdeYaXwnE8aSNQ8O8eD0KxjfrEBXqZNzqPpR9yjJM6rOXmONr2EMH7vyGLaMtkLp/KO5CvBEorYrIAw1OCsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M6RcI4Bw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M6RcI4Bw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5AC0C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744429793;
	bh=Q3f2Y+4a08cCXsFC0sQRoVqVN2GDvnxmy7/+J6mq5Kk=;
	h=To:Subject:From:Date:From;
	b=M6RcI4BwK1EkVdkyOlxleSHkuyhJc9U3LftJ4GyBQmwAKfbZ8+7d2HL+MrP/3zfM4
	 86+VIoaRQTLRmoNNKo1JL5E/LhaVfjlCqIutF6dHQZKOhBH8IfNl7KVubd9Lma/yaP
	 +hg862A7BLJKY2k12AfKvQzP0CL4e3o/mRWGNkKaadqIQNF21U1cdhmsrJYVKeinXb
	 zJHybBpzCgrND4e+FDsRSIscxavudw2MbzOW94/4SqOiCC0Vaxu+Lss8HbxFVwmBBL
	 mozHqyhpkAqlu1nc8wH1m2VRMaAFIF7L6tbf5/5kQbxSQn+hnO3glqtn2JmUt85B9f
	 naPq/7jWbinOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A14F4C369A1
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174442979362.7323.17822200133539364753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57c31f3b8f35f914d9374dfec2eb20ca25e074ea774a6f4c844c05d6e909988b
Date: Sat, 12 Apr 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744429793
