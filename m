Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A21730E0F8
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 02:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774579494; cv=none; b=AcPIMWZ3J4BLJdyKweyqFeLoaKH7onXLmGwcvH8cX+hUui11U3CbaCE7HTbLQ2IHyKgk6CKvanCcMdXGntn0yLWz3KfhYJojGxkFW7lknARkl3MtX2A52efH32mZH/D3SPGzIj03PzwDAhdMh/myO97UKMEw01ZIAS0OhXdSfH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774579494; c=relaxed/simple;
	bh=RukdoWA8RjGtiwOp5M/sXvvVWbPmRsIO/LBJWuE0DIc=;
	h=To:Subject:From:Message-Id:Date; b=qGngYUpSDqhNa9Rk6SC1Bu4/sZr8QWg66RktLlle92/rOqj5+ob8x4sDBnR1k5IwPhdnlhyZJKmHJNtra+sAz56okCXMxPult2J7sCjixezmLc5Mo49iOSM2Qi4HKLeAUlsU7JllH2qvSYjUx1LlMcFzqO9VoZEhtNLo2z5qTAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ff4/vbdU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ff4/vbdU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8ECDC116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 02:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774579493;
	bh=RukdoWA8RjGtiwOp5M/sXvvVWbPmRsIO/LBJWuE0DIc=;
	h=To:Subject:From:Date:From;
	b=Ff4/vbdU1A8IT9S83j2pUx4W/mnvfe3UhxCvPzYcrWWlrZmCAllXu46g/1oYQSt51
	 Nwe0HXV7zMJotvbe+9/AMaUExm0N9a8lHPhM25hfO5ChfuWZdZWSxV9bh/NqPWMSoR
	 CIzHycZVs3+Cm5Pr1q4gbQBZPvGXgP9cDDziZFmLOIGwiJBbovJ/RJGE/5CD8xZkM2
	 jMHgF/3/X84H4Q9LZOVbFJa+VVccnqieXO1gVGCFZAJ1iYFn5EF1n8166Ohw8pz/fJ
	 gdJYWGW/5xTNp+mS+pe7uX/l/pvSYP/rbEKpuxFOFI7GLZ+F/9DeRkJlrraOta59kX
	 SYr8x4VEmr+2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A199610A62FF
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 02:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177457949363.17974.2756537718634861218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8459b1f7b0fe8909c0d5d8ec2ce19da55e902cd2530c0acbb733289a16c9964
Date: Fri, 27 Mar 2026 02:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774579493
