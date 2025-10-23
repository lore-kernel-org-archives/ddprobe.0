Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D9DC248F4F
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761197394; cv=none; b=XSXfkmCL8DMbs25v4Tk/UZ+nG/4v/PjCRv7SdbP4AN09uv/HQemVYCc9h9wSMyY2SaIKka8cyA8tnFSSferyyBOlRXC+wUbjzAhdNPPN1nSqKcHHhmCrPpV3DEcwkBhwrbeFKqGm/0YAHV5ck9T3uEJs2oJjkKKX9qBz4Y8zfD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761197394; c=relaxed/simple;
	bh=By+I30ptPrqNJYq/m7w2jXEY79LCcJtZodoHAUQ1qto=;
	h=To:Subject:From:Message-Id:Date; b=bBprxjk9BX1WvhkAPH+w5ogPWHVyfATqq5EgYFJd/VGiIrTpBU4Xkf37p+SYgE+RdM4rQU9td8HgNfTc4daXlUHu+RH+ex+RJdFlz5b0rFj6yEu8yBguTA2gkaQULeDgg98uGPs+iQlWkNcvJeomsyucIpwr+WCGYO2B58h2p2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fvtyN8Q0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fvtyN8Q0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BDCC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761197393;
	bh=By+I30ptPrqNJYq/m7w2jXEY79LCcJtZodoHAUQ1qto=;
	h=To:Subject:From:Date:From;
	b=fvtyN8Q0X2Fs0tuw8NIWJeMOytjqrSxRYLRIlUhSNVUPwa7CUyPnsBQolv7mhEKaK
	 siVfO4RlDgPlJekpu+5gjsEpur230q7QgEhApUQVlhGtQLbzOwRfoNhlzhtlD3aVfx
	 Nhh9LVZWUjzXMdHRO5Lb1v4NQ8EUZaEC4rRgMbB3qxtd/r5b9Otb9jc4Y1reLxhaah
	 LUYVJd4dsA4iZMMY0uYdd5c32D6TM/F8AhnqyxJgdUJH1wczAWsgnQotyDOF56dSfo
	 F77uoj6G9w28wM0bU+S/cqmSspdFwOoma5twsUDks3MinWOEUxV4u+/Rm6REP4p50n
	 2paxl4JM3WZmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F148CCD1BC
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176119739357.18459.10618214935471331286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da84a0007c15e7346065dcdfc5b3764317046a65cf72113c1f35d7c3722df378
Date: Thu, 23 Oct 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761197393
