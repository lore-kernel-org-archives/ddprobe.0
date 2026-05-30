Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 487A92475CF
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 11:23:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780140214; cv=none; b=NYCF0CJ9xPqS6j9I2uD04U7gcmk2YtyykTDIIY0ejVyFunLOhEw7VMztd/tOEM4ydbztWevxR4hP7DffnBj96LkBPGawL03b7NCCyvrwGVdGEchbAvN+UFys7s2Bsmzz0H3tQ745E3R2S2BM/l3LhYDYkuOMSuSriozvSCZ0Ypo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780140214; c=relaxed/simple;
	bh=jzphDuKj8knh5glJLha9Svz6/DU9xcfpulvsmJF/Rnk=;
	h=To:Subject:From:Message-Id:Date; b=IoUoGeb7gZSBtmunhIQHdhNz0gz07wjqE9hr0SRb0W5R9+WEfarBtRTCfpG/UI1w9UlF970BdgqUuY9OvOpm/2oZaaMuvaV6VCvBxcQjyK4Htxkl2Vq43iNK4Y7k7TsFR5AstXbL5SjMTGloyTN+hg9IYZWQKBZU6dPwRgfOGVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W4koonTo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W4koonTo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1A4FC19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 11:23:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780140213;
	bh=jzphDuKj8knh5glJLha9Svz6/DU9xcfpulvsmJF/Rnk=;
	h=To:Subject:From:Date:From;
	b=W4koonToaMuqedaQLjCSMv5pvos89wQS6Y24qig3MueG8nW/Z6Ii5ymPZ/56vI2V5
	 fErFkL5UY7hLfCY7jhGCQYzPr23Pbsck3ILlY5yw0f6I4U2PTdOWCik9JIamq9eorq
	 6WsSViQvITzZ3xS/00OYbNn2IiwLFH/MfZ+14i8qUo1BUF7QKqrvL+nc9JSHTsFMbZ
	 8H4cAQfUy+QTG7lfIgT9GWjGUIrRBSVwtiwwekb+gVeUsAPq1D9g+vlCoczYQHtnIS
	 kMS9r/iQGOwK/1AmVFOHQyJQVxX3iMWS1ybnOYlYUeb4848ybKpfHoLqcmv2R9Rdt3
	 C43hv7y/nzPcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE85CCD5BD0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 11:23:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178014021377.12540.14854599012455828530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ed07b966ea0e5a9920dd5e2832ee0f9a025453ac898c6233317ea64a28f6472
Date: Sat, 30 May 2026 11:23:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780140213
