Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CCBA1DE892
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752492596; cv=none; b=bqJchYrs+oFRxg+UY4MMUQ78t3p/X0aIIV6AOsG/OURnKrieIe4ToSokn6MVyIrCAcQSabKQP7hvzhoM/mJriX/Db7dQbTwdIj3BF1PYdLgfEviVuECD58wQgo9Emx0UkgpHBKn75PHVQ7h2ZP+639AyrSDp7GVa3Q7RtdrVB5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752492596; c=relaxed/simple;
	bh=i29sY8sMYwcy0H9UpdpNPTh3aNRkvgfOaghFpKqhdkE=;
	h=To:Subject:From:Message-Id:Date; b=drl5gfAdaNrgkNp4bn4Al5tkDW10knhbgerSp+TcnwQggTf2kwXu/3ankPENAqVfiRvZ2K5xkMrjZxosjLYt7RIU0qQguXy1KCLNIy6BG91+mWsHkOxsX1eAfmFQebOttLVsUaKzKVnZCQh4azryeYNL8DJdDQjhCi+kMiW0vEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ofOA2nnu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ofOA2nnu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA55FC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752492593;
	bh=i29sY8sMYwcy0H9UpdpNPTh3aNRkvgfOaghFpKqhdkE=;
	h=To:Subject:From:Date:From;
	b=ofOA2nnu/9caoxxfviCPbbttJDQeSLruD7fiUtCiWLJD/N+65VqJ6lx4FGWlVWY3R
	 Fy7rwfMBE4Wl/gElt0VyE8vZm6FZycSlk3QpgZA+LY/YjxoASagcMa3qdQQ3iTq4cF
	 J4XB7RNb2D56LyUxFJWUjgmfRu6XWnoCOxEf0q+GJjgBJZPJYQhUXVcOx2opAvd9jj
	 arOSSjI1rExRXJs0uWgFMk/ztC2iXfwN+A0ldn3SLrSQlyqXOFkLq7iC5kmiCOqHoN
	 bJIuuZ3JviSIwWcmx7kVdAMv59nTCARYsNQCyTj+8nHVrpwCWdfoLEWa+9kNkSvE3x
	 DNAZPXsCKAWvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B718C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175249259362.9510.7695759594190696314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f3c3a8ecea7ad434e790e508f1a1e3e3734f0b8fb86153e1c0a2ffed6308075
Date: Mon, 14 Jul 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752492593
