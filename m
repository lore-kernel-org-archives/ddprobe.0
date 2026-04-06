Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E87253359
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 14:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775484934; cv=none; b=tOln96LVKc50mlj90Uip/fUNrfnkRh6ziaBv/zKwzwxxHLzNhMycNQxGjVkkRThYUn4NavrrhcD2SORe4dGkIYbAr4R4cwE4s381nKJ+da9ayo1t2wIouYhF9u6Uiw6HQpqF/Odjizjgmqb0jMydZPlya4tQssreZuC3Jj/u9v0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775484934; c=relaxed/simple;
	bh=zCfqFeBJraHvnGUtsR8/3FOCG1ErBw4CKHTn/6xmbWw=;
	h=To:Subject:From:Message-Id:Date; b=sGe8nWnlG2YWJlCgN0uOGQUsasEX9RjcM5MACnIJGAI3Bjx7pxNLo6m1vmd0k0AqukYu3ntKzP8VB/7Dmui9VkI2EgrikyoQLbWHQJPd+ojZASUQtJtoZea2U7F7aROGPOm6/hzBq4AW3lTEnUS5feZ9dAj7XQpaHR0gbkVIqX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r+Pti4yc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r+Pti4yc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC406C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 14:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775484933;
	bh=zCfqFeBJraHvnGUtsR8/3FOCG1ErBw4CKHTn/6xmbWw=;
	h=To:Subject:From:Date:From;
	b=r+Pti4ycOFNx9u2J+PchKGJw8L/djAektRPm0BW8oD6SebpnX+Sdflm6C/ziTTFeu
	 hJrwWmfG/zj1kk9+aDgr4sb/psftr+tcIykI+/6sqF/Q+d4BcaPcqzqtVC2GNSaogm
	 iIMN33trjdspJK0OBTpM4Ze71WC2xWzVljZDTtiPNNrCVZDMfiSnD3eYB4wdm4kEKz
	 ckJg3eOmlsDN0wXG8RiyGMnmLHcginq5uXGWTQIMtfkwKz1D+v9DD1aA/BWn/gwLET
	 GdEvycppZQE+4O7VIXuPJA3xdIVTJ60+HhK33/tlvvbSQiHyDs4ojcD4x4h5nXwmaC
	 y4ivrLv/PgIyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB564F46C46
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 14:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177548493369.13962.9600692674679292575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c118ee6e317017a02bd8254dd449e6b0daf227f60f876497d0f3f0d7ca484c2
Date: Mon, 06 Apr 2026 14:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775484933
