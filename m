Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 482082D8376
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761710994; cv=none; b=hTCrwO1SvQ5+EAV8hyOZalBhr4PFfO3R53SgLafNlkBlcXrnUJzATkPi12fEf42T5Ve4PM2RzyTdPdxqFFKJ5/XCM17QJjHzqaG+EpKI3oUu31WkqK92StcfcM7+fcpMKKrp5ZL7RQ901toCbggoG8dlWx3qYHgDUl5AbLO9aYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761710994; c=relaxed/simple;
	bh=hjgkwrsuaBJ9kssE734GnsUQwThHliRlJp7IsGeYlx0=;
	h=To:Subject:From:Message-Id:Date; b=NFAb3ch3SQRdMu0vZzSIXIKn+3bRDVT88GGXF9kbGZCij6TS8Hs4CHwkabTdEl0y/gOicyAM8CYAdk80UQhshUjTZB/TJng2H002DPg/6zdQjQhOkIsSWC6XGrp9Yhaz1IVRJQWQuDtAgvv3tv4bOBPQMPzjpces1TDWvg7oRMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uZEwcjSQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uZEwcjSQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7137C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761710993;
	bh=hjgkwrsuaBJ9kssE734GnsUQwThHliRlJp7IsGeYlx0=;
	h=To:Subject:From:Date:From;
	b=uZEwcjSQNAMuNPHoCIvy5xB0n2FzegoZkJt22n1XF/DapeOklDV7p3k8SSQp5r5sL
	 LVAJ4HEZ+e0nP4kvbHpPqe+Ou0vtEH8KGmcI2D2wTzqhBnFiZpf5Nzwss2e820XlDp
	 /Bl+h3Mb+j4MyE33yroU4NEOsTS/4SooPCqe0E250Ssuv63JjN+ETOWkW7RZmhYQua
	 l6wQWOXgjC1vx5wOvwvBEB9xhW2QvD84M27RxrzJAqhVwZ0cpJuxBi2Nfks7YoO4An
	 ogYEXCLLGDOx012q6YzT96onxxKOS5ubAETIZNfSFcOGYHj/4EYnKfWqbX254ycE5Q
	 b/eXOOZ78UJ3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9348CCCD1BF
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176171099359.13318.4676639105942908330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8eb40cc9dd371bbac72f7b31d89c952c427333f76ff1d588c999e2f6108b34d9
Date: Wed, 29 Oct 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761710993
