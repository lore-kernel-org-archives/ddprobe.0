Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB8E18E25
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722400554; cv=none; b=jSiAfGfwYoxvXE9r/8XtrURCT+qSBYX+4q8F/UQxghkI0vEFyIaoX7iDf3LMMhIEo0qL6KVeSGokvLnOzQlQJdXk3GipXR+mC8iM+IxnUSfD+NDMZ1Rx2wc+LE+oqdS1tINb4vCWP4lljMUbqc6w8ECxRNlJllbqdzyVHr0eBHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722400554; c=relaxed/simple;
	bh=OFCNMcdWbhd1bON/FuzqEB9tE2lOGgKC8U+xfqOEYAQ=;
	h=To:Subject:From:Message-Id:Date; b=U/lXC+WxQje2vnWHXfCKwB7kHMIjALbK7Ydwp9hvgS7f4WBd62BSCRTVC5ElGKzlp3hw8VBwa30iCVp6baPvXGJKkeCWsscDi+IWtRPUA6D7UkLljVw6CBzOMhL0zyTTekcLPoYGLGfDE631P82T/1F/zwPjV5z7fhOLHShZEm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kCvqyRu8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kCvqyRu8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73CDC116B1
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722400553;
	bh=OFCNMcdWbhd1bON/FuzqEB9tE2lOGgKC8U+xfqOEYAQ=;
	h=To:Subject:From:Date:From;
	b=kCvqyRu8MB+UK6vtxcTp5XY0JsklQ7eUHVk7w8fz9JTFJBqNyz8OefLnaOJVilB3R
	 DCsuJoqAEZfJeOSaIpecWhYOky/wvA1CpBwyUd0Gq8zHnKKmTc6vYENF05k7RA7N1N
	 xXbT1P2kuF12tUcYbXCqWPXUw+0VWgSpDBfFiU08MFZZrQenGbzroCn13O0eQFgC69
	 6aZxIr2oB+tdm8/OJp075l4CBhbHOcd16aI+dCsTallCGlDdBMrRv035YIJCFBIYB7
	 cOVyrHrOAYwvV9LK14mVYfUTn4E661BkwG6dPWo5CCKhILBtT04ADncmwRppy385Y3
	 an+PQzmw9UDGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C1FC3DA64
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172240055359.6718.12865568782697942094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ffaaec6bc31f31481d6ab717e490fcf2fffe605e56a60bae78d19312a374c03
Date: Wed, 31 Jul 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722400553
