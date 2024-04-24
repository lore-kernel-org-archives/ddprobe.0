Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 518F91F5E6
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 04:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713931823; cv=none; b=pjPDx+nyySPaPMVzyx3nbSkcwJY9XDxJou3hiBj5U8C7v3CQBz2ti+gBUqnd5r/SSi4oauTtBGM6edauagV6TM8ayfZUIEgObiWJ9wCcGwIY5UGgq0SqrSXrlkVY6iP/FvkVhNFja5X7F2Lgl1le+wEQzRYJkBF2Mdzrw4VjjR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713931823; c=relaxed/simple;
	bh=9Sophyypu+fI081bd0AQ/hj3eWc2MPpzdbFCuxDQcVU=;
	h=To:Subject:From:Message-Id:Date; b=kVVp4CV0NsYAUNdGr19FrkdizOK3jgnfs65PnNnSBkFM+DG3PDgizfZYGksFISLKUpU2zmRobb25A2H/Unm9fhYrJzbhKv9f4fx6IGxTVPLE/SF6ItSFJOWFvlVqHLkROmhfLO6sGLHiCOd3RCFJWXW2gS8mVVYkabSx0Zcj1pQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l+TXkJ1U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l+TXkJ1U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF0C2C113CE
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 04:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713931822;
	bh=9Sophyypu+fI081bd0AQ/hj3eWc2MPpzdbFCuxDQcVU=;
	h=To:Subject:From:Date:From;
	b=l+TXkJ1UzNw+JEpTrjkPI4nMdLoqhQQFAk73Zgi18XUtbKoN5AAtwzw7B66nMKkJ9
	 FUgd2iWsRV+w/KMHpvD/QxMryOrKKzSFiczccBCBJfHQrso53AYE9akBol9w5m2Xqt
	 pbz9i1MbdXwzf+4FCBVKFYAMJw1QdqRZadh2VpYfdXgg8RtkuXedIFoyFUkBRSZSbi
	 a+TPvLmA0GC60lPvhxWqw5lV4aOkU8p5sLSkvmQe6tldrPsKO0on3Y4lDRWKa25U1D
	 XPYn7wVdRRQ+lGPjEqfPnV8XxX3IFcrQauGVoMEHBTo3/urxafXxqw1IyRlFFBhuZg
	 elMPSd6ZOfE6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA062C4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 04:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171393182281.19337.13440759884833480040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86fdacd3b3ce580539d355ab493a830f96e2b4d8b12a9ff1e45e6bec5d62eed4
Date: Wed, 24 Apr 2024 04:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713931822
