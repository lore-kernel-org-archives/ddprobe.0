Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A37633CE80
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779305434; cv=none; b=G3lzfmCdsKLrOTyQOA+moW6k9ti0UryN4o9ffEdTiwJ1F2CQRLzby4trXnukpo9tbd/KOkPM0D84pSQrVoYesmAovse6EXPMbvCTy+XsFmhwuDJBx6gugRUbuvJ2zAODuDzIOpgwxedD9ImS4Tzr3J8VpWDapYr1qjcH0fnHoEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779305434; c=relaxed/simple;
	bh=2nn4UtAJ10CGP1YTpc/QjBaiYGY9o7Rtav08/YJBeHY=;
	h=To:Subject:From:Message-Id:Date; b=a49tpECfpLcGKSQv8/iixBoD9WFdO49RuQeISyVxs5C/QmOl7B3+oHiUW70KEL+but/uJfGztOlal2RwS5YsSsSNzCS++04GR6aHNqDf2rSquCI7DEzK3iV5RMRFYFcXiedGARx9fFcJwUEKLg+J0e5+VPJb8c2sRAH9KQrZBJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bL5otTDy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bL5otTDy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D28A5C2BCC4
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779305433;
	bh=2nn4UtAJ10CGP1YTpc/QjBaiYGY9o7Rtav08/YJBeHY=;
	h=To:Subject:From:Date:From;
	b=bL5otTDy427w3cOmfRkNd8vn4UJDE8Gqa/il2zrcWXxF09vU7T7yGrxbadLsvTMva
	 bTeGH+sAoxBZqP9yAwen6f/RsDAw79HAUd533m2Xa8/Si2s777Qfy7cslGb/n9KbCs
	 iiQN+Nx+wzDmGIiIqi0nOxOJNJXHKk59D2U5Yp6oSrHi6azuU3WT6a5HO6B67jfNQ9
	 6SPns1M+CCu+yn3GE+/7nzOkptHl2suFKM4d6OZHR4v7OyB+Gk14WUdbd/qp8bVrmU
	 4p5a8hnEu9HIrAM6HuoOeXowBLf6Ta3B5LCmVQbfHcyyV4PtDISlpCyh+aA0Cm0Kxm
	 rL3ORoOjsAdVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0DC2CD5BA4
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177930543371.14127.652344018721445878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e1fcbe844046df31a3653e027b568a348286b4d15cba780ed7c26f3316c55aa
Date: Wed, 20 May 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779305433
