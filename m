Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5FA026AD9
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744380593; cv=none; b=rGemGD1mcS6zGury2LZbZXuUDJHFqVH1Ca5SLT1hd1GtSplCriwpiyI4PmNI9fWsymdU9oyYhe0YGUjP9JYBnpKQqgbHqtySv6dFHvJMlaCx2BVKdV0CyNMOZkr3NNvo37m45LJZmKo4iAnL7vtRfRhef3DQAETPr4noUxM1O+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744380593; c=relaxed/simple;
	bh=JBQFI3jjJdCQCTzCMuxBAMakiUg7iUqlmiziGu2c4PU=;
	h=To:Subject:From:Message-Id:Date; b=MiVDorZioRkCGKz7AI/itRmvKcMBkczM707+qMUusstraDL1UqUkARoncz737/oZWHmkfgWEfLw7Ow2+GsVy3mK4dLBY97+sVNJr0DxHGrNM7oSGabnJrmi/AEqBtR2QAy1LtWyc79z4NQ8X+EJ1D5Ht9/PO7x1wgRLH0j5Nv8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vOVj1TEp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vOVj1TEp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5533C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744380593;
	bh=JBQFI3jjJdCQCTzCMuxBAMakiUg7iUqlmiziGu2c4PU=;
	h=To:Subject:From:Date:From;
	b=vOVj1TEpLDSj0BC0XH/csXWwI306Ek5d6fpzhnLY8hYC5lEHKgpXRW3vdPB2GRHHK
	 FrIxnIUbWHY/4yITtt2yGisyCulo4cuMu6e6xOp4vfbuGWdo3bUe9Mx4G9z4IOUlnc
	 +QspdqZ52eXaVyPo6xeyEanbbbBUujLIOsfGhMP7b7IFbzoFU/HkyQm0DTOAkQbgWw
	 yivMUSRshBN3ytYlaUElr0/FIX9HnwAJGZYihBtNlQ92GFUR4fR6Za61P80nTY12Os
	 4QfJZI0RUllV58Lyy34j91AXd1HCdzb/cPBLS01RoCsO4g0uxvYT3m5wwubxigQbcH
	 vef95I60MpPDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9698CC36010
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174438059360.1018.2013432895666501523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 407ea7d44f8d1c485fee43eda2ad2a4e96ef92b1ebdd7102eb6bcf971efe32a0
Date: Fri, 11 Apr 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744380593
