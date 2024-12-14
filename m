Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F21D187325
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734178554; cv=none; b=l7WiQkEox2dWmlicDE/ZTBTx+F1dSlXkSv76tpoB5NRqEtV5wTlTkaY4q0cTX+ptL2snFq3lIshsgke22mu3G+1RJ7lz/QilTReTlhseVjhPFZM4ncKo0Vsroqh7ROPoz1Kupllg5VAaxKSN8Ur/eg6sAHEY5sz9rqdrC8UXHok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734178554; c=relaxed/simple;
	bh=D/jmOsjpA+2j5VTg0CdsahDJIXt/ZAK3kMseKs1l0NM=;
	h=To:Subject:From:Message-Id:Date; b=Wi+p4e7ypI2l5S4v3X8D0raGJ9LM9E0VgwooBmjnIUdtRVI1CGRr8GypwDKTXT3v11CueGPcghECj9pEsXXPbd3PEBUSC7wWU07R+94UnSaj+9NKZvqruznE/pjhu8D1FOhwxVFDR8dLFgamdhi+DGrmruM9PZrP5IWiZGtypT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ph7Vk5dd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ph7Vk5dd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1D16C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734178553;
	bh=D/jmOsjpA+2j5VTg0CdsahDJIXt/ZAK3kMseKs1l0NM=;
	h=To:Subject:From:Date:From;
	b=Ph7Vk5ddcWfvRGf8n7uOA01F7i1v+wEiljDAvxxfNRJIjWDsN/Urh3F9cK70vRFPk
	 fVbcEkg6eCum5zJtvOGeQlS8OMq755whRGTyGV3dHKHr6yjaBJlWgFjbLKt4LE7cGe
	 tyfy0l+O9QnediOEeQopl3zSpVK/nnUE+48a+WaxqmnJFzJKs64020mzh/j5wI3dRC
	 pJMfPkQPyaeouYBvhT9Ql8ex5C6JzK27rr66AfzfdRx7HpLXHaRH67zwVVBIV/U4JX
	 9DJ/RVxPZ4dpXEysj3EU8qMsNvGUTfkW4zDkzPWgSjDsFJ9yP9XSYMs3q5UJvtOFiF
	 Ihc0p8QcggHFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A086EE7716A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173417855364.30328.8526003822144288113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f0dc5f03954ea5524dd0c3232295c5a192079df6997f08465dcc1f6ea3401d2
Date: Sat, 14 Dec 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734178553
