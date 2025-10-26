Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 166CA1DA60F
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761477595; cv=none; b=kMih7HSHLC0AMNmhPUzYkKWGNRJrMgtTjI5ShF4TVt9hcPVzuKF5xrmaZ/E8XYsnlMMUmp8RN8H3FOKAd/eALk/Eo1IHvsobyJ9cY6v5gLPMbERaOb1ItWHztOkh2SD7LFfuIQNJbfUrIkI+631dM/eRHe8eSD4Xhyx6QYZjxn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761477595; c=relaxed/simple;
	bh=U19d/Fkbz9jytv4NQyvHz6Zvzr1gt5SuVi+fVFy9YHY=;
	h=To:Subject:From:Message-Id:Date; b=eefNb4k0s2tRz29CI/CcXBbZzq1DJj+gLg/eIRi1qgqbnlSm6jIIiiGAAVjZZqfUDSetGJ4rEF3x9B6A2wpRvqNfa2teANYlLey4TB4a5EGvkREJzkwm+9c/INw7yzScknqIq8cYhP7JpHrCqKLysZupO06ekpsFuIE+PQ8h380=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QwF1pD1l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QwF1pD1l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D98C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761477593;
	bh=U19d/Fkbz9jytv4NQyvHz6Zvzr1gt5SuVi+fVFy9YHY=;
	h=To:Subject:From:Date:From;
	b=QwF1pD1l6UgQiGh2jYXuxO1bEgP5vJiCzHRmTOTgBjxw36soQRqsU7qlhYSjZaeM7
	 5+A+qnLKZUIXCM0hvOq6p394KR1M4et+jJtZbj2XWR5nSiTb3ZBxOgU8Hurl4Z3Xyq
	 BWMMy8mv4GfO9X6/rzUM2iMKBqbcxpnZ7wtpZtehihNHl3ARJEtGnwrMiW58NcEXqR
	 UQZkQqkQsmISqmTLHW6HY7XTQW6+AB31jILNxOSNXLujTfwGegRA5u59mMC7rzE4EZ
	 /+FmSnG7r19bB6UXANV5gTx2TpFtKET5PQ3F1+VDcvtsAEkhJNJ1T8+b0FWW0q8fnh
	 ZI+fVW6J5uk9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94805CCF9E5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176147759358.2692.3523560078176921315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b51524569a2780f45d634b0907c77effe99200ddd35c1e92f17366109d7d2f9e
Date: Sun, 26 Oct 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761477593
