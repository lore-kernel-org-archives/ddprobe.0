Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 418512D9792
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787631034; cv=none; b=cFe9AbmCCyV6sMNiKgmZXS9Y/rDuUYgX/T/wvatQ81vlZWjb8WvpioI5i0Td4tvenmqpYwxopHyzxrX3KJT2JuqZx7EC9JEFW+NwYb9CWpqdEiXcvAAZ9+DZBwO7IvzSJtA3U6Jh/1XzEct6CkleZCwMpszU58YnXY5lu8fMLes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787631034; c=relaxed/simple;
	bh=UrDYy8V5nh23ZaNi2YpYRjBGJlJ13qUUEBa+LZ74ZOU=;
	h=To:Subject:From:Message-Id:Date; b=B5dS5kQCaAZq9n0gFr+pfcUZq0tKAGSMlFDjc0adaffaIKm59k/YTXXndsL6BTNjeq/zCNBZp7a+Fy5H3cXUFViqtDT8t5U5aSfUCV4xemOa6s/QBIvhQGtaSqpG7Itge6Rnb/+Zs+9tjXAmm7VHsIYAyQ0FAlP88OAkBQMaKww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E9UGUsYA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E9UGUsYA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDCC7C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787631033;
	bh=UrDYy8V5nh23ZaNi2YpYRjBGJlJ13qUUEBa+LZ74ZOU=;
	h=To:Subject:From:Date:From;
	b=E9UGUsYA/lfgMQXgifiL2rdT7Ch8nVBvGVi5ZSBq3z0EkDfQ1hehQtgHE+eWfqb1K
	 KFGwk1P6fbZD2QxksZahd7uGBOs26IYgoNppLOPKrNlJqC8IVcdoD17lbM0ndLc1Iu
	 I+7Nfkk/kbLNMPrfrZsjHHj1005Ie4j5G4l6GMyPK1+2uiL/rjO81cYCePOkk86/FU
	 /27Kvn1HuOvegj3+s4Xkr1KbnD9oqNf9wNNd5Inodxmr/N0AVRASF8JAaT6Ed+sJ44
	 NYJMeKA695AJ9fc+zWc7mRKP/YmfRokQMDeH2b7NmECMxtyVwnfehjYItEg2VeXcv6
	 mdSFKzKFuUrvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE85C5DF81
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178763103369.28114.3060222915763628558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1af48467623ce6f15594d9d4ffaf7b2626a3b9489b0ce086d297fa965041d76c
Date: Tue, 25 Aug 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787631033
