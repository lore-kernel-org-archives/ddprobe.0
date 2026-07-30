Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EB812DF126
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785388234; cv=none; b=CbHtKIFwgsSblrWNdV0MewC0oXWXWw249HQjaCl6xXUwNFe4/cmKkj4OWdHoPrSGOYBjmBBJCOQqcsoABjP8F3h3lXjp3to0+tnJNTln6L2AYsJ+X9dzrOT+hWS23AF2czpdp7rc/fFPsqLAgnyFONlkvrSNskvs9BvKfa/W/iM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785388234; c=relaxed/simple;
	bh=uhMiCpTzMX6Ik8MVgm3x0U/nzPdk8X6CdHTQ1xZqDa0=;
	h=To:Subject:From:Message-Id:Date; b=Dyj52hYvYz6/34nYcWp24xpJ70TjOkWk4b2ejkWYX6fh9GGQlCPg8KhlGWp++Jpcuj0lJeQq7IMJpH/w8dI1hmr3P6HfcBSkG4HDxUxkgtUTywy52Agn1iCAutJyUScSLiZKDMqc0podp/kf8Iv5hASzcLP5LOER4tOgzW6I0xg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BaOMTtl7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BaOMTtl7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6959C19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785388233;
	bh=uhMiCpTzMX6Ik8MVgm3x0U/nzPdk8X6CdHTQ1xZqDa0=;
	h=To:Subject:From:Date:From;
	b=BaOMTtl7hIli20fD/f6oFP9/Jo+lfpb3pwP7Ysky0NaQJ/39o2rDi/uJFXjN6O0xz
	 56WK8Smg5c02vbeoRD3+l++YZYlWDQcpv1EFexOyH1xyoy8tYVwryPPYicjYM5hQf7
	 2ghf365WtDLAju6ZN/sBQl+T/Dvv9tu/jDWwylSrEHh6sPzl48VSIPe1ED+J7y6DDe
	 5DK/X9/6CoIOhnQJ9NfQyy0v6sXvwrRtFEpQwTHnsy4C+Xz2uF5OxeVT6lw3eo7jJH
	 keOnONlABuVWTLAvmt+JAHkPGQSlZJ5ueYkFOStKV1sAm82OO4pXYvE/6p9bjesPBX
	 79CS1wuzvC92g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1D80C531D0
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178538823374.3694.15714383186738887319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87acc3177b229c46cccb1e10dd6def88e729a627db085670192503de0e020296
Date: Thu, 30 Jul 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785388233
