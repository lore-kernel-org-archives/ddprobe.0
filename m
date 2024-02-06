Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27893745D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 09:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707212297; cv=none; b=belGBfFiw+eXsAZyYSHFj/8o7hYzRFwY6poRc7Ne+aZrtmzqZEUKtQ3wg49cNjtYAOHvrIZvSQtSxqb4t2KPEcMLHDxBIwTN+U/8Uu2wWZkqkvrtlUZVcZJMrha03T+Xpx8iZfpnRI6uA3gbRefhDK242d8PFuvGJrNtBRRQZ5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707212297; c=relaxed/simple;
	bh=EJezb/shz7iviPI9SRcxjReURKZRBSZtFNJfmjLQZQc=;
	h=To:Subject:From:Message-Id:Date; b=GIOlSg4SjOgsosOlkph3L1ZHC3a7xA3P600JcE1oVe7lYPFv1CKUvaqXelGpNrjT5SSuVss5rUpJhKTSm5FuFO01jlON6xU73PdrL82aO1WxEFHLpoYorGX2vkCHwUNVYvrp4BslRmjc46Me2T4rT+i4DUr1B84aOhD1tC7BoVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FT5ff1x7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FT5ff1x7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8717AC433F1
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 09:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707212296;
	bh=EJezb/shz7iviPI9SRcxjReURKZRBSZtFNJfmjLQZQc=;
	h=To:Subject:From:Date:From;
	b=FT5ff1x7h9dw2Wf0wsr7lMOSKen5Mz6XWJOD21akd+ygzhETlCSxazUpvo8Hl5Uzs
	 8pmW7/Pq84yqZc4W+eWGEkqja7AfuIKrdUmgP39mZxwesU0uZ7Bv29teh5+JR1MEvQ
	 kyt7+bh55PONKE3Gy4EOyLf0nfy/sHuenqzA/Bu5aZficLanjgruf/3DKBxDveRgj0
	 Z41w1LWYkwRd9NjMU2Vp90GR5PZ/1AbNP5fs91W7pbrsKwP4Thllqo7uwiayjRtDiK
	 cCnzx38mcmk1bhhObTHuz9BELKKJ+NJBEyfUjh+pq/VMHpsCKeC99YedK/kaYnPfwt
	 9IrsX5u473QNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BB1FC48286
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 09:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170721229642.18316.13070453307099984178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4025ba1b1812a4cbd0b4f2d16fd200ebaa489f661a725285c120cd87ca50747
Date: Tue, 06 Feb 2024 09:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707212296
