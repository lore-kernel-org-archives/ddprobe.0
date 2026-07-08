Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC6E2D7BF
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 13:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783518514; cv=none; b=YhvsUVcwhBmAuH3vw8I8xpWNwDNzvjZ2nCsUVlJzVYNST4qwIm4nvi7xnBvC7hJMuJ9/Coqfmfpv4fF9q0/2PGkp2iRc2SawVLYFdhe16fij5H/a188g/S7nBx6R2elo64SVqzzkooO9NmmPTPx0kU3EdI48gabheNVLXgpI/8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783518514; c=relaxed/simple;
	bh=ijUPwBUN7Bd1XrlKIEmDOfOG542Aj47IOER5PP/YV2E=;
	h=To:Subject:From:Message-Id:Date; b=T85goDMmAuY293EEU3GVZHedLAQS00qE7TtxT//4JSEvMckFOPOj6bdV0l12SXCoDW7mWo2qIjbI0sHgEce8pVR6Z3AZ0CKgAAG6fIrBHGcIWvwj52nOd0EO8k2BrAxMFx3jzyfxbBwJVkfFBrdrK6mwFewvoBlrPtkiMA+9CWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IBf59cev; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IBf59cev"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8397C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 13:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783518513;
	bh=ijUPwBUN7Bd1XrlKIEmDOfOG542Aj47IOER5PP/YV2E=;
	h=To:Subject:From:Date:From;
	b=IBf59cevBSOph1tUCmn08tpKwlR7uRhob19iZasur38jVACYNFxwJyJ90VVsCtxkn
	 0OdhWyCUYk3UKcga21deMpwhLvav1ZguAJGVgNzhN3ejUpTu08zRgh0UPQ3YeH7VlE
	 f7t2PPaSjrSI9qNq8OXxogSaNiXzKMLG6r85ohL4xkP4YJv+MqHTjWSYe4PbdiBPyH
	 HTMHb8Bfp+bE5D/pT50VFqf4KVnbADCEhllZ44mLCwI/ew07JRH0wmM1IQynp6vkAQ
	 Kcn1AWsZKWqpXnAOBCOxb0UVYq/j3aOr6P/d4ImqYIfmhKpa+BRWGFYWAV5GIPRs3J
	 yTiDiWOuTBS6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B06D0C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 13:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178351851370.17298.1983995325488272708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a86068ec80811f29d859a6fe7d6cc160002fb1b8311ae3cb94202340b03c66d
Date: Wed, 08 Jul 2026 13:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783518513
