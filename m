Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372502222C3
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744932594; cv=none; b=aD/bcapSKDLh7UFxmKmN1kqNfUO+psloM3BAoaYJoQieTZJz3cZTHshOJUHhe5q77z3c7AvZOsHtnEohsGNgFVa9w3WkC4YDuuFmp1TmHBX33CFjPTzvjQmAU2Yb6Mrn+Nw40pQTmQRoSTDDZWdcSASrHJA3UsL2aI/lKwLCQHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744932594; c=relaxed/simple;
	bh=eOnUT5V32j15BMlyHhmjyR02uUxIxD3fxmgMEyooX70=;
	h=To:Subject:From:Message-Id:Date; b=PscEN2unebPapvElDuhJpbFYMeGfNn0XUYyYPJQak9vQmFFGFMKjKg9F1ssWvzs0X7mFKUy9drE3VD6JK0NYRODmM497cxZHDvcdbXhiEZu0mbbSrbWuIPpy7BgNdC164Gl672tK0McXRIoGxVZO9IgipAayvCd41mulee7YtIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mdtPgb2J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mdtPgb2J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59EBC4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744932593;
	bh=eOnUT5V32j15BMlyHhmjyR02uUxIxD3fxmgMEyooX70=;
	h=To:Subject:From:Date:From;
	b=mdtPgb2JmtgmBw4An7jQxCkdNWrjFrUEvF0fmTDCpW4XiwAECuROpcOiwntrB/lBS
	 bYI6MotWPa2TNAfSMFsJlULxPuresc3PZwrmVJoP9/4kbunekWs4ZQxa4zDLTZdrzC
	 nJJqQekasMKX9UZkstHygcTpiTQ7Dcg5dQC4q+VpdbSM/sRyVM+makWT1ixajVs2x3
	 vziJgF7VGv8pi+uF+brer4ZTydn7ZoiTeA7qzgt+uxY92WfikDXdClKr59QgcNjs5W
	 ZjcqU2NyMW6mIxbkF1X718a2rqr1Z/UyXDqK661CvaWP6DLZWvwTEMyAxFqr8vv5+D
	 ed7v6Er5kUmtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945C6C369C2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174493259357.29491.6905770412910787383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a71935b54a6df27c3709236c95d1a11a1dbecacfab0ecf839b95fab81bfeadd
Date: Thu, 17 Apr 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744932593
