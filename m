Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44E2E51A726
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792092034; cv=none; b=ZCpj0EpEcu2hAzuQ3nJ/xptQ5afMznUZG45iteTxtW4QYojFYhQI0UEcawoymhbybwRJGl85XL685K7ajElAZ1ZTQ2fxPB7EHI3PPOec4tu/MFJQuZ9G7uEgBK9Jn/cSSKbUaCHXkMtkC+bAVTe3orOntWkVakl+BuG/8xLqQII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792092034; c=relaxed/simple;
	bh=edgaqrCTJeYG03mW1BOcvFjgC4eDGwuXZtHzpl+Cotk=;
	h=To:Subject:From:Message-Id:Date; b=dqGDknlBxhEKD/uXAY0d7aPMONwoqWiD0v2u4qsMiZCMlBGfiJsQbz0WOiaGQBSw2SXTQmDyyCTAtg1rfVqe/DlyqQMUBJ7131OGJqUGoqQInqAnEH+9ECanti022jpKs7vLUE5QTGIYWgwPKP1pfR9KNbs4brmljJStEIeGLcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Luk6Y8FL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Luk6Y8FL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD694C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792092033;
	bh=edgaqrCTJeYG03mW1BOcvFjgC4eDGwuXZtHzpl+Cotk=;
	h=To:Subject:From:Date:From;
	b=Luk6Y8FLo0NI2WDgNG1VC6fPiPJTOvOIO5aId87r7IlMjIuCrwnnYakRYPyx5+Fo5
	 PTEfzwiHk4/fCK304yU7YdTqD2M549VSkZNCM7/1VBRdp1Qh7sfIXAGraHRRfLuj0U
	 L4SFOfNaJjo2WHN3sfHEuFCyvhrVtBh9iqW9jg040QFUzLvK/m/5COxpdY9s7FEkCA
	 qJJxgJpOiVsRA/SfsOYtWOWqlZlR39a92BnIaOPRKmnD0cwW93zuDfFHEnsQ4KC2M0
	 sP0a2NVDtRISqpzNzrL0sYcN7u3Fi3e63WMc/nhlrM/UdEfdFIEVHyjr3ruDo4Fv6q
	 Crot+vrRkuAaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0BACC6B38
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179209203368.14643.4513892459864352798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c75bfc19ef3dd7d011f6e67baa1b8520e3e39c4cf7121406fa8d03d3f29b660d
Date: Thu, 15 Oct 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792092033
