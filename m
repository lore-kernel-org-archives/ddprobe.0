Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 160D1211A14
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757279394; cv=none; b=XWLDXXMK99jvhwm03IbDGNFvt5+s2Gr4ruzHB0yZ4c/R509zbWtIz6GyeLTbkkyJt7NcLPqH8mzA5ltvrJvAIKKegxgYPaRWu1mNHaFI93M+wHKPcp9V2gF2roJnDL7HXmuPZmwT/d97eSFC+Jw5Fn17C54thmTNQoZ3od8y/U8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757279394; c=relaxed/simple;
	bh=gqYoGMjJvPt6jeKnP+VQlx4JMRssmMwWwpWMCZqm8iU=;
	h=To:Subject:From:Message-Id:Date; b=nwQqLYCsOJyWX9iQINI1gdFDLftwxDfCeUpWB8pIXq2EfpWKt/da6kYIXpKdr6jWe2P50sCOe4TzLHQxynBrjIAk0c3CUgd/WLfmVB/3KEiwWK7FvFM6wi7H/ErzdokQEMOqxSbPr27XlYlF6180kfehc0lknHEvDV2IC/mbgUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S59KPC2h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S59KPC2h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A36C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757279393;
	bh=gqYoGMjJvPt6jeKnP+VQlx4JMRssmMwWwpWMCZqm8iU=;
	h=To:Subject:From:Date:From;
	b=S59KPC2hDH5+EMoDFz7gEhkIixnD5i4mw24TUmOtElHbaOBk46mWikn5RrXs0Va+k
	 ZyjpxHekgVazGfKMaIbQtA6oqfZO4tQ2lesFRlbU3mPFttPwts6yjdGcKw2NAWc6gy
	 voi4UCX/Slg3758qZ8T3GULjk1ugl6Gtf8Ey5tkeEw3s86L1QDKCjdvQJFQ8tHWlvw
	 pInV4F3rQYQToYKbS5uXudIP3o0XnICe2y0kiEgFHFM2imSUFKMJZk7DE+wnDPEc6S
	 yU+0ZTsBtfw1bSoKaEn2RVGRBz1ONqkweF9wKE9e1ekwDZEVnXMYOT+pt+Hh9niVyf
	 alNNfoVrUe+jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D55CA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175727939358.19414.15076613043842420186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0426058eb296f64c96799b39b2f5f2e4eac05ef5ff57e92ca82a725067f55dc9
Date: Sun, 07 Sep 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757279393
