Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47FC466B5E
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 21:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714857143; cv=none; b=ZQDr2TJuCybFJB+cLVTlVGk1ne3h9a+nBJYFNw/6G0HwITkVGqD4ZRgWmO38XDoe0yumrPQvE5JDkHKNpBjS8DIFRqC9jMAUQDrInj4qBUxsNw8lwKJze6fIrdSmaK93eDcwy1J4u+rj3QO5UVVyUBfjVt6jtAwNFjKAROlsapc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714857143; c=relaxed/simple;
	bh=FunEwLVHYekWjEKJQbfOnEGxTll0D9TvETP5wEFqBGI=;
	h=To:Subject:From:Message-Id:Date; b=I847zTEafmrebb+uQGTwQcMInVRrN1qVAufRpk9eZxU15vXknv3Y5hg9ENlEHEygUwbP0SJ+s8bxAWlO8zAKifuEasruz7TShInvtiGCy2JOD9yqUGL51sFVD4P4XBekCL/PWNGAJ0eoUdzVbehejFyq4qEihlr0hvC7d52T9wg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eMZ/pTeT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eMZ/pTeT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8CE3C072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 21:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714857142;
	bh=FunEwLVHYekWjEKJQbfOnEGxTll0D9TvETP5wEFqBGI=;
	h=To:Subject:From:Date:From;
	b=eMZ/pTeTjmBPpJufhKakx85DsQy4+lqbWiJqqihRiAGBKct1L+eAU8yJB5r2pzmAT
	 eoeVNCW7A6npOneN4/UP+e0S596RQ9+KNuKMPG5u6J12V6S/w7wOT+BdhOE9jOAkcY
	 FiJ0lzSU7s+8h40nKWv+0mUmbuQYa99gUb4NSWLRNoRskgAdipnjPXJLRMLUcXCcb0
	 tKXcObJGir22Akyar06Duh04LV62EElJzd/xWZ+DZaciyTwP/b613WJTiyDBLaDz2C
	 IU/aek0KOCQw6An7GaggFZkK5BHaMAqOnjJ4AuTWmviR/4GwXFJ+R2kDU828/x4bH4
	 W9Ed6ZeCTJ2Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4D87C4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 21:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171485714277.972.14040232158450562760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18a2622109af4224d7584f5005a56c9f6bf685aa0ec608f88012aabe78d0867e
Date: Sat, 04 May 2024 21:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714857142
