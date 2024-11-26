Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1919E2C6A3
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732643154; cv=none; b=dXPGsbOnJ8NjtQPu96SVV+jNTMWckxbHdi2Yrq11ICvYrDOjKTi7UFtgZxK6qU51c+TH18Ln3K2TZyPk2ZnBBq5wD83K8lOP/YxbJNJpzjmE07Qz5yfOL2+nH7ZF9G/DqjaL0FdTgWm0aeUiVGt6ezaGZXCA+TQiQLxxNM7iTuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732643154; c=relaxed/simple;
	bh=LhGKtG5ihV2pb6zI1WtyAZtYxIJ1+Rn4OFQ7Ad+5Ek0=;
	h=To:Subject:From:Message-Id:Date; b=kaQJvc6RZ4pSmkhnWU7cxaHDKsZqqByOMdgbEjWQq/tI1DeyCEyv18mnL/woDNIUc/woLa3J8z4BWnmqXMF+0/uB7L+k0CGqeGfXgajU5NtnQZQuzvH1eN0WZ0L4bQXFS4D168IVaNSberJC32AoxK6FLyupm3yy/vmlbF9+zb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OEWze9SU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OEWze9SU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B19FBC4CECF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732643153;
	bh=LhGKtG5ihV2pb6zI1WtyAZtYxIJ1+Rn4OFQ7Ad+5Ek0=;
	h=To:Subject:From:Date:From;
	b=OEWze9SUhnRrEJ1UewwxM3FBVQEREyca4pPK7oUC5eahGAT/ET5h/ohYDAKuKhD0e
	 KafF6CIeeK/nnIWnGgIrehEekRFUMb+6Uo13o1yfII+0P09mn8dlYHNb7qLi8UBoGV
	 RKG/sGSS/b7t5XfDwMGiHLPTfiREgnw1W7tOffIM+4I5dnd15gwyvGgyhwo+IRQo4E
	 1iHSJ3HVll5TCiHQ67RShxfSvsQIskheKG/Ww34/Mc5hQM4HagxCA8T0CiOUX9mnCC
	 4lk2juvYg0F/70D9LiKoX/7RrWmLV5Z5rucp3Z8+FxPpd2BRM6xWctGB8e/bpokr7m
	 wKCdXeVxVqaPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99598D65535
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173264315360.31063.5427319065324459091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca12a47aa06e09e6cb092b0c30b20a8b31d8e74c55b29f02012ba4c9a0415f2b
Date: Tue, 26 Nov 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732643153
