Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC43A168BD
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 04:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764131573; cv=none; b=oJKd/J/XIrhIUO0Etihii+tBQdvaT5q3dMRwdcsBcywZbZPiqs6eA517mtyJX5GKDr7X4cUNYJEWyiftQZTlqEycouAeRexC8Tl9J1cseEXBGx7BWXiJRxzXjbkf1VrebneSUoH8OHX9/rv8cQuKGurnvAqG1jVE1IybmuUDbTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764131573; c=relaxed/simple;
	bh=Bmb55+RbLyuKCD+ahdRhG5EwxNVyNpXJV5t8iz/dLw0=;
	h=To:Subject:From:Message-Id:Date; b=Day1AD8eZAA+HSHJ3DeVAxFeISZwgJdSmu9r6VBxOA4lpzKMvxgov1KRQWTXH2Hb3PturBpcyYROQmw5Acew2Ae89GsFUvyMXVogAo68eF0wAmD08lLm4r0WpwJaDrK+M0Rtnxjk5ROJtjL6YndboyZijqADTKx0FzhsnAqkVJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q33yWf3g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q33yWf3g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A953FC113D0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 04:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764131573;
	bh=Bmb55+RbLyuKCD+ahdRhG5EwxNVyNpXJV5t8iz/dLw0=;
	h=To:Subject:From:Date:From;
	b=q33yWf3g6RZ9NGn/oh/nWtHjHAtk11r0ksgvUHQgpaaq1179mXbG2iCEkB/Tn+0Ey
	 Zi+YbeVZ0GDkQv+qCf50JaLp6NLGoumoExYATtRQuvAo/kbNw5i6G1+/nrefqFUtnL
	 u85Xqg2iOJ1cPearzGdNS9d6JtmA6YgjQFjnKP/Aq/9AA5bKAoIAAbvXsBsO5URcDD
	 D6+vWlw2yHqhSza0J/b56DeR9cIfg7U2ZavQ+ZOzB4ZaOhyp/r6XSfnC2jzCVjdbIj
	 ZvefLn13p3kfS9R90xexdP2W/bZQuyJ64YMwd5V+Av76/QMVzIPx0skcel3CkRdGLy
	 Q7ogPP5UubyOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917C8D10367
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 04:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176413157358.17375.16810836389967771543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a69e5423349ba1419b62dfbaff77e85ebdfffbd91c78cbbee98433f23fbe798
Date: Wed, 26 Nov 2025 04:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764131573
