Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48E54C2D1
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755939594; cv=none; b=eASwDI6R6LnkrK8jLRT62/5NHpGKzvS6H0tqpxa+mVAvysaPK2WsqD8wkWKRVj5HjVCduxH78lhvTCq81eE7B6D7Ofl6xuhwrtNNbkhLdrZczsyT1gx6++7XBuOazA7vDnDwGGkSeX1kThA8jZj+agg6PlHMRL2jiFu/TYmNHmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755939594; c=relaxed/simple;
	bh=Ua+RohdZrx30ZW2/00TaPxULumiut1ERFclUZ22T0no=;
	h=To:Subject:From:Message-Id:Date; b=nzGGh9xaKnDJY6CCrDOMc8SRJ9p8Nf4E7Ufe/uo0VAoSo7PGWl4Nv+B3E9CkW6nE/Mir8Skyn13+5tbXgdkfVLSZFxl9nVzPLi/qGnJbQNlGxpGOfLQGACzRzfUNDKsUOaIWsvhJqtgQWtfUx0CGa3Rg3M09cWxXc8cjaN+gaRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EDTr2ido; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EDTr2ido"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70D3C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755939593;
	bh=Ua+RohdZrx30ZW2/00TaPxULumiut1ERFclUZ22T0no=;
	h=To:Subject:From:Date:From;
	b=EDTr2ido+K0HOqOFIKYpc/3LeaQ1inn60zgOSFrR+ugIFdH2UW3di+Jke70zT38jD
	 Md5cvRp3Elp7Lz7xPyPm0Ul79Shm2HXv8N+PZWLLzhxZz5d0IEWTm1Kw9P9Ioguxfu
	 zD8j4GsTO/m4uu8SFpw2MoWa/nbEZGOYjR2DDWVz9KJ3lzwRu3AKptuqxK+zuz+3vG
	 +MhYPAYou7XFl5rUYpv8P4ODJLsonW7iPEjAkIgtXepbSmXiUpiL+rZ/YuDuPeKcwC
	 N3yDrxSg7Sk4IdFa2CztLboPKHOthepdH5pqf9WNsbbwvPMSrY+vzGfvcCu2BexxTW
	 idKYfCMaWDmdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DCBCA0EFA
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175593959359.407.6436802956075185081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0abd9a62d43b73d55fa340962962231b9dc6b2199e1683a7525f8e8547b1c973
Date: Sat, 23 Aug 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755939593
