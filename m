Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57CDB16F0CB
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 22:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719009743; cv=none; b=VTPaVCmmpa6vMyh0iK80madhhmHame1JkRgNWBznupOl+rYvGppXp2HNqD3fiQrCJxDQpo1xGl/U9LFrVwtW9nPZ8L6Oq58dvvWoot3OKOUOJ2yRu2ncyq75ba9m3uHSDqtAObXnNMdLFl/TxJXfW/Xjy39tiUVi5CCxC1ztx8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719009743; c=relaxed/simple;
	bh=FYDH0gHa+L998qhcguD/Wi3N6t/EGQEs5reYTApHmSo=;
	h=To:Subject:From:Message-Id:Date; b=ghIHP6VklbLeG2WsUNgiG/TC8aZ9szRcCuYonQorAdm8dpOqKnHkxTW0IR2h24edV0JJuXSmtv/rR8KKPuPal5sNK2ZNwNFF+z0eDD99JcPLahjZkRBAIuBGLeGRIwBHXR41aZ6zrwgiLKAtrQ1QanL6Zs82d+QGUnVeayRh6L8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GZ4XKmU5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GZ4XKmU5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9871C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 22:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719009742;
	bh=FYDH0gHa+L998qhcguD/Wi3N6t/EGQEs5reYTApHmSo=;
	h=To:Subject:From:Date:From;
	b=GZ4XKmU5nI9a7dPzzMyYuEK8nURAI4VNpydNlwtU5/ZSy2eKSxXpSepGZNpIcZgrQ
	 zzgAfgLHikSupdPLyUe7JhoH37jIG1yl+SX+63jjQFakppeiAfA4e2R8zAo2xFsL0l
	 +7DdjV0T4jX+Bg0CEeIrPntqO3xgUBaYVwi04fF66JYb4RaeEw4AK1C7WsVKIjinuG
	 XAiT4prxWb/9Z10a0DmAYi4Jj9A29hG3lRtPtAQbd1rMW5vCdKKxVmXDcPqw6g+D2I
	 z51qJU/S6yOIDvsPlLMb6S8pKXqTuhfwhLHSmT6mIahxjzeqpSCw6HBhP79cyObHo+
	 xF4BiOT7E/RLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C99C6C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 22:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171900974281.31868.15566856281133718381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 089e0e277701ff045006c5d06befcc79421cf1d81f48e6dc0749c92fbb4ae730
Date: Fri, 21 Jun 2024 22:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719009742
