Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E55A26ED3E
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 18:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779734554; cv=none; b=lhuNJAuMCLZFaeX9aJEzPCopZ9eYE2fENHXG5Jm2iZYSoXyCNns/xej/x167y+CmCZkvIKb7nMwNhMN275VocmBqnFC210Gj7j6etmAR30uu6HEDK/nH9m3feBdd+PSHJMnntLN9mKbegXgJin9oIBrq3RQvoEfMlXNLFoi2zQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779734554; c=relaxed/simple;
	bh=ETmHUrLwvTuXX4hzwI8OKIF12b3uMqU7u0kVXJdrb/I=;
	h=To:Subject:From:Message-Id:Date; b=uhlYfQ9lsKVlgmUE/2Bbehn3Nd69QiChwvZsrr0D/Kac7sP0XCnfML7HpgNydgQeSmOcerYVPKA4YPxOT9JH+MrEvrlQwxu+MKB37A7o3M21646uO5i9KTgyjyngZerDVH8HB2CkGJkx8Adz8IHJNaYY6jng/rYtsBaI6SgJIn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pi4si8T/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pi4si8T/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2BCAC2BCC4
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 18:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779734553;
	bh=ETmHUrLwvTuXX4hzwI8OKIF12b3uMqU7u0kVXJdrb/I=;
	h=To:Subject:From:Date:From;
	b=pi4si8T/HOS7VigAALoCpnOkoe20ijduJmVY8+sPughI6J21TaowiUzp3xeMFnqYk
	 uJlAtLLLlTaaKoB/XghsesD4+3wC0QqlhyQKZve1wK6SUR4NOcDFsgkZcNo2mCuK51
	 uBhwyIx6UOCq/F/PIPUbwbpmJj83iwIY5NGvc8vK8bx5iRB8lyPcq/FFpVI2xatMmm
	 icL/mZfaN/mh7uwrlI79f491hwnGhzPTNbWjIDwzpK0R8Ispi+Z9dVji0gH197L2C8
	 BJ+lVztnRVRh1dR0IWnyE5Vhp57cA6/dmIqf/BU+krjQPCmHkgJBYJ4PM7uYwDUq+N
	 bFTm8FwwanmNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F6ACD5BC9
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 18:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177973455368.6759.13949397743507327134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d32fb1f1571af8ae6e151f1f3d6d6b4f896f2a2e2fb91a4b31de1f1e91fa424
Date: Mon, 25 May 2026 18:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779734553
