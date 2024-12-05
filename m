Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D67318D65A
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733424354; cv=none; b=HaL41Bv0fpRy7E88mqTnCQCPHcmiwEb9OWzYz/w3jbrbS/DDcMV0D9WYBSetj11QoP/tkQe0foLNC7CsDRsp19I21Hqbvt1CBRdTsp00uPpmgHPaEVa53LFMLgHqSiTqAwMyDxaGy9bpHW5hLmM70GJvK97Bq6TShSSXLwV2lh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733424354; c=relaxed/simple;
	bh=5ZQnW9l7qJH3rYZesP9YoVYPR2oUl7/IMDTIIKf8IPI=;
	h=To:Subject:From:Message-Id:Date; b=s091w+hw+uX+eKPsB9yhciGFiYKDEqxAlJW6dtUFXptqjjaAS/6kkmYY5BJ07aFT47qkhQRhT+i65YmTMO3KxnM7Oe/10eGYWcYGKEZphFFiSPWYVhgH7TMiiNVlxU/rp9HXxkStSYGBNaajbffY0qQbHTW02WnHEWpISYtSjow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SA277YEH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SA277YEH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C275AC4CED1
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733424353;
	bh=5ZQnW9l7qJH3rYZesP9YoVYPR2oUl7/IMDTIIKf8IPI=;
	h=To:Subject:From:Date:From;
	b=SA277YEHMEGOLd76JRWt0xVmpGP3N8PhUYZYk00mH5x17ezByQXMUCZlusWncHiPN
	 6Qyh88FyL78qddBv+4mbjEXUwc0CRZAulq5GcSgVcyMJNfwr7WxDvn4mqz0bmumgVq
	 VgUKd1XuJeps9vm7z/QWM5+A0prJsE3vxOnYaC2d2ZZZ2U1xSmLGN48gjCTrkumZfr
	 SJlsaziBWViTUdFDzrMpYxA97w4yNqNsPQeyj0CocNjLniCawKTngQiJvi/B5Kssa+
	 Ul4scqhdwZP0HnERdsUXoPlhj3S7elhMy+iNZ4xy+7Pw+yE9zomwf70cOgiG95kQ7Y
	 EvnpMRA3VvCMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB72E77170
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173342435368.9646.15776499213160761689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f59facb6853917309d7d0d2a3ff3ae9b902868b0ac2fecd74d9581d8889a773b
Date: Thu, 05 Dec 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733424353
