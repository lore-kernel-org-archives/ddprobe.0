Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B2CF3B8D6A
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 10:42:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765363374; cv=none; b=ZU+2Mxd0ybE1fNrxVa547VDNtbRSZaIy0nZe31kTN0Wqn5ukX4CLqUJItTvdrWBw/AZn0Di1y1Rjm8P7a3Lop/8AU62+pxBa9jCud0JkwpDGo1cqaGSIdI5FDYtzU4hR766/51wjq0sOYqfXQQZDIDTjrisZigzdv0Rc0t5Fggw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765363374; c=relaxed/simple;
	bh=smcHBmj4rHTYVUKYDCd51uub4hTbHjw2klPCHNUAmcY=;
	h=To:Subject:From:Message-Id:Date; b=GaARsMXTtvw7aAt5Z8yD5eTW5k4ItBlzyhVKgxlNTYvu6T57PA7Egv78JitWEcqfoJU7BGY02FkWFtXg1I3tmpoib04b0W1VuwtCdTDRJu2zI5Oin1ZfEuRvH0jbvThLdTmQbT2U/HcUSlCPuRX8suhkHXUSvwtTbZIVn1HEf1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wr21njp4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wr21njp4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43A9C113D0
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 10:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765363373;
	bh=smcHBmj4rHTYVUKYDCd51uub4hTbHjw2klPCHNUAmcY=;
	h=To:Subject:From:Date:From;
	b=Wr21njp46vi/KvtxNYzCghzk+47E8WqVMtAnmhjaH3TErpkoSgOBIyQ6kYiAaJQn4
	 cheJ8bMvYpb8nrrLFEQaUzLY/6mGqqlX3jS9qURor0vxFiZ/sIyjUtM26ynn5g3nDQ
	 barnpgdqYvxzIDeISCb4KyxFAWF6HZVL5uEU0qP5S45EgJHE5CvgqeLkmfj3SPLfmg
	 V+dhfQmKyQFg8ufnPiauq7BgiJeRyzS6deZFfe6YHevWuktyLDcE29nyFzMaCxdCtb
	 xAOTDgjsmKhe/IGz9r5jWTiHSBk1gdz66ZAmOjT2oGyGiKNWFSTz1JD42XUO7ihfXu
	 0Xi+19I7uA4Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9098ED3B9A9
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 10:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176536337358.16107.12691716102935527320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 855fabf6b5705bedbc8ae568095c6fe7cf52f5b72b4540d3f4d9eebc1ac374b9
Date: Wed, 10 Dec 2025 10:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765363373
