Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49AA68BE0
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 00:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715991743; cv=none; b=GRaLS9m7gG2cRq6B/VfdOprsnTMVxZ4s/liXecjRKZXe3cGUzxOFC+4mssT4/CCG5TRCnpBoQS/9Pl10qc/z35M1MFRQ9KSBIY+yUipRr4+6wz7OW2z8Ik2SrcHno3hqT7cQzSwIIR+gZtZKjhsfwlcSx4XSbQOy8P3S/vnwH/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715991743; c=relaxed/simple;
	bh=72Zneso14VHe1GksIkIuujd9ZbBk+nWU7PleNBUfVkA=;
	h=To:Subject:From:Message-Id:Date; b=AOKrlkeno40P3Xh8ZYopGDLdJj7kRlAXjz/VQqnmCUjCHUizAULzr5oMAXEjSGLwZxypZImhQLMOiQHbw/Gff25dzsCJeHTA8TDUqDwmhyJXCRsIi+i1yZRuNgaEJpZ2nSqZpWNAl4WWlWln3kb98syJeN3xqM1iMXbrYOet6Fw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jKCDkiZK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jKCDkiZK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D35C1C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 00:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715991742;
	bh=72Zneso14VHe1GksIkIuujd9ZbBk+nWU7PleNBUfVkA=;
	h=To:Subject:From:Date:From;
	b=jKCDkiZKxGfV3iUIjb9eP1NxmjiOiXXgfk5aOyWrCzF+fc/Lo0ELyV0FJLau6GFws
	 eyq85EtPIO5yRcV5Td2zneH+O0ObDix49tK43NjizFvQHFWQlVhgASDq85AlTjQ3wX
	 0Kr72KXpzV+Bnh+Pz5rWHRu7JSeyOVpYCHqY0byKO9b/KoKnLrSwof48uDi8yiZ2yd
	 Ps8kIyasWGCnOj6OF9kB8X3JYCHTtdw18fQMs0VmflbmeOhMt0cYrdyvfdzChMWPim
	 h+mGgfkAUI32vEmAkI+qf9wwn1W9jLOEyghLoRJb6jDVosuiCcQIBZRXVgs4kkk0PR
	 aHnoKhy8hkw1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC29EC04FFE
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 00:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171599174276.17571.2776646658901824219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0de6bcd34ed0a3104ecadb0673205aa34e1c64ea0179be803029c7d5f5a726fe
Date: Sat, 18 May 2024 00:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715991742
