Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2626D284B29
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 10:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764154374; cv=none; b=YR6YXUc1D5KLzYFrMDjyaf8Ww0PGnousxV0ZhP+tgxjJ931qX6QGICdHC8m0NqVXxauO8okfzCQgCuYlvYhWhhUUGS0j/N9mKZomLhyKNE4CBBlkf7S/BmaDeUzetdQW4ZQYftJXwaTepTVvfBA33QaGpM83c2gjRt5sU2O/JZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764154374; c=relaxed/simple;
	bh=vtRhPB0CVLxOgqd3iSYsIeo8wSRdnMK3nKXHN0ozR0E=;
	h=To:Subject:From:Message-Id:Date; b=PSC7GE0BnMlUV/v07vRNot38ywQdiqL2S75cbFxOfgrw5slEI6ePVOqopYpUs1HiOWVCdZKkO0ICThFq0/fkIyxxeBJMF4XNroRgWPDFwkwuN/xx334P0HyApVJLq0+94oyC/dDo3hSBSAwqIODVBZUY8TZC9wR4uLvwbemnnA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gKVV08ne; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gKVV08ne"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BF7C113D0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 10:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764154373;
	bh=vtRhPB0CVLxOgqd3iSYsIeo8wSRdnMK3nKXHN0ozR0E=;
	h=To:Subject:From:Date:From;
	b=gKVV08ne+fPfz/UnZJTbHHOy6H/m0ZZymANgaSHeS+vVvADBTNQmUdhBJS8H2IKIi
	 hXBZvqSEq+sdRpsRMmchoeCi6CZbnasPSzJjMwJYas+qfl0IoQvmUJrlWVl/djJEDL
	 tHt4Ut0ZEYIgnXQ/xVn06pMRqgOjIqK1qR3vAgNuCNqwtX0ThM0QP8TWssMYrLepv5
	 eGGxPgkES2Q/nWbcktnwybgHw99ns7hEs9Dguc3PcI/WzktJ7qDBaA9ZMP42zkJiKT
	 3OtTrebbIa6eeuZ3qGKVC+Oedh9y5v2a3qmb+BUZn2tKz5x9382FeRAvNrgL9MhoaJ
	 A5coL5urhLtsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93296D1037B
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 10:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176415437359.30401.4504650003170615704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb0971c8b569a440c0e8db6204ce399c1636b5588e584a7548eef9526f604a82
Date: Wed, 26 Nov 2025 10:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764154373
