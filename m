Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB502973A4
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745344795; cv=none; b=cs3qOzX6jhnMDNHxJ7dwv/DReDz2owAn8h4B/anlfEGzbpAVFTAc9nPvWHMH3OHvXncQ3MQKbroDHy1sErOYRSFUZw2KyZp13oc/OdT9dvrrhOaW18wJZfPm/0vF/jNkesMJT3YlQcXtOAjl35O1k094nK6hBVrb4+SiZoAVeVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745344795; c=relaxed/simple;
	bh=7B/SN981LWKMrTtRhcORUFIoK8yRiyY20ZsC8xsiCnU=;
	h=To:Subject:From:Message-Id:Date; b=oWR0viH/NhEmNz3DhjNMD6nIyywcb/PTpb33hZ0aZrbd8KkSJXDWrz/ehQlY2rFMcu5JOoOmXndJQtc+WSdTezgJt8Oh9HnipLHS1lpIQqhvyWzl+8lxUPdacM1GgNlpolA3Vw8aq+NFezARnBxASjjefvXUdUd0SyCyhPh0rgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S9Ehn0bh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S9Ehn0bh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A77BFC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745344793;
	bh=7B/SN981LWKMrTtRhcORUFIoK8yRiyY20ZsC8xsiCnU=;
	h=To:Subject:From:Date:From;
	b=S9Ehn0bhu/IY8afFPYZr66hM01o8Us8aNnuQWXW6Y9zAijU2qGpD0kUtebv/TdCaH
	 f8swrE173DVHe/oTuGIvgd1Iq89Ib4m9XZ85p4FVGLpEIXdV0PIU9/bUOC4VKISiKM
	 3kbwaysBTuf0nMtjHnFYUA+zWxUqogNjcQZmHtzN4Xuh0OekzPmNI2A6zQjVngYN1X
	 BGe6bMr7+6MI9a2qowwno4jUwazcpTjyPtfngsHhiV5Joe3do38iidnxz0nvNIdFtS
	 m2teiIUVGmFlOz+1uAJYZi8K2THxREx0mN5gO38gGZl7V360SIinH8B5xx/BhpPrq1
	 Kn0JkZc9i7dgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95024C369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174534479360.18632.4773346830428515883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8983f3c2cc7e834cbf7eb0b0b10c28421461bb788ca306646e2624292b1c4400
Date: Tue, 22 Apr 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745344793
