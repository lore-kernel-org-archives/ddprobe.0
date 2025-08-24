Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ABF9274658
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756039194; cv=none; b=g4Sn/ZN8TggI3O3plXs9MBWKyWsPMNnI9yvUsnKh8Lk+rrs4lN5gFNXmX25qB+RF7ajHvIx46EKSSNylx/c02t8sME7QmNU4teJ8tEFdkCK8XpEpzC6GHS3XgTyb4yF8DKLAjjz4wPwRfMNF+myRWeE42Ukwdnf3UxbDqs4pmfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756039194; c=relaxed/simple;
	bh=k9m3ABfuim+witr0Kvy6ERcYh1p3Pt3jokDCxvYP1Vg=;
	h=To:Subject:From:Message-Id:Date; b=a/jWixBHL0E/UqAoQLoLCk+8PMaj8n4ynO1H9tQEtawZSxf8mF4iyAlr7+sN3FVOdP0uh9ySYc2AbYwqlCB4iGfrczNxhHrXtcKtwD4fMwicSv/VN4+AWtMb2m35Dphhb42euzPH1LYK+NwLkFz/p+uTFnhFLbuQABXkYLiYeyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lB7UadPE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lB7UadPE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A979DC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756039193;
	bh=k9m3ABfuim+witr0Kvy6ERcYh1p3Pt3jokDCxvYP1Vg=;
	h=To:Subject:From:Date:From;
	b=lB7UadPE6zvf7EoJG1CuvFYswl8vTrb2Y7VJ1Pildttd0IBXb4DZlgJk+c2yZwwH3
	 EtuBTbdvljN2d6QKdHteCHOnpiGlcxT7rxsHy1RmcVh7rAXEv8ugd4iBjHlW7C2yJU
	 WLi8Xrm602uausVt7O+eKqTy23wVuABChVsUID1ArZ42t6MphnQNIJukDwc6fIXEyR
	 nHKIFvt0VpZlqxmLPlclgujtg38Eiltv1YIZA8RCxGY6pQIv5Bf54EJ4QIyxAPcJVu
	 xR6hAo+B2W9HSD1fRRzElEjZxLMCjOnFJB80aIaaLRzGooTu8cLt0htQnsifz74Gqe
	 fFeAFbQJ4tSBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9469BCA0EFC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175603919358.17670.12239301371440894137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ad81d74c06d6efb7cfd9fd831b3a6b0d33c005061a0ac9423e66fa2ba199f22
Date: Sun, 24 Aug 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756039193
