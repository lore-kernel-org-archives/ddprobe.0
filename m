Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23DF73161BA
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 04:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772338494; cv=none; b=B7a29jSYUREdCJE5r3GgEYiS2cNuJVaoSRtUZkDqaaVeXff/b+37j5Om6vjZXspHNG8po5mv9mrN19OUnMrAa85/mHq1UQW2QfU7dttM4RwQorIzfPcbOfDCob0KxDK+/F6TUNwau4bVnr1qblwxysZpO59h845AXzyCqRe7c/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772338494; c=relaxed/simple;
	bh=Rptf96pWt1W+BEq4/0JWZccEm4kmzDlzdLloCRqFZaw=;
	h=To:Subject:From:Message-Id:Date; b=rXS9YyuLV5ssgriX8B4LCfOGijXDW42GOsNxVyMe9ieEycJzmid0D4H116QtJJi1BAKpO0FX2IMcBxOmET8zDXjWck6VLX29fPrquWUfbt4ezhmm7Jx5NBDIzMLhuuCFydQhLqbawrTijMQO3Jcu/VI2WAXvJZn18p3RJVuOmg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=llcvsWCX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="llcvsWCX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B86D5C19422
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 04:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772338493;
	bh=Rptf96pWt1W+BEq4/0JWZccEm4kmzDlzdLloCRqFZaw=;
	h=To:Subject:From:Date:From;
	b=llcvsWCXDg3+cOHS7lyLbjFU2/hT3GLpNOvEjkU5dJsWByAg0OMwKIkcBppZCIv/d
	 I3vaCW8/2vHVvy3rXfG38x5uP9joerUDhcQc4dNWl9Jgs2gw4a+YzbpIZoHpN/cJhH
	 fDzxi5JKoDdq0IMaSg8ZBW0iLmT3DurLJK9tbVZysbP9NsOIUL8NcnnSauEYuv4u41
	 W6ZIIaD2TbMN4HMJycwXID1WqqFr3c7DeiCIeejB1ANPn8sxhaAKZjon02h/7jTelg
	 KNyQAbydKkVzfKTFRYF33gBCA/vZHzxbhEsnV5WCW9ifpHD651vI5GH0N+pvGOvCvb
	 RgZj7qafSHsrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A350CFD0048
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 04:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177233849363.22568.6203868455402602806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 964a73e8b60076e597a0107c043a4810376f4cf018f95f62554252d77198965d
Date: Sun, 01 Mar 2026 04:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772338493
