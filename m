Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58E7B46C4BD
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788902434; cv=none; b=BhPO1G9Jm3Rssujs9ejDWjqguvPOG+gXxKyi2kQeWVtMzLGGwWvEOvxFBh7Ybz73r42QSIPLi2UrxzGnTNvmSVuW4D9chjIK3nM5+gND8WqPy4VGkX9h0pnP5ZPOE1VHasD3Uh29wTOyLNJ33U+sEbbU/5rNBni6G8WHiReFKRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788902434; c=relaxed/simple;
	bh=WWGPeQ5RRi258o7tkk5jm3pYYdL7yZqEPYTFR3YDUic=;
	h=To:Subject:From:Message-Id:Date; b=SotXIHLazDTLCilW/6ellqpbKkvHL0JZVHlNn0Z5ozMspYzzxzMRvQpVSro+1De6dYO+b6yDwf+QiTykq/VUpavlTWbshqIbo5kdg3GncAN0n7AvVRgBt5NFplxL5coV0a3hneEmsrkcLvN8hVO13upEp0Hqo/FT03TiCOJtY6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o2QA68BY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o2QA68BY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1D72C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788902433;
	bh=WWGPeQ5RRi258o7tkk5jm3pYYdL7yZqEPYTFR3YDUic=;
	h=To:Subject:From:Date:From;
	b=o2QA68BYb3pHWxvSdfLgQj2MDGfgS89TPCNXU62/dR9T+3fda4KIim88/pTztuvJi
	 PhwCMnKgTo/EMIsQl0L7YDPdp3/iun18OquiM7H4lpaVP/evI6eMgzTQEYlu5LTH5q
	 7OGE5jq4lz557R3c3u6afd4wQ7dK6LTDOXmI73h0/oD1pTSY5HEsUKhyRKFBzP9hnh
	 vCVH7w/JRdBbvnqwNC5mTHnKRDSTZH9TwBOapCOAssYbazMtaY/bzfMAyNgvyrJ6Ph
	 GTgGQkmMByTYmeM9aQuE5pqrnfoPQdos4BvZJeJ97WduztgxYDvzi7ha0rmVlC66XH
	 4U2VYRWAFEJbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0771C79FA1
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178890243370.2878.6302699600199331523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 335ee2fd1b3eda64f6ec3e1313736c21387d23cb9b25dca21f6da60b7ced2fb2
Date: Tue, 08 Sep 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788902433
