Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A231CAA9C
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746837594; cv=none; b=iluJm8ZnS6MzYRKV/2oSczG2eSjTF/WpeINQ5epifBvcGULCzERsERI9ciJ4JUJlecyPgY6yCmhjlc8EHSDhrTf6EqxGwBRSL7FxU+HwkZ9TLZLzo4fmxdwzooVGTxBAvybtzS4r0XEM8ij9sVZKlBr2Wm4Un2JEacPUv/oCTs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746837594; c=relaxed/simple;
	bh=BssQXZ/qtNPOGy4zLVLGY8vPBSIBwcIblK+6VHUsDb4=;
	h=To:Subject:From:Message-Id:Date; b=lfWnTzVDABbnDjZj5f+BpkJcMCJ8RM7NKKWAir/p8ekQaiiEPh3RQ/MmE/5+s7JW63sjcV2R22AT/kKaTS1UI/yDnLpk3lb03X70wdg4AZFMoy/r1NLNuBAclO2Y8WfNWzzBpCCKS284Xc98kjMlZWKPw3Wc0pZEAxGenzgeGOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fFAGnTVA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fFAGnTVA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A9BC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746837593;
	bh=BssQXZ/qtNPOGy4zLVLGY8vPBSIBwcIblK+6VHUsDb4=;
	h=To:Subject:From:Date:From;
	b=fFAGnTVANTjDHYw73D/CJgn/V+nTom6xOsCQZ6SEVJ6yHt6vXy5XFvgs0C5kwtMSE
	 iChk8MUunGYcPGTlTqqbpsL/8mV6GGfnfryRG80IJ0wWcpH+63cdwhvhSjQZDgyY+l
	 YTouUYCOyINxmTaUZo+qbFFb/wAOKS3wirsQvawfIZ05NgH8cHqg688RD9Hc1kYWxx
	 h5QUNSgb5iBoJXIO55EzXYDzAcaz9ZDUA9rsMN6ozDjAMhYE2Y3Rf2lAwyVoXjBqeH
	 398a3wTSf5AzGGSGO2gOh+4cVxrlH1r2r64IqeIxd7LnyZ0P/1r5R8qsk6cpohRC/E
	 aSApUhO4uQylw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950B4C3ABBC
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174683759357.18256.17761940388174590387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76ef29f872bf50954db0d3a8455199cd356b0cd4e90f77c68b0d2dc2742b558b
Date: Sat, 10 May 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746837593
