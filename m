Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8FB158219
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 21:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715895143; cv=none; b=XtRJoniGOmv63IDqPJCFLHmm4bzIsnPoF95eJg+alKcleXzkRLsz+70/j2PuNkJGBv+C+BTWUTR9Unje89ZyRypqOOmNaGQz4Eruqvg4R8n+OH3gipTsQRlMe6XS6tUPhPBK4oWDVWBNczBUxQJ5jBi7fW5/fMAiRwF6ghvVWPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715895143; c=relaxed/simple;
	bh=LArgHYsIvVyUYI9hvAEJgUGEIXiwemy6vQJAvSwdP9U=;
	h=To:Subject:From:Message-Id:Date; b=f8bAdCoCFXq42xlLJ5iHTSDK92tSMD7dhs3TquBs8JyMuTGyxG8ouhOjFFNOZ/sx1IKoKLIw/uu/5W34QJbvhX9thhq0kaf+zBHbVdBgie1tKVP8BlDQcUKUlHnkfPaii8nZ9DgdQeW4NGQUu30oIcoipqgGyAPr5kYgHepZcGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ExXqIM0K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ExXqIM0K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF8BAC2BD11
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 21:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715895142;
	bh=LArgHYsIvVyUYI9hvAEJgUGEIXiwemy6vQJAvSwdP9U=;
	h=To:Subject:From:Date:From;
	b=ExXqIM0K9iv4hzxUDP8+QP8a7G7XhxmVQkGRTL1PwRueT5id+AbSOfxVN214OA0LP
	 UUeSn+s+QTLNBD1Y5jzjB8f4i7wndvSGN9EgwIYKC24lhLJXxeqOxci2WSfUsS7syt
	 7JL6jxbSr42lOAiLSyH0s5fwL3LZr5+u+NVsjd1QuF/uiOr04rrzzl2IUd2Qid1n7e
	 /NqRWQDlGbaFRbJVj6RU2RtJJqzHi0j3v9Qdp/ZXIGwevOVsnCH+OmmU7gt5x+SR1m
	 SyVbq07YWm3SpYLjyiPAWeRIrpiG4H+4qIoGwAE53BYEWruRonWHiJDfWcWEJdJFTJ
	 szKo/tIa+hcWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBABDC25B78
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 21:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171589514275.32481.178834489941477248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3224b1cf055434d8807e98d861e23c5f5c66e5d7822399775f087f2963fab715
Date: Thu, 16 May 2024 21:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715895142
