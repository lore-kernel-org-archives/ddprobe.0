Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 548112989A7
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748021396; cv=none; b=JE/dN89cFSoHMowOwZWoVrymENKLA7Sx32EMaMcquBr/OkPWgNk+sGp6D6HEJDkjolifY9x2FsYwkcrp/lDlgQ9HpIxiinIAH0e914IaZQO/okm0+9BGMVwvogyjDmZ0qkNj7Ex/llWv3F0eXwR/EkE7UFRTZ+4kt6j8zaispic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748021396; c=relaxed/simple;
	bh=qI4SKgIY61KbLYmw0AsIgPhPl4YgXlC8OaishUXJsWU=;
	h=To:Subject:From:Message-Id:Date; b=YMNDOkG3VLAE/7Qe75+CX2Wc8QntDfDU7+rzVukSbLzfa/v1wkPQ8adLD8fu1xZnT3n2k+2KtH3scCbdA0eQoIKd3cTW7gZ/05wr1HIDdpU5BiqCIUfQ0lUZc+aRaPTLs9y5v/gJzPt5sxiOtYjQpC9UZnmueOkVL2k5xPWNRVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ulmwLIzR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ulmwLIzR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC9AFC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748021393;
	bh=qI4SKgIY61KbLYmw0AsIgPhPl4YgXlC8OaishUXJsWU=;
	h=To:Subject:From:Date:From;
	b=ulmwLIzR3PoaRcmn/q8JwbDMyLCtSz42kswcZkajSiFKBbJxKydDjm1Lh8db/yJ/f
	 eeHIYsFTHlEOnB1LoBBB4Twki7M3Kz437QF6h8PtGmjox461V0KDoMrPuLW6MPLKSb
	 qcl+YUhuctt/WeLmgelB8kFZiWGqwmtDmls7LuJGpS/oP6pEjU3p93CnApdljTc6/w
	 lfBoael0aii/+KfY6r+ML8nfLxDi/eWdtWtZspSFJSAFz074/TlLw4lrqlQC3vaOYG
	 sB4sYZH/DGNs84bJphWOFk7iNZFnoQStakd/S0vzoRNnm0fL1mjOhnK0aP0pHiubgR
	 /2gJW84vr/O/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9828DC54ED0
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174802139359.25991.15568627233562402134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 001cda11a8b162e60b70e5d90fe55dbd24392bd3d1c8d678f525a4957595a768
Date: Fri, 23 May 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748021393
