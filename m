Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D52523803C6
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 06:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778309853; cv=none; b=mXOwuxgUtySyM3nqumi9ITHQAFG/F/PzOhwbAnW6KqJfUb0MXTNom4XEIqJH2jJw2siA8uGKbqqDszzt773fDKeHU8kBBvHqxfFDpIlCjkYEiy5h+GTfTJcN9gC4lrzBfvpY/tJxCdmhGyI+iVFuBsu06B8WyzLvybYRzNHp/gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778309853; c=relaxed/simple;
	bh=rg319iPtfdJG8WBhQxTN8EBBcPP0UCKb+/C3gyanCU4=;
	h=To:Subject:From:Message-Id:Date; b=B9sDsFSOzL9vLe51sTfaJ6wLqFxKA1+1DRiD0IG5Xx5alYb0fb9kmS6qvT9m+bKMjpDAETfwISXz696Z77Wt0Aw+sHb0cwiKTzY6R2nXB64KyLg8xnzJvq1lg4sIFGmUz6bOKWowayxMAdkOoVRJ0sxiz0rpAaiX4KwFIy8mcJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i4Q4E8TW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i4Q4E8TW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B952EC2BCC4
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 06:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778309853;
	bh=rg319iPtfdJG8WBhQxTN8EBBcPP0UCKb+/C3gyanCU4=;
	h=To:Subject:From:Date:From;
	b=i4Q4E8TW0LEnw6Gl0SMv0lIHx05OYpstuqpXrEvjkxK2F6fteV+73pW+X0ooyL9Q/
	 A24SjF+3M30ia1Iq2iwlBoQ8IaMOiATcLFeSmWPFU7OjIMao4rEtO01NOJ7SdnF7V6
	 ObiIHPmRZkjfpuLSELU92U4nmYJ2kSc+TKvPDjOYGV4SBSqXwHj+Ej+ie5NuG8jFg6
	 vR8Vk4cFeg/Z/KFf4eTWdZK4YXEgymn1f0yO3REw7ftW7+8dFGETOgkckBDv99s8y5
	 DleesqEmLiy5zJ/XoZ9nRJvR3h9yetA0adH4+Jy6014l8vSsXvvx5/jd8q8luh6aS2
	 /sWw3pZ+lr9pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA909CD3447
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 06:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177830985368.3033.2838830858215993093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2a7e6fda6211d04f47bc7b016963ba004e1ead62cdb7dff3c82a32170aab62d
Date: Sat, 09 May 2026 06:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778309853
