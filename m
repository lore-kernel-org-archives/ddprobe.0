Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A2F73F20EC
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789724434; cv=none; b=FqXY4YvoEfXkrdMz+GOCo4Krcbldykywb0Op6xFmfY9xdYp8SVKkKTAacrL1w1spQofufoKZ3EB0TBC9aSR+yWF/KAJ9rnKBp0QJl+ztOMkX9THvi5sAJUBXgWoglUe505DjGsRMjLTp3S3KMnvEA56wOg8ox6sm+JbXOlBJ9ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789724434; c=relaxed/simple;
	bh=BTVRJY1dxx/TRJWCW8KOIpIL/6jgoQA86+qYHhxQlDk=;
	h=To:Subject:From:Message-Id:Date; b=SpeVttRvQldd68p8fx7vhjpEL4lFenVx5YzFbWr045O7aDhHQwKi4bwtTsRpsNYua919egC76hsRot6xJWYmzk7GEYk2nm5WuDfiIFbHoikpwHaZvVtCo1Ug4iOLtJ2VjT2CH8SxR1F8QF645SgP4yYNDO/8Z1p5hZcSbNfiZm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vKx3qUcj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vKx3qUcj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA90CC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789724433;
	bh=BTVRJY1dxx/TRJWCW8KOIpIL/6jgoQA86+qYHhxQlDk=;
	h=To:Subject:From:Date:From;
	b=vKx3qUcj5gq5RvF2uBK6ivZ9JrxlPpe05Ww/eDfpIIyuaOUAnYVew5WLyBUZc1uqr
	 +sQ7axgAvHWdXz5BaHHPZjSd/v37mbSnVGAM7/4sixxHOUEVzxIbujNlnc6N5Ml6tl
	 G1ufaehONcxpF1jwS9PB9aa5HzGNNsgiNYw/myHw56Q6sS1XKw5tk45lONbcfBWMzy
	 yVQ67A2+fiOC3mwwGhkQFg+I7kZJXWhgybTJ8Cfzo/j9LGXSzHbzGIupGePQlkMeDn
	 jpRmNP2ooN/R3X+S7sLzzoY64bsmcJ+N05Yim2CV1yczYTbM4A2LiHQrK55ffmFcw9
	 1Zy8QTHJgWQcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B58CDC982D7
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178972443373.19414.10984176279715136085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c3a7b24543501c298b3f9434c7cc64dddaf2d8e7bb7953388d30386452aeeb3
Date: Fri, 18 Sep 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789724433
