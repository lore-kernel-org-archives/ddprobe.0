Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C2FB3F4DF6
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 10:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781001334; cv=none; b=amBtifvYu9uyxAS2/nSQw/EuEVloh4SE41T17BzsjQfs2fLwnsOGStNtfFxeErqx0Q97ibQ6ZhyhhCWv4xSBk66rRf2I3yzQbSJvVjhb9DRaHE/0QklBjvuT6U6ACn/+xoT7drCzKnzfNNT4dlpFHjuOGjkeCFcJmmWCB5AJDY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781001334; c=relaxed/simple;
	bh=D1XTHx2GY7fM2NPmBfTAvRn1vCt18efadmt/Ko3105w=;
	h=To:Subject:From:Message-Id:Date; b=dLhkpwBo+GGSFohsnMd6yTFZGrBtowsN1blLvCzJaOG75r9y6oQjH3kcv/HzuLe7XRX+kVs2wZNbzLeAt3yJDd+eMln8ooTcKDVaChE3C8KcwiH+lVx9gOAvQI09yyaSddd4kBCt2UaQGzLi1bfDZqPi+0nQY98NilmxPrmXYC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mS4w+tro; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mS4w+tro"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB1A5C2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 10:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781001333;
	bh=D1XTHx2GY7fM2NPmBfTAvRn1vCt18efadmt/Ko3105w=;
	h=To:Subject:From:Date:From;
	b=mS4w+troGLJxAbPhxZW8a0MgkiWM4uVjOIzcIPCwUb9FNS8wG5aRSHTw44fY08IEj
	 rOXqhg1a7J8slGwfQyh+R0DsMlFjtrOkC70/0EO6nqD7hZxcJqhdjQhsCGN4iJZ40V
	 9FJ7C/GKE8d86WTw8hk+NQw8TuRoFBVxYp1JRD5bXmEuK6X0O9eO7mJxn1bveDvJhe
	 KM8WHSEgfLQ3tctjuQqeNfiqVVGQ47IYXBQKVrfPSzGaR6W8+wH2GfOP0IgYz/9G4Y
	 P7TROhjQbYKHRbRwV/e1bCJT5+1oTVAxHY5/TBXKkuI58feICkqG1fT5ob6b6HXaUa
	 pPH2TtMawkfpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1FEDCD8CAA
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 10:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178100133371.30051.17546405671754423031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a18492037c547f2a5ae338a2b59b736f8ca32d93f7bf9e2dc6d643315155ebdb
Date: Tue, 09 Jun 2026 10:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781001333
