Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE60023CE
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738739753; cv=none; b=lFApQgaKFbyiFNzCcIR0ZcpdjEVvnRyFWLTTLxItVP6IkZoNrEmiCy99u+OTmHjv3JnjHmX4O4jN5b1Gd3UltEYVgDW2H9Xu7L5Eqmmz4EDMbIXovMgOQAu72n7LVdAr1Gg0wc7AtpvO7JaRbkY3x7NFF6f5LJqLW52lRHg/dT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738739753; c=relaxed/simple;
	bh=bhDARutO5hMIDJMH8rtlvTWP0esZQqXYrNaHlhBEntQ=;
	h=To:Subject:From:Message-Id:Date; b=Rix+jztAG3J+5fcNGMJ4MUXDneT0S4KeZmoOECocORuQ9en0f8RyfkU2G7Dzu3357velu5qNzj7irs5tUcBPfGUTMaOFRmWVcuSjwfHj4dwfqnz+NsnT1MwMZXAwS3IyAOSi8AopOPxcFY9FKWJDHEjKzr00y+L9NQ9CIU+ReTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=io/ifBPg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="io/ifBPg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10E7C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738739753;
	bh=bhDARutO5hMIDJMH8rtlvTWP0esZQqXYrNaHlhBEntQ=;
	h=To:Subject:From:Date:From;
	b=io/ifBPgxn/C9U6/KwN4sfOnVquMhcMIsReCsugT6lHcPKU3O7rnqfCp6hOUiVJN/
	 4PLPVIZPlBoYnuz8msKWXU9GAeLxap3Tq3pxqR1yh99bfUaP2q7A2k9VbXnn5NfhFI
	 PI25qCu+ODN3jLQx+Gi7DflDU3P6hhkNFOVEnBjYB/7x7w12uITl6ZhglDkvWdwqgV
	 RY7JgLp3csYKN/jTC0ccy+w/i+HlwkTHw3aCAMyZW3WxtZD36psxVgkJisaFH2YOfH
	 Q9nXes9SI0PJ0POQTU73XOFr0Bpu0GE9EvhXxJRaP430VZJKFtT6zMMRlu01mHmDZt
	 7Tv5joGofnVug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED9FC02192
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173873975357.21888.3573600024027417892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2ec5f02f78f330edd65d0fe475beec0c00bc691a26a7f4f54478c4c76404326
Date: Wed, 05 Feb 2025 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738739753
