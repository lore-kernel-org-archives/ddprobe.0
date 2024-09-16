Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8A3A4965B
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726481153; cv=none; b=TFPrNjEte1HJHwheMi3iiCrmpWBXBkALY0N4NfKa2HTVUROLXLrZBW55rL0nGKWzarCxxiUpEo3YDzmbKfl5CDqFUOeX//PrB4aiVYuh1Ss1iY7EW132uqVBamlbYT8yItWyqLnPMeTo+eGuGcpw1bzwrR9Cann2CTAcHCxOOAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726481153; c=relaxed/simple;
	bh=NGGR57HMzzvIsul9PpV2gtNcu5O+gRoYZIHUBPc2Feo=;
	h=To:Subject:From:Message-Id:Date; b=ixc6uoGT+qXoak3qyT8hvexQ4CL+J83/cPKb1VIfTfKONdIvh3n0uhkfUQKbFY3w1ieEDLikbdl+NhYRFvO46oabqI57UvuPC3VAYixGBvFNMZfdXyJBBSe89MmTit6+MtyP8Tbz4Qz1tvl2Wl4f/uPpaFSdB9s1STkrwwBwwY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kij7Cg9E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kij7Cg9E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F81C4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726481153;
	bh=NGGR57HMzzvIsul9PpV2gtNcu5O+gRoYZIHUBPc2Feo=;
	h=To:Subject:From:Date:From;
	b=Kij7Cg9E1Cw4OIjY0zE0TuMV3aMUZFZJuK5DKW1t5hTDA6iXOocWeBATM7hthtfQF
	 Zi1/b5+AInBIITmAh1X1+yZc9jebot5i4b9pJZgIEoHMJ2fnalxNOXZI6br1A/EMAt
	 9WQYdgEh+63oiElCiyUqNaBV3xDXZqoHAYWSrdxzoJM4tFfZ2zUQ3GYyCMcwpaprlp
	 WPqatM5ljXTyn2PQEinqS0coixtuSiXtToUDdSVPE6SIOPHiJVvbQaDHNwDMCgxjkz
	 f816rN4o2rg71EXRk4sZsn0bTBe9Gkrksc2Cdk+MCaZCShonuIit0oFwprEh8++RGI
	 T2j2YRJ/m8hNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8D4C3ABA2
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172648115357.13753.8914414761932311519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fbf9a22d5686790abda10e81d43f48f8adf6c1e2b0e09d145476c891b27884b
Date: Mon, 16 Sep 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726481153
