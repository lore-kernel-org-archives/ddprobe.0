Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3649836C5B4
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 02:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778553634; cv=none; b=hhtpieqSLqh//uwmZdMHeYxAcGcLQawILzXTM3GkZfPsybeSXa4UuE8blV9pYfAUhUvjBrDZek/obU2nboMW7IYGrTg+R00+O3IGz/qpc9955Z37slR5mCV/ep9rxKoFAMjAFYcSCsCzP3SXA7K+ylMWyIQrOAGBwIDawKy5zoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778553634; c=relaxed/simple;
	bh=nr8KXKBcMZunWDHDk4YN62zwdTdwRLMa+vwwzYm3uIY=;
	h=To:Subject:From:Message-Id:Date; b=tqUaEZPP6spa4Fv+r8bOELd+a7HQXMYfnOP1Oop0+bEhA4U1Mi5NiGRe1yY3mUITXKlQEhafcS+RkDHb3ZHLG6ImlO5SqpY9E3+w61JjNV4UhhT9XCwkglWFzKFePP1P/RL4RxoL/8j1Wf3MdwQEClnAG1huAx7QtguNYFgt3Hs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pZLm/rx7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pZLm/rx7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C659BC2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778553633;
	bh=nr8KXKBcMZunWDHDk4YN62zwdTdwRLMa+vwwzYm3uIY=;
	h=To:Subject:From:Date:From;
	b=pZLm/rx7mH8xwKumyafwFpxgQc7FpUgdgofob/FrKIH32IIJbrelp+4H7sZiQR31+
	 t1fWMJOZ+GaNjHbUB4jaa9fFdz1DwGwsVGRwIsYCACzUfyumyq1vFid++CKMQBD/KQ
	 rrWfgz+nHoRYX1RlqEKE+6FmACIX8dXtXBrbtaf/dlNMYzk1bAEqnClPhduW+9jDVv
	 93Cnq/kXSKJQ0oLcJvFWWaaVz9sjlJpQsoiukcTOEDiP8uZtlhOwvd46g+HZVazLN4
	 24pib/dAFvgFAfOWjas4kLVaDofqSkpm25YWl/sJ0YsbVs8UAdzyWUx/eI6rUdBxJM
	 bp4IeuMgVZhuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3411CD37BE
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177855363369.2005.3017745067932282499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13d2d85c8f8c08fec8c9ed3f2341db119d59d5c9dee67264efc09b4438d5eaf9
Date: Tue, 12 May 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778553633
