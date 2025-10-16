Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C447314D28
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760613594; cv=none; b=anGkccqShb/lyPHDAzqVD7etN2uPWaO+yBV9ZKd5zyNVAqG74sx/NgHOHh+UXRN5Tg5blMAy1V879UJCt3cqq1MtW4H86WF9gtmBRpTVzG8usSdPMGknmeAEWyA35m530yZ64dQjtP2rZP4nTh1t4KDepDkSfYvBEn4e53Fn0d0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760613594; c=relaxed/simple;
	bh=WBEDwRp+ia8zO8+rExwdKlrypd3ZxL06tO3T5FwD0G4=;
	h=To:Subject:From:Message-Id:Date; b=RzkQl4ZwgNi8BHw+kXoSOoJJRPJ5I+ZnoLa4aHryXUdzVuW2InzOskIuCjPeYpg+9y6raJfnEWLZx9LtDnPhJoH73d/EIf2jz2MgAjhJ4u7Vh8vJxIiB6g6GdkmfM0QsHlN5GRH1+27ho9FCSZ5lpYvBLENpyX+PpWnWZuVdxxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VxF/Pv+z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VxF/Pv+z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F3B0C4CEF9
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760613593;
	bh=WBEDwRp+ia8zO8+rExwdKlrypd3ZxL06tO3T5FwD0G4=;
	h=To:Subject:From:Date:From;
	b=VxF/Pv+zIkca1pvliQbAEh1cRZytg7TrS+d5tx8XqsQUhBHDvDeCZeTJ1ziS2t5Aw
	 5xjSwQHfb5RBaL4lgAC7wCjVaJNi3T9TD5iMNeMxzLC2hie3qmR+rlc/bHzkk9Vt5k
	 dsCgvPO3mwavOpHMCEGd+VrIKrL5/doqHkxFM5qmFWDHAn5KWpiZxA+OpbsHboUMtY
	 nUCpbGX0ZPgVXW7NLQTrOsTwBO1WT0GqyRwuP3a7l+uMdhmsq+HRFoU8gIv4mP0PWs
	 /n1kSwCBaCxcFY9nJO8nZA7+8Z+bjwzRCDgBz67k9IsQ81vdASlLeS3NwV8bKyShYM
	 c55RQADqiHebA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90352CCD194
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176061359358.18602.8660468698879943143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f77b1a42c7ac59c7fc693b1199c67da824142039f507b75cd7554f7524740f12
Date: Thu, 16 Oct 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760613593
