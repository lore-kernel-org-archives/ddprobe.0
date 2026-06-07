Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50481224F3
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 04:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780806874; cv=none; b=WXUlKnwar0VqAdR8wccXUfSTxTHUdc7aCqMTc8Hhbu9jPPdrl17TGUjZbIEzNfbUcBnN4GaOIAzcJRPUXfh98WB0VUVfVmt4miuHZ8CMn3fjuZZZcKVlWH9p1uEyDpo0RVYby1F1F4HY8t/dWGEnwgH19nIoeFjTSj6vEhBciIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780806874; c=relaxed/simple;
	bh=hWz2ycfyrS0WS7gI1mHhy6UgrXel6EOmhTrol+dPe20=;
	h=To:Subject:From:Message-Id:Date; b=oYgKTUAV10w9wt2MT1wSnfKebSLutPxpuybaZWjceq0y+kwmdNMETEgFqaqDbQYD35h5Kdf0ONSDQ2NI7OpaFj4OWoL6jDMt4DrypBxHE9TlJDM6ojBkV+BiUGHICAP6nmfVr3WvT4nbGwur6O40Ud1VCYfldWsOAbfrHjArC7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n/r8MlQr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n/r8MlQr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7CE5C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 04:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780806873;
	bh=hWz2ycfyrS0WS7gI1mHhy6UgrXel6EOmhTrol+dPe20=;
	h=To:Subject:From:Date:From;
	b=n/r8MlQrSjIq54FwsHpB4tm7EWI4E6GfMnxtYBvKLWXk5xH7tWKZa3ZpTgC8uOfhh
	 mb5IgutCN5ygWquLnuKRMSIkkjwdgDTT+pjnUrJiP3gRhLAnS86aD1argFE83fTrQc
	 v6IQe2ahDdyeDXbjMhep6/6nnGbrhuykEIthK5u4wdPEHOOQpurUpnViyYOlMD9vai
	 zb77F/an2bcT/+JWrqBH6HtSlxtvQgkZiT6LJCEuzio6b8+d9sSCvAfdJ6GrHe4kOa
	 +bbOf0OEDKWigM1NwxhWRr4RK32f3VpW8wJvzj9O1fYLfUnQzMYUz0ZJXkUWjqRUvY
	 kha4YsELy+lDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC52CD8C8C
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 04:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178080687368.22266.17872734943116814346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90db80370b6a5fadef9a0f1afc7e7641ad5c2a1bb45f41c9317af05958625e42
Date: Sun, 07 Jun 2026 04:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780806873
