Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 378EE265631
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756888794; cv=none; b=tVD2Ds9FAa9tTRfWQZCBtc//0YKXv8BTjuQncClVwjXy10YzEG7lUQbHQxiEmvlc7jXPkFjM5Pn1yEU9dAErgA4hPOi0JttZLuGFMit1/MRP+MTLOgXQabDip3Z0Rsmu8YZtKGn/BtbA0fJPqW8G/Qcv5vHvE+vg0zh0rRP5+wI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756888794; c=relaxed/simple;
	bh=0UWdfn3XBU+BTjKR+vDbKJWQ/gf0LgJLh5YwwyiIGIM=;
	h=To:Subject:From:Message-Id:Date; b=k/Oa4UhTBW7RymFLHD8x+3aY2VA2+zOVnS8Tzyltx8l2tC3CFurYA9CUtYzGgJIPiB7osJLa5VUe23oOMsKQ2ugEGEcgsscC75zr8UJD96GHOgj0NJR08ynM0HjbslhRT6RrLPUhtHfNkg0ZzSEwjqink/2257pkVR4Tj0Q4f94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q5xI6iFT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q5xI6iFT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5047C4CEF8
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756888793;
	bh=0UWdfn3XBU+BTjKR+vDbKJWQ/gf0LgJLh5YwwyiIGIM=;
	h=To:Subject:From:Date:From;
	b=q5xI6iFTAd7SufxogznF2T3qNcbtm5NKpH2fn+mHS49po0b105w2TilSsbPCAEYWo
	 +lAO/aYAnQmJiB46siI2hfSkm4RkwZwIdJ5hW8ASm5ekS0oHekaOzis3dPJXldiiAS
	 7pkkBGt8ugCOkFSo4Sf/3HLmdd/I/fYxHDZ7WVkimWyWEGkGGgalJnql2BU1mYabL1
	 sDgVgXHnZm0TPZk/uFiOHSjITo7Ls8xjqV5p10qF2yL+K/6t4j+s9aq+yGZc3q71Eu
	 p0jvFDy0BCOKOkEllHGyj/pfjJl6LsGYFm4Z9o3bgf8g3QJe+g0K1mx64jA7BZWAuS
	 1JCtXjvSuNhbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F79CA100C
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175688879358.24114.1768258392878373571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14e12a54c53ff5536f1f2e809ce969fefb490f421e6907b44ef6aaeda42fc457
Date: Wed, 03 Sep 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756888793
