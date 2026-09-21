Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F1B648B37E
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789998634; cv=none; b=ksYAFjzbGIqrjOHcxxF/qZHT9CyfMd+yJUAGIFiQQthQwYjQYFyfpHv7Jf2Xt23XwvhJg25SkGc1EljQOJCud/c4XyqUPQlVBTOrDhOYYoZ2E9KXJP5LZ1AxhoxObr6ur+JhEDTPQ08V/MIY6WyFjSGQFVgv3gzeTvzc4zuKE5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789998634; c=relaxed/simple;
	bh=MUzhEdNgbn38IeU1OKL4mbrMx0fhfyd7xX0fBuK/r7Y=;
	h=To:Subject:From:Message-Id:Date; b=J3LtjZZRBRE2uLUrAnCixHPxcA9dJL0PQ33RN7HRCMWC0IJvpihh2LvoqmojSYGi0UMqWYmg+X4s4j7Kmjz0uo2Y5KM9WQxII+M97ki0Kj79r+ycECOTTRZAKtlq+tnnkgxUyhsUVZx2g0LZ9CzPX2u25Y/dFfjmSuoXrN0n8yg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dpekoG81; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dpekoG81"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7464C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789998633;
	bh=MUzhEdNgbn38IeU1OKL4mbrMx0fhfyd7xX0fBuK/r7Y=;
	h=To:Subject:From:Date:From;
	b=dpekoG81Co4y+sXLQodaWrQ+Q/2kdGEdIrf2CUZ0rkGTDmcrm97VfxS3172vD31Hg
	 xe0lpNfl7geb2Ad77uvn+O/lVa3hkqkjkmwfSIOOnU1PDSxB4tfnXQVjkmcD/pCbPY
	 wcfgjueLaysVyAF3uE3o4gU0Be9xNtPvT7TlmnYqiNRLVIzNbW6XSUWvRBL0YGbAzf
	 FqA9hCVqrmDrLSRyWsEFkakl/1XIuRscLc7jFiHPI0wLCpBzU1nQFVa1B3MsWRtO79
	 NLWXbxpAhVLImlMGwsW22HpCitCjTMFxB3FRO1Zny3kCfmVTVTKH6yc2H34y4/b/mC
	 KN75pn7RV8Ivg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBBA6C982E6
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178999863375.8082.12082839192290083150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5a6a1c979f592cb139cabbde6fff8088eeb6c65431f6f69299e864885feecb9
Date: Mon, 21 Sep 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789998633
