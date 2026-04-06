Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 095831367
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 00:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775433934; cv=none; b=OLyV8BPdDGjX4Df9qzlLJwk57EIkHU1PQHTv9osj1ZGllltRFMudQVMcQqcr9z5EX88zV+PSWgiAg/CN18ca9rlctPWvgol1pazi9C2MpbFuA6PzG/MYJNB7RiHHYuNcalbTgAV68OpDd7ZRwEYPir/Gjr1WkEedb1mu4zaPTPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775433934; c=relaxed/simple;
	bh=pVDa/B+Z90/kfMSaujDOE475cLooGjCIv/Zmb5f1FOs=;
	h=To:Subject:From:Message-Id:Date; b=GFDx3/dghfpdXeO3n119frOqaHtYcHxz0nPCrkk5K9jqXbo6JyN4DJtl+g3ciUki+AAg2Bd11vR1cPbQMSv64dqJjNqgMdNzaziR/lpFoxhnwcMm8w4CllELDY0YhX7idSPefCSsedPfFNVj4IRIOSF3kZORRClDWE5BLkAdcxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=egYcppUc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="egYcppUc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5ED2C116C6
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 00:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775433933;
	bh=pVDa/B+Z90/kfMSaujDOE475cLooGjCIv/Zmb5f1FOs=;
	h=To:Subject:From:Date:From;
	b=egYcppUcfEKsMF4GR4NFtV1pxNxCdTgHSULtZGDnPIkxVYtqI/GEdRzRlhfnZA6Lz
	 ow6gtHNYQBiPHbfbt+xxyRmKcCwZ9yEFhL43p5UtBqBZsFHkSEuZhZFM5igYUpW3ax
	 xjrQv63TwLLyWyUYZWOwcBHEij2CGDcFwkHUskqDJk7GH600Js26PtPEPs61Mm7zhh
	 IwzebbTGnaC4zcxJ22wfyvajPaW1gOkrGF12BmfdHmZC1pSP/9EhJfAol9NOpBHZdr
	 uNFaTN8lt3pXVM6qLjo3ZZ3hm3Xm3JJhjJWnbF5EXvcKO3UwR5JhFiYOqRq+LkI4Vh
	 p45fnt+l7GX7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA814E9D827
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 00:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177543393372.22135.3306702037015118379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5805de31365873bb5f26faed2362b601782f6a36c68dfe9b53edaa15fc20a3e
Date: Mon, 06 Apr 2026 00:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775433933
