Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 146C417BCA
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 01:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765158774; cv=none; b=XIvX9HlQecNaZ+fbCzAsf4Y89gqQETAq2uVi4iJfM6cEHIwmjhuxr/Hn5FoJeN6skkU7Te1/aEQLGGaSqOanKarc26i1hMKNrjl68tvOryo2jTAu/iNrBpdIx9UCFG3uyBU0U3SNc8s4qydvM/an0qBGdyWDwcsNiee3tyUYWV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765158774; c=relaxed/simple;
	bh=755N03DS8yK22dLTn5m7eSyBAjJVK0BOKfq/HYVWRxo=;
	h=To:Subject:From:Message-Id:Date; b=tVxm0ZbygxkAgFVW7nuvsgR9xEBsSml2/IRxCFJWKjo6qPdh2i6KugH6e24vNAhs02/4ljYszgFy4fbciCLujzQoIhMfKeRPdgoPZ6MixZYqyYuwuikkyD/ciV7d5OUQomdysE1YLZI1l6hJUAztBwiz2SY+6Y9aM2oEaclSAlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=izFhXPxd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="izFhXPxd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A77D5C4CEFB
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 01:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765158773;
	bh=755N03DS8yK22dLTn5m7eSyBAjJVK0BOKfq/HYVWRxo=;
	h=To:Subject:From:Date:From;
	b=izFhXPxdY9rxhNA3S+ziTnc8xGTORPEPonscvh4w/Z/bZBJ9fTzux1LzUSeqTOtRL
	 E+2qwbQ2Txvy4NBhHDC5wFBFHyas1aQJlHew7kGGdSvQmHM2br8C1B+iKyHWVQju8v
	 jL5Nx2RegrqGDa6EyfGO0CaGlNxCrLgPZfYRDVCPRwu0qB3OafwFDbF/YIdSA/kEWN
	 HLeQzbG4GJgqqPqGP3oBKdhnn92b2F0T4Y0CTV0jYgGhrczH2UmMlYsmCIGxpC5Pt2
	 vNcxsECYWvSN46bZ7+Uy2TK5aPE/3FtLucnnzEUxo16NvONQ69vch3WxgZDKvvdo7k
	 9vcvXST56nx8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915B0D1CDC6
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 01:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176515877358.26481.17238033974428879355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a619b564ce424e01b2558d3109fa9288adb27f96cf0a68f1a30217e0533612ff
Date: Mon, 08 Dec 2025 01:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765158773
