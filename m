Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15BFD29ACF6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 10:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772706894; cv=none; b=oUxKNnOw2q9R12ZeV2Z7bC07kqtq59FhY+rofgoWRlMfecpVLAkcGOVT6K/1kLKtGfSUXrcuYFYcc2kyTgpVF7cvVKlDCHdWgKtNrELn9w3uYI+zHqkyztBkyM3sI4VjPTyOB1JEtnMLOUbhWU2seK2hbQGK3faOAce6g4Cw9oI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772706894; c=relaxed/simple;
	bh=vW4R8C5kLpUrKqIRutgvld3V0bG8oujX81HjDhLn6Mg=;
	h=To:Subject:From:Message-Id:Date; b=q66bYG5YnEHACgAHSJ3eyR3FWlMdXjDBvpTtj1TQj0vxSsOqlyjzM/b6QzPhOR8N4Qc6EoYp+S/cJcj7jJlCQpIIFSdE5wN/4+1gy8suN11NRjmEI6pZTSl0dUj8MxWKV505tQxG2P0j24rnKM5oqllE/jVu0zruPbyrWePZ79I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=duWUOZ9R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="duWUOZ9R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4138C116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 10:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772706893;
	bh=vW4R8C5kLpUrKqIRutgvld3V0bG8oujX81HjDhLn6Mg=;
	h=To:Subject:From:Date:From;
	b=duWUOZ9Rcf2vdRZM9Lt3IF3aun5tBA3pMPI8T92ded4OzR8ODTu92VMPjN7Mwpdrn
	 T2WUQU0qXZ89P0ooNB9WuP+glVKpA9wdZyGA7ES4QIbzrspp9R07thpWm20wNEtQnZ
	 /OLs+2fRfGYTweRlQH31y0/JCf1kxmeaz63KOF/l9hB9RE2HUyCqifYie0zQedJ4JN
	 YVCldC+V8veRAM3olmU4OEbh5WiDh1zuyUZQm8xrrEZrQurgXcykLtHpV4QXZOKVW/
	 8wruPgU7hEpRyIqzmPWJTJwr0+XJX2r2VQmgAuIELfoQ7Xbxvegs3mmY4WYKY2VWRB
	 uOZp0cfbw4Uvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928F4F30931
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 10:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177270689359.24128.10415796852281432214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 972c5fe02030336e64c13824a1bbbfd4790462320e3ce952220f3fc7d336cb0f
Date: Thu, 05 Mar 2026 10:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772706893
