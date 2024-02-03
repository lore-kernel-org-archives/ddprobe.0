Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 196EB5D728
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 10:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706956697; cv=none; b=FV3H5tCoSVJ4+WFKyj9HvBKXdG1EM61pn2f7Os5Wrg0mzU2oiTGWpUDF5CusuhFiC7c8kcXeaCnDk42UfbvFlg3tJAeiyr5WNugG2YVio9FOyU3duig8jbXch98WietMvYwMDmI6ov707yKM03OsWUlbYjO+TvERAWcOFXhT1fc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706956697; c=relaxed/simple;
	bh=pM/aO2k8PtFGAQ9KTvXmdehnwlbodrN4hQbSaOEQvjM=;
	h=To:Subject:From:Message-Id:Date; b=hpHF3/H9d+4PhMusqtjqwBZRz5sAoJOb7tYRxSblN82hlRRxaWfjlR8MIp5oO58jx3EXOb3m7lnAkuXPR815v8FrAWVCVvV6rJAy8gXOjAI0LeWKJPd8M4qbTyqwieneKJuIAK42IP+OMRhoA+jALZ1J39eIrIpZY1ZNlUAidH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J2tx45nM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J2tx45nM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C6DDC433C7
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 10:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706956696;
	bh=pM/aO2k8PtFGAQ9KTvXmdehnwlbodrN4hQbSaOEQvjM=;
	h=To:Subject:From:Date:From;
	b=J2tx45nM3wo+hW+K4sGlMUHHJuOUlTTrFesroLRluLIoiPQJOlHUbpAuvlYl/Vo7h
	 fle8vGe90KGqHI6SLxktsWigWlLGQbfiYdomfydtAQUcsd9g2rDbz3rzYe4eSWswWs
	 QB3IfjFXKQJuwuE/FF6ZjXa1GTy2nrrzv87U6IQMt9FUkOaxt5Fw/VrM48h10haV9A
	 dM3GigArgSWuAbWrTsB/1Al8fLamkG+w4gEmHCWyFzafSgIXqGKynKs0XTr3vI/3vt
	 sLVwCwVY0RKFZOjtnZrzr031YGEz/LY70FEuvobUkTkrci2IZW3a/eErq7bJ+OzuqR
	 EKk4j1hi41N1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FE38C4828D
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 10:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170695669637.29086.15756748369995412551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edec788debb24bc99e62ac10c1c1817f887d8f6c402605a3cc05c0406d7dc609
Date: Sat, 03 Feb 2024 10:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706956696
