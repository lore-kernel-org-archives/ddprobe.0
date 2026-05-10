Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A6A2F3C18
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 09:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778406634; cv=none; b=Qc2pgqY3x8bKr3rq8MTPB/31qHeYt3nwLtQxDUE5X/lcFjQnBQWyG5QYAnOMEJz7MA77u8v0p1Qc1Bp8eq+JJZOwhhu7txFoJZr1RrGIdGzWXG9norM89h4ubKdxq8Cx8agJXPRah3nodxydh4aNerSRgSNlXg2o2TEESAEjVvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778406634; c=relaxed/simple;
	bh=xZuCPi+u/iVNJDZhpsUnix5yvWDLpO1DN3BsWwoNwro=;
	h=To:Subject:From:Message-Id:Date; b=Y56hiDreAvlHfCbsgXDP5yWG6AvtGzF5lMlnLVZeoRv7Y2YTMAqHJK5go75x/vUN50OGsztP1fyrVcg0vil+/ChqaaRYzSFNZHFe5x8llkNWLX8DrFpcqPWEoyds0xN/4XHNP//aLYRn3iq5c2/lUsHgtuHrZO3gmAU+kYQZDKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DAsyGuSU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DAsyGuSU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0166C2BCC9
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778406633;
	bh=xZuCPi+u/iVNJDZhpsUnix5yvWDLpO1DN3BsWwoNwro=;
	h=To:Subject:From:Date:From;
	b=DAsyGuSUBpPd39biL9YpHVfKGR28hgq4vT1mbG5ETJhPYN4D1+HrqKh6Znoyve/Qh
	 4nQa1NnIe+gksVrE8vxCTpWvHGhgs7LQi0z/QgB0QQXwUJ0KjyGf0xhA8luNjp3AMG
	 4n1VfTz6p/jLIDjqaHPuBv920Gd3GGF4fJB810isKv7FJJqIBl9aQ/sVb+Pb2NWYMa
	 TJ8IH8q1iidvlkFLP5OdAEcvdbpK5meWu2IgFpKukJdTE7Rb4a/X5GfqwTCedSbIhu
	 jVm2l/OBTS9mHme0e0/oifssjNaOqmrVFD6wOk9tD/L0T+zpx1LaKnyCoulPlY+zzd
	 mRtbigv1X/EEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD2B1CD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177840663368.23075.11139237725670819291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ccc66042060d7dc4c63415b2a91a75c88c9b222d5ca164200e744da2eaa9f22
Date: Sun, 10 May 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778406633
