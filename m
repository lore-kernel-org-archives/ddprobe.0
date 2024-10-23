Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B4D41E4A4
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729725954; cv=none; b=TOrh/iS1RN1BqC27QA9YoGf8Wy5O6Tivrdt1tsxgSh8EBBLORq8LqPK5rlTXoVbDjGzHCXYHUSX34dG4U/yrth0FSdzXVk0VOvydzu1WxSU0qh6ExD9jHilII4+0xS/zzv78Dtg4RNNjiqgVfqES4Wgvd8Yxr4uz0MflqwwtlZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729725954; c=relaxed/simple;
	bh=9sn3Kq9f6BhLcVsa+eB/9dNOMl5ybZkPCtTGRd9lhOk=;
	h=To:Subject:From:Message-Id:Date; b=oXTMhVuAWuadKSNqQJyTSyOpJ3JcVE7bYj2qUnwwnG53ZRrQF0yrH7DKJjxUweKoPYCbSV8ffkV0/+gerbigPh0qFdjb3TlCJLFRA40xM5gaG7ucVSLm6ChnhSKySd/S3LR/qgn5lBjSVZp8nYbu+RMrdsKP80pZazezLpv9kp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bikZ6ipT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bikZ6ipT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8678C4CEC6
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729725953;
	bh=9sn3Kq9f6BhLcVsa+eB/9dNOMl5ybZkPCtTGRd9lhOk=;
	h=To:Subject:From:Date:From;
	b=bikZ6ipTEM7c5txe+dBcz5cBY1mbLOI4bUXnVkArtHGgdLqw89mERVK1HE1OKLrcf
	 Be3qBAjAEW7CCsOmuZBtnH0X1yj21myJKlsPlJ4pxhthfcBSPLGgQKcTgAmD9XUEWY
	 HgObvx7FgB7GFA9wIceSDzQvpsv8ky1hg2EhwbcbmULke+YBPr8unQCe3m9lx4Gshl
	 HS4w6vofDZSFtVBG9lypU7+XKmtwINYtZpUvxyfVxh87cIhVowY9b8umLpkRdUBIcN
	 jznH2At4dV/fLiVvyjBugiCDLcndZ6TJD+LdTX40wqSJrxvhoxevqpazBxFgnvo570
	 5MiPRxqTBUb5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98772D0BB47
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172972595361.8277.8821743423655073091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4d0d5cb26411b369f60167275969d1fcb59b5f39b744c6c2e68c274ca022cb1
Date: Wed, 23 Oct 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729725953
