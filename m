Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B650368964
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 08:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779955954; cv=none; b=QJsz/hbH+bQ62sH44DBfCCARtElIm5ONIl+sYrcjNol4rMMvCh13ojH2DCjIXNrLvJUaCy5I66VqBrdREN5rkAY4RbAJhua8GQba3uqydaa+lT2hzOpijXC9Hor2nbS5oGcJ8f/hs678bIt2iqG4Loarb7xUMa6FdJyYvzYBKr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779955954; c=relaxed/simple;
	bh=l4UPpS/H/2YtBOgjizsuKZnk0dqqbEuAZXSQ7KtG/Mg=;
	h=To:Subject:From:Message-Id:Date; b=IAcVWT8A49qZ6GiIPbzCA/U+WHwaCmbtZMmNj+gSN5yYXjQJNN8NqYbNMH23B0/BYDEvCF69+6cuBvcbPHwSU7tuM9ViczZjB0HzYSa7FNTiHyx4z8te8mDf3xF5/+oNKXMzOt6rvBfw1+sSehOfCEIrEp+49V5aHi5FpglIX3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nbzoztV/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nbzoztV/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF325C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 08:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779955953;
	bh=l4UPpS/H/2YtBOgjizsuKZnk0dqqbEuAZXSQ7KtG/Mg=;
	h=To:Subject:From:Date:From;
	b=nbzoztV/DykXnsYKQkMP5G2OEZWGYUnj6FqGUX1o1bcXQwMU+fUspX326yN40VgAk
	 HL1ljnhrsaiX83ia2UrkWLZ8wtTHBEL1TDJLSmPlLaKE6HmMw8mZpQeM4kzH2Hi4CY
	 eMSU7pmCdjIGEtEkReTADqCR3A+PrITnASgDzWSuYksoOjh7svunon9NnZSWMe+e2p
	 C6MOkKfQLuz0l4Vq94GXwuDNFOMJdUkLPp9UXbxRse4ApnZTZGCmfKK3et9jlI1sLw
	 c15uxSdpIEkOd+7cyrB+Xj1TBfIVpfMM223635upQm0BFiyH7aTBdkEiKHD27hZSip
	 8Ha6P4QS83nQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A87BCCD5BD1
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 08:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177995595368.4209.6371379300487646345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12ff198125d6f5c440d700011c895959326e3eb5b780941cbc17a49d4373aa6a
Date: Thu, 28 May 2026 08:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779955953
