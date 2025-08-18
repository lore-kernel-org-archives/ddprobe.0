Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C92E298CC4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 09:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755510595; cv=none; b=B7lH5TMnPA29BDMp5vTx8hQ4PQQBBLxz5dy+t5XIyaOxjAi6pKou3TvqCeRRJmdaPs2TZHaYxd/vgRXfcB5LFiY4JIZY0xJGH3oFVaErEvRUn+BQRWiUs3cM9X5HiwWmaC8XlOWdkDRQ20jdSFrsFD1vUypRsa1hntZPul/X0y8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755510595; c=relaxed/simple;
	bh=3an0YqjzXhfHhkHQ3kLzGKpfexeNz1kTTF3NeB0qlOo=;
	h=To:Subject:From:Message-Id:Date; b=C8DP71ml71Uu16cIKGz/Ev+11y9BXI2W3ydp/wvQ9mcv5A3WMWDvVh12NL3Auy3Knwwuqt2LMLMFKjPPMJHvtNa2BJ3OPLVhujuxmAetvcxZE9V1BM51CQhNTA+FN3iaoX3pNFmr6gKTN4CKFGOyRAHx9mBlrAWFP+e0GOPheAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=URm1RrEX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="URm1RrEX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65E2C116B1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755510594;
	bh=3an0YqjzXhfHhkHQ3kLzGKpfexeNz1kTTF3NeB0qlOo=;
	h=To:Subject:From:Date:From;
	b=URm1RrEXJnIw4G+aAo24vLba7kfOMVupNX1xyJ8r2mmBLv+vDFAfB7+OCZUApmvZQ
	 qa7xD1CF1UM4RlhcNTW4Vb9gq9Dt/wy+krlcGBSzZDoQb6QatSUj8HgTn06fh/HKQj
	 QW/fEbCfSPROSt/Z8gBhynibAHaGBB5UyB4GK9nOdPaG+7uKs8uwC7dXWAm6L3Iybu
	 jJVDnVDa2UXOk4CI1d1n9BTmrEANI6oD9lL8zmA7k/J0hG2hEYw2wC8BBSIGOb70rG
	 cs8SGwUrOFZuVvzXb9HvayUrDVp7ct4bbMpcx6wHqW4Xef5tWAt9DmMqkjWQD4/8CW
	 Lh6lcBobraxYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95204CA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175551059357.19514.8224991993351971620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec3c627e502227bf34aedbd4148c4adaa33dbf154ef953f4bb6e055037328e0e
Date: Mon, 18 Aug 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755510593
