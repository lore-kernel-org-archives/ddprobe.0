Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E5D018733E
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 21:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715115743; cv=none; b=X961uawUCgdwHt4BNCTHNCzwz0mkZ9SppTetiE0W4R0qwJCazh+rqvmzCsTLfVeUA1RqdoBZ5rIj7w3DDt8gpeOFSBWvbe3amMJ+ob8HNeDKRoRerodrfmMhwG6uJSb7c7OzNGOWYsjS3A+HO5wBD6sYi3rwckTD87ghfOtYgZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715115743; c=relaxed/simple;
	bh=KRdoHT0thyXaNmNxmROIcoCroETJq6ACqtX2Xc7UEz4=;
	h=To:Subject:From:Message-Id:Date; b=AhXMaGaaVynn3MasHhYmNpG15k+XT5KdLIwyjDV9jjcXvI0KfxbrV4u2NjnI70Zhs/Fm0IB3yP/QLxhxAnue8YKixk2niRqTfgSwSKdikkAtjoGe1Jx0z4f/YBIa30i1j6LODxJYDkAj1+mBm1Ykhf3NNJ44g+WX2xw4WYZGjSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s9KM6kvh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s9KM6kvh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9462C3277B
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 21:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715115742;
	bh=KRdoHT0thyXaNmNxmROIcoCroETJq6ACqtX2Xc7UEz4=;
	h=To:Subject:From:Date:From;
	b=s9KM6kvho+Gitjogv/k1W75FsgBte+H682hS+v973U4dCyt2AdAq73UEohZT/lwuk
	 t4jCDBrrDpkjZ8CsSBJVe99XiEk5TcSnPT1TqnK+Rz7BQbge8q2jCUXFrq2cnGMxI7
	 yyc3kG7qApo/9ioPGL+4MPeo/q+tGCnOK5k6rwzF3XMeFlnnAy3SsXKOLrdQ4sehT/
	 Ql2TAtvS5q5CpVwaV5JzeCjXNv/JaMLNqBDinR904Lh7MWBTO58zLQ1rP8HCNpR4iV
	 jimz7w/Vn0CGQWOGYpiMdTDAi1KD6qM4AyRB8FwTEVWjX0pML8PYWHHn+MTgTWRAx9
	 AMoM03NblF2hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0BE9C10F1A
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 21:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171511574282.31384.17981966031236512068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 335b5e63fc433706ab977f74711945c8d7735921649199393cfd0e90de910cf8
Date: Tue, 07 May 2024 21:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715115742
