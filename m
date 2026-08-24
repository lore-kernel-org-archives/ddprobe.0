Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BAB63FF8BA
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787565034; cv=none; b=THqVE+zK16cRXhXNucZOFG2GM0p+WkA0v34CPAuyvraVU1B4ANbtOuva3mQw/QZBeIWoF2bWmr1b0/4B8xCMaZpysRIoYMfAbTtuCusa7PR4ClNYnKjhhezFTQgA4bT+JbKvSmzUz3vzOE4ljmsNWi/RIqsK6do6hUWDQz8U0ho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787565034; c=relaxed/simple;
	bh=dUQjuwjuuOQgGDZxpgDEHE+wDngHO2kJ0UvPpxtJ83Y=;
	h=To:Subject:From:Message-Id:Date; b=rvevMuBWPwnIv22GacKtunonWEO4BlMjKsBE3MAPNLRxR+Aga06hOOw3ItUK/6QpEOhRuyQeChKfbaZR3mup2LVUlr7k0ABLP9JW4zgb5g+uIG32mdAgejy1LjK6v+6YBKo69MWdwudp2DJOQUQS5nGsiz4RqXWwalFBPRppObU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ez0NA1TF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ez0NA1TF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDBE4C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787565033;
	bh=dUQjuwjuuOQgGDZxpgDEHE+wDngHO2kJ0UvPpxtJ83Y=;
	h=To:Subject:From:Date:From;
	b=ez0NA1TFwQy36ajkxEy1/tubC7OGxUAunxAlpRpRlu6s+7ykAHEVP8Oo4kdyNs2Jw
	 FE/2fQDGdVWOPqdP4d9pJvCKYOdtA0nkT+0VYUXV6YhY4+B8rxaTP+AqU5bNrU6Lyp
	 SbhD0LlzqfPOiRV8hetS1RU1EqkE6r0zbWARb47+oWWW3heOou1nGD8uNvJrTgXC3g
	 /fEsX9l8aC6cORbQxELKjhbGlw1YWFW1+1zo471KtbvYkJoMjoHbkn1bz9w9xFBYOy
	 ZCc/sCBGXkOkCOSMH3uaFWZhUliadL9ez8bLE4w0xLGe6hDTEVYR45alWRgXADTOP9
	 6IFFS1GcAMn6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA33C5DF94
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178756503369.4981.7046915798653876061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bf04b135f311ef0fa921896b1cc0605ea5f338d448e9d6bf4a0a0a5f5f8c321
Date: Mon, 24 Aug 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787565033
