Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319C0223702
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 20:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771966494; cv=none; b=TdOMP2yGmUQb7hG7sbxl5sHJk4JHyji4bXz1QSCjSAdRE7YOwAYrwX+93+8uq7ErWfQ9iQmI1dRarmkkOzDb1XNnNOkcFkzGXCx1zDrqPwlsVWWkw99tFQg7I9yH4bXRocUoHRHCY40o19UYYobrMk3rcVvjAdusuWClD5GlBOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771966494; c=relaxed/simple;
	bh=mAo72vX7XUzy422yXj7X/7kxu5pAmKWEjiYEz5MVWT4=;
	h=To:Subject:From:Message-Id:Date; b=JGyAeLYPT3rHYQvX5MolEqu0hBSYQqKppACv7nHM00f1aXtls8jIjVFaLJXq4sVa1R2TXVx7ElZLTy72QX80DM9fd0vcsMpC8gRDF8+8WTUQgcqJEyOTnizCogdLJfLYzDHaIlYpQbjK+QBp3efjK+SJ02p1Vs7Qn11CjGdEKr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SOwmy1dp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SOwmy1dp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30A5C116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 20:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771966493;
	bh=mAo72vX7XUzy422yXj7X/7kxu5pAmKWEjiYEz5MVWT4=;
	h=To:Subject:From:Date:From;
	b=SOwmy1dpljMr3rn6wAzJkWT8b219YDO6x+VBChmsYRfbGfU1D3EI/vXjPDo3bkeE2
	 LlrXMTA24lAAIkMOzTRwbnMIogs4aiNpDaUMTkgyxgEDVifbOOf6CrnJiLxZ84Zd7j
	 7ZXvw6qNWhdhzKlRTmjmj0r6phbSz4IXndsKYKWx4TQ7tZ2EEZ7a+LZiJuIDLYrwA3
	 wBKm/AKKIx29L8WSORRTtYF7Le5kkRsiolqw6cViTtF/E8TbP4VfpjDmyK0rlyKEG7
	 lcHp9FPINwYJLdaPhvD5bfa45vr5P05jsoHqcEZE8vRtmW5DoUpAyxlKMwhrANpqc0
	 3SXjytxdC3zyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D1CF4BB8A
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 20:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177196649358.1054.16480359505861773086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbd960a26bb747c52c76a0c50e09696d193c5bc023e2c806153fba47cfd88d4f
Date: Tue, 24 Feb 2026 20:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771966493
