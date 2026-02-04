Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A78838E13A
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 07:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770190434; cv=none; b=l5rDT2X6xlaRHUbFOc62U0RH9I3oDoLPLf/c91C1lC51aTOMzUTGBVqTlkHeLpBx2g664/OGi5J2SjkOpPi+/Y8B43E3XLF76klck/3+PJcGTJ4ua+ESxC05jrtrtkSsRNGvHN6WaNf2uvqmzWXae33o5ZNQTNIVyKjv1pAKyqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770190434; c=relaxed/simple;
	bh=1eI4+yT5XtcVUL6TaD442oXCdSwPUeHhmBcddWhfozk=;
	h=To:Subject:From:Message-Id:Date; b=SfTNxG74KKwEHH+6i2GrdGNBwY1paHD+SemXf5liglkUnoZPNvlX+XhfuU2MG/uiqNsOXuWGdIvaxJ33xrrsCTVCewjxnWRVSBwqmZt+BW8SzRseedZZGmWLTpyrCSUhZOM25CpFOKa81Bys1SUxcmbNZURTGa90CWU4nwM5l28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GKzuj+D5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GKzuj+D5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E38C116C6
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 07:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770190433;
	bh=1eI4+yT5XtcVUL6TaD442oXCdSwPUeHhmBcddWhfozk=;
	h=To:Subject:From:Date:From;
	b=GKzuj+D5G1LDPJW3XaOyvTwuyqiicsdTZaP3H6bWFlM/PEYqSs4pQJYbG4f24hIs3
	 JMPT6LKenvfuCUZXliWMxb/JsG79O0+NjIXjNauvm1ZMgvuaTbMP6iZWE+yFCnblLm
	 BrzeURreqkFv7sIpg/8sJ3BxghNsfIzQrl+sQFTeTSnZ4+94GcXJAE87yBeXf8P9qN
	 C8srPwJ3AdiXyoiH189t3g+NQvz40JFcl2jxxlb5AoZQXipvZ8NzbltD9LRY3+vDPr
	 9/tO3HYx2pZdqWfMDp+6y2ya9GGQmuMxYse+qYUFw/eqFlDilUz0qpQze/ldLRMb8E
	 h6KoY2+CyyqUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B2CE83EE2
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 07:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177019043358.3907.6321472339525894363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8bc127c56fd0d3d5312bf2f8fd19edc76c00e074b346912d6cfe8b1a7986f75
Date: Wed, 04 Feb 2026 07:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770190433
