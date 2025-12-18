Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07D8E2F6922
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 23:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766100834; cv=none; b=OkAVx1rLQrvWks095mVVa7GoUFME+9lAKu/QErrrKN1/5enrT4vTUmRbWkZfOzUWRAreyyjYJ6xVHncJlLrcSIn2KxFb5J/WxxSpStf42O0K2AyNUby7dfpkDwO5XEbXi57Yth1N9wgStE/RtQra14dionSjOAjVCXRCEA/Yi2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766100834; c=relaxed/simple;
	bh=7AOMf2l4HRLgvkaRCD8hhO0md0Ng6g6nIzdvjWcwYZE=;
	h=To:Subject:From:Message-Id:Date; b=hKBFJck3UmLsqhwtzGiKMZZLF1KyBhLTgdDdNlmWP9FlLmcKBJNgd1q3epTkNjXAHx9JAxWarEwWa7PyG469muA3VxkOk/patOjbTeq8xxWH66fMxn/CB1Q+ik/8/Mbrf3qz1dOYziE1/7GBxVGTBfZxMaF2MhheNr8fyIVhO2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZyiH5sok; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZyiH5sok"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0721C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 23:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766100833;
	bh=7AOMf2l4HRLgvkaRCD8hhO0md0Ng6g6nIzdvjWcwYZE=;
	h=To:Subject:From:Date:From;
	b=ZyiH5sokxRZxKqctxfpfbzq1vgGu85xBLzGYEibUA3sqxoRn0ekzpiWY4du9zwcRA
	 2HlOL2u/4ORMlHy2+39+w3/0AJ64N+PFyLi0i17GIdZ4pxac1uasJioF5ABMQTX1dQ
	 0EtEJD5jXbvjiuRL9rAWpCLhFNNO9LVPsA4PoRhbScjHhllbFo613hrzWbVFUq5OmT
	 /50YEetQgkV+Mhlvuf4MRD7HcDTmbYg2E3FLMRYqw/pvPfwKjKzU+dIYN4C7ODxkPM
	 d70ptCh1VJVLAzegLhI4dRqKKU3mCFfGlD2aVcUpbXUHuDZ+QXadc83wR55wLzC3ZM
	 iI+1PPXK5jCsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CB8D711C8
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 23:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176610083358.27232.16213456382766691099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 196745c04a31c8b9d8e4331b0377e7ab8b64d78c2eedd5262927077a1df1d5d6
Date: Thu, 18 Dec 2025 23:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766100833
