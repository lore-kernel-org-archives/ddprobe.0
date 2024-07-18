Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FC50620
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 05:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721281523; cv=none; b=Byr4jqy3M37tVGtiKxQHM2NhTmchx2YhmFVad2tfyq3N8K3/JHOYlfBwxgU9GZCyXFotIth6rgXZehvSC4PIqWSoBBfp033fyQCmkwjzXiBDG4aL8KvySg2MJfWZJzgategnd7ICpfm9pLvMZl4/QtVisXwaQ4s/ijF6BORVlas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721281523; c=relaxed/simple;
	bh=GjIPn29Dcz43SDMobo7WrUACtbkLBezw2W6hW1em+bg=;
	h=To:Subject:From:Message-Id:Date; b=H+v5TMGmaIbqz+YcCtCvg7MG1Xzvtt0ZfXndGUOeQ9bISblxEGOCPSM51vsGi6BgGSNRxXT8bcAJm439hJpOYuClgkisE6sZXub0qwTGPLhykBawFqQYSk7ZYF5moaGaSgsXK6ooz/Hfa8NTk0A9Qgv4tWJXmAgXA3Qchr9JUpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qa+bb7Nl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qa+bb7Nl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCE6EC116B1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 05:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721281522;
	bh=GjIPn29Dcz43SDMobo7WrUACtbkLBezw2W6hW1em+bg=;
	h=To:Subject:From:Date:From;
	b=qa+bb7NlKsbdigfhn8N9F81LE888pKN/oaEySsITE7wHXrmaKoZLGmvxrMSZbHlSv
	 WWvGFGZhH50Flr0hu7QpeprAamDTMs7BnbjQQIzGPz26Ahqma4MaysWmS8ORWjLLgn
	 6rixPXcdAKmahxfDPbsYmTMEiwuzpknIt3zlrkL8dXHeyyECiPigzdBFm4eM+pDJnn
	 u3vBQHATvqV6/TmCqVTy+OYXn7+8rYgTOmrBxX9wfqDZMHPnUzf8k4fCS1rZhvSSj3
	 2lgvhaUfTV/gA6CgQzkRB+f+8pqSeL7asw/VTziVr7TSdREfrLHviBN895Q+yXRqqC
	 7+JWYjR4IApvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8156C3DA60
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 05:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172128152277.30352.12297658639862207888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3584a603da41e8e8c2a1cb88443721d156e57de7d5f71cf93b7f0d3efaac12c7
Date: Thu, 18 Jul 2024 05:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721281522
