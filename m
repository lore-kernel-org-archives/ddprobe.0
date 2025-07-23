Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F7111F4176
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753292994; cv=none; b=ZWO3y5e7rrKeup/Q5+GSkUlyPx5RwomhjHWK3SCwXUATuhuNoKOusEVCxQrd0Lt5tSRl1TFPyrtTKIa6wrOQpumydkbbN54WWxkagdB0hldJTz+RdXWg8awO8jmwcqkh6LkmJ5ySQDk8u60i89m3G5wXczjiMRd8oCkKnh4yAgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753292994; c=relaxed/simple;
	bh=4QSiPwfu+beXHbcyAzLCGNu55k22iqqZURiNDiUYlao=;
	h=To:Subject:From:Message-Id:Date; b=PKWTv5tX2cwIdOzMRW785RwG7a8/x9FGD59zWLmAc/unVfoFbxV5AC7I35tnMTnOIemfdz8r3yhR2hoUHBXdmQLwy3uY0rIr6o6aJuq9u2K5cCI1yk9dEqUlKmSwm74GORKMv9XFC5S9bMlHuZtR3XLKNTpmiE6q3k5TL5/qEIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dSVZFiVn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dSVZFiVn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D73C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753292993;
	bh=4QSiPwfu+beXHbcyAzLCGNu55k22iqqZURiNDiUYlao=;
	h=To:Subject:From:Date:From;
	b=dSVZFiVnKz52bAtltUVnhUQGyuivOhmJV5Tg+qL7H15PYZMFz6spBRjdiXW6q20oM
	 iJRxIvbVbYbUUK3JKSlwYxwB6ytP4WtP/tD3Zx5oALG+qnEwEHQgMTtY4fdbKIs+Eq
	 8/NGKlKQN3e6WQZSrUYeS9uA+8yXX5TjZp7m7CJErNtFvau0pE86xCMM6ScL07aShv
	 GMoJp3hBQxZQXLKndqy0t33A+vU9BWQgvR5+R5EXgoJy0wqAM6B5SGqy2gAcipdtUG
	 p3V5ryqYU7LJ6vnod9hE1S2we+VXgFGToT1G36P7mqGEINOJNb77KosdNgxsoUF547
	 yfmeBg+0ngd7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C90C83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175329299357.21880.203576285790241155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10f39909e69fe75901e947c85ad56b1bdd949092ffef17e6344338f2d232b42d
Date: Wed, 23 Jul 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753292993
