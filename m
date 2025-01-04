Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 464A1A932
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736006154; cv=none; b=A6E8tsJekX6ZR/u69FA4lD8Mgb7LkTjo3a0b+1JGWtJn5amoXwru23+NrWdwrz9o0WLdnu4d6dhPh8vfpclIQDyccBSHx/q9WOBfxKEIPBHl3VdJfVmZvJ1J9a0jy50AtyeYkSiwGjyof2KOH86YMxNLpEF3ydfNwQFFOgXLm4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736006154; c=relaxed/simple;
	bh=/da4CnTUWzUqmjK60S4phBjczGEire5gWwIZLh6hutI=;
	h=To:Subject:From:Message-Id:Date; b=TA3EzVlmcEnXMvdVC6RulpJh1ow6z+2ruPVzNomXlEZHjBUAN/tMg2buqWOiQO7hdGsQTKRefjwYz2dotMmN3AMtHmiHqr9BeENcfs419gRkhNaiSHnMFBNz48bTbAgpQJ2iq3bWGEBxkrOofiiUIDXJEG0K9aEDAL8yYby7HhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hFVLIGjw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hFVLIGjw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3778C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736006153;
	bh=/da4CnTUWzUqmjK60S4phBjczGEire5gWwIZLh6hutI=;
	h=To:Subject:From:Date:From;
	b=hFVLIGjw3nBLITFnfnfi09Ux8KpBbA5mRUR0+lkGnLmJBeJttKIgbxSsxTj5UCPGG
	 HoonWj+RE7KOEVDhW9yL7rfuTbPGivhkupSHHoLetL8FC7UFNpEJILwG+mZDIpWItm
	 4PirbjqqXlE5qu2wlDcy4rndblmYjADrn+/URsky+4NcNZzxnA8JplWb5WZKInfzQ5
	 LEeu6u+5rLgWEO8tbG3SOl6IKiFpffyef1JhAd5GzBlQv6WGdyAUqPEAQuAiW+1LBx
	 JKTPaXbQgNIT6ovk0jCxDsJDtszjacS74qFywr8J49PyTGeceaTwnWcWGQa2C1V9iz
	 FKEF2KSU0Lmdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD09E77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173600615365.14635.10785509214937389161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c91c5fc7e58fd1104c6a73e8e7627ecbf75fb5fc8ade1b5ef4ef20efcefbc68b
Date: Sat, 04 Jan 2025 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736006153
