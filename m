Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 222C117A31E
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 23:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763939514; cv=none; b=Y/OBusYpjzO5OlIXxvz2bBkMSvQJTY+TT8Y2QglcIRO1FhO3oOTT9WB6a57EUM4GfWhHF9nhFcConcxPxy3BQY080H+VcPerA3QfRDxr7HroSZF9EmXISEiT0ottPJbO1zs38a/YDfsAVZX3o626LmgtIJN8BE4fxD3xuGPwXxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763939514; c=relaxed/simple;
	bh=IZsu4Zip9CB6pgsbeHA/EgR8vNBASJpwUPfD78MIRdM=;
	h=To:Subject:From:Message-Id:Date; b=HERAsPsvXm78C9RZEVCUkZo/AOY09w2UQ6dn4YR7O9TeROlyacgIwc/4DIuyKi0zD9HT4LSNSkUWmdEo7POjJ+Edj2jp/a4BqFsUikI5C0Uyx9gBJKjWke7jjwhTeedmZv/yOZot4+d2bohRn4Epn6IXAxj7cg5MI3qced6WvsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OaplfVuZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OaplfVuZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7159C113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 23:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763939513;
	bh=IZsu4Zip9CB6pgsbeHA/EgR8vNBASJpwUPfD78MIRdM=;
	h=To:Subject:From:Date:From;
	b=OaplfVuZWRbRJ9e8VjxXN99AotvH6u6fOO4geZ43Ec5QaFAj7sImKcXW0MhLbiWMl
	 hMXYb8anlf1viecobIWcDk9kgEVbRunX2Wy08+hiv+QR1J+t7aZjM1KvtJrQyr66//
	 3t0NbUY1KsY7uT2OyEOP2/sjlClwxhzPccjZGrf87fDjIGZucea0fYc1pY4f7X6b4K
	 Nd4V27wMuRzInxncBL5XDdPlK2VgvkZXvwq4zm/sF7C+4hdqKapYE/E3+oc3/c4hzD
	 i2y2tBWEO/LtbHBgtwYkouVe1OPM6Je8xClx/UMWEU++VuAXlIfEN9KewaqrVFRIx+
	 7hFPi+CG+dA5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9768ECFD2F6
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 23:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176393951358.18327.11239412368005607522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14bb192a7db302af53a460352858de5d03d7a012cc37d993bdaafd2bec4a23e3
Date: Sun, 23 Nov 2025 23:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763939513
