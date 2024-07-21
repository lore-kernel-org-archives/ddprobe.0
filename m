Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58F3320E6
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 04:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721536554; cv=none; b=ee8XtLuwaKLTJj0l5YWFqRALe+PPd8Y7WZYLqvH2SNx/GQzUpZeXogbpemI4iR3TJFDBW3GMB03ubvsqUyN+NxmKQj1cxn0Ip0vGTMcT1o7aEM6d38CILpiY7B6Bx1++sK2tKGuL7pyy1SN7ByF5XzkwevC86hi+hTe1s21A4pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721536554; c=relaxed/simple;
	bh=GEEzyTi/oQ/uel2M1Q5ZG18+OHQdvXf4e2bbNL147/c=;
	h=To:Subject:From:Message-Id:Date; b=K+EjtBkRgw+98pZEKpyF3QbsXfhbngKlf3lnmh3bfihwHys6HjzHMWSYLlL+kWCpxcaXbjiCxqhG6eMK9duEWgXZE8610RxDl/lc07rGJf9E9DUJCMm/exfJ0C5Bv03KXlrqFM2aMI/9fJbLSj5d4hvSI8m3N6omQ2PcQmicW5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lw6yg0nt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lw6yg0nt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC11C116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721536553;
	bh=GEEzyTi/oQ/uel2M1Q5ZG18+OHQdvXf4e2bbNL147/c=;
	h=To:Subject:From:Date:From;
	b=lw6yg0ntu2r+YTmV6I1I1/IZX8WZ2DbUELUVRvIUgncPAr/WbOke4dp1pu7mEC4Un
	 56dS+fQGxmzqNzIz42OpWUyWlfQbYEbH4fo+LOIKdmUst392Kq1P9v7pt9rGRNR9FS
	 +RwxgohDUohJrd7l9QPz3m7mzEKw9IIjz2rTMFQxJu60bB8QsUUsRjOYAWk2gnFWkc
	 xbFXGB/AMbX/GKlL5342/3QIbGy47jYJDG+0QZnJd+eTqhKH3G5GC3Zx4pJM5rgXtm
	 7g5nsLi4DkmKZCbGP/rri59FJSS5al2MjOZCiQBMvYy0kzIHekZFFWOjUj/0X4Ule8
	 gfRAHRSsY5sQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B20A9C3DA61
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172153655366.13566.9016843377834067221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5c39cc703ed836c4f68e1095f5c1fed22fe33c82f97d16faf03909e6ddaede5
Date: Sun, 21 Jul 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721536553
