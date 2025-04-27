Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 460DC19D06A
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745747994; cv=none; b=UzV0oUI4jZq1DTMbqBmipC1Uj7ew9yU93p5NM8MQBCzwTA5fOB3apNgvPIP7DaSV7Xp3+07Txmg7ibeRu9At447510S+zZWOPeiv6rdMtvc5BKRWvpnmXijDawFFSh5MPTHkCYJWAN9K9XIG77HKujUzz7SEdxQWYU6ztfM+D38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745747994; c=relaxed/simple;
	bh=Fpf5u74fKmz5ANb7hUTmvYqBsEysUV7yvK+U/avLKE0=;
	h=To:Subject:From:Message-Id:Date; b=skytQInsnWzTYLqwaBeT7xLcAMbu8b02ITn7A6ksUyZ6SRHOT92v9Fc5A55vw9T5g4rIdtt3rDKBOM94UWRyRtV1tBiooo5LOvMu4U0FiMLx3LkcQ0pO0lr8GAU4NY6W6UK6xeK/R9UYcyTDjmVGaEZoyNkWl4Dtisx48kUcQiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FacYCOW4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FacYCOW4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4096C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745747993;
	bh=Fpf5u74fKmz5ANb7hUTmvYqBsEysUV7yvK+U/avLKE0=;
	h=To:Subject:From:Date:From;
	b=FacYCOW4P2L/qzGfmnAMIOlkcE1JJ/rMpA5wAIDx1BMQrlAR/X96JxpK2ssA8mJeO
	 aZXDIf9/FeipCwqrwP8UTyY7RjkxsTIxJ6pXG5avzp0JlFyp+ae1oBQ5lpyzJbG89W
	 rKy4szbMadTz3iZ5B6PGJUkwbSDrX+dZqBliQKx8qbKGlC54PME0ERyN4U5di27/BF
	 x9pvQSop63bSDJEnCj9227OCcDlRrUIS4e0BV04/1Q0dvWLq/7qT2lg5VW9J6IDqd/
	 /VPqYS9MEVEODx4VrQiT0PSyzEa5VbwQbzrEqWbH6v2AI4fdTrMQaqED72AqxEtjF1
	 gGBoGDlFns0Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9238FC369D3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174574799357.16486.16577911326857604523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c93cdc105a0b25bbe105d8809bbaef51b39ebf855b77090b44517ce2eebe0aab
Date: Sun, 27 Apr 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745747993
