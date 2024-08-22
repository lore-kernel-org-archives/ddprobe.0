Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23CFF18628F
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724289954; cv=none; b=iQ9a6FCJau2gBHy28duzxpX0nv/mcJes2irxvO2sUKexbMXvengg56rDCo8E3ncVzAh4OCruuzMlmMvLIpZxUorLRrTnMMH49eZbknVDDXER2KdjW5f2sxXsg2tFCsdmcXB1r7GHj2IN6IBp+NNA8EiQWVkQBnq/yMrK6dNg5tA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724289954; c=relaxed/simple;
	bh=LXGCNXOf4WEEtfC8mpUe91BrMc/wX1GurCUpTjedRGg=;
	h=To:Subject:From:Message-Id:Date; b=ayDMfnDwcy2YDNCSxR/Ep5OwNKMV3iu6644wCilh/OxzOwZp0KS9R1RDBxVVRrWKnCO24VoayNc9J1mpwfZX8JC5CrUl3/kcVq6iXJrsk+QlcR+TrQHxIpQsz0jARfTfcZbJ1Cj9rCOB+EYIdulApgrfBOIsVERL1lrgfy8i1/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r7ZL5byn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r7ZL5byn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB961C32781
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724289953;
	bh=LXGCNXOf4WEEtfC8mpUe91BrMc/wX1GurCUpTjedRGg=;
	h=To:Subject:From:Date:From;
	b=r7ZL5byntptciIw9Cp9MHW/N4PjPEq4KrhhAfTdw9S5/2z4M7L7/rk6hOJv6XOJ8y
	 Z6nNFc8yPMxtc0y9HHuO7bsZexoqkyYq0JbzMk92k8e2DDyMfJryKQIQuPyIyCz4dD
	 +cIRH3vPha7gQL/SR43QB/tKkuFZNvZNBjGqeHhOIIlJVwCTjSZrgBV13wUfxi8Ttw
	 T6Ycp+Tc5CEo4L3Uk06OYpC8k9bnsDg7Ray/QuFtFsyHTBxzKq2DxcflcaX25ETCtk
	 qNhKToLnERr6OuAK6qiR2bv9+bbgHn8F8hL4rdv0dk/vUN0OW7i+Q6TvbUYk7XRdK6
	 ng3+/+Ljbc+WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EC6C52D7C
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172428995359.30798.15678619172560908028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc8ae5c2544a86b498000cf71903e1b9d2fa3f052807f0f11f2f695c38589399
Date: Thu, 22 Aug 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724289953
