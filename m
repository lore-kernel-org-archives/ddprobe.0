Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AA96944E
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743730194; cv=none; b=aSPdHhBGl/LCuCjIyXMtThzvZuohCO3gniRwMILmvEyc8KjoAE+QBzc4mRWfdEseQgZxgNa17LPpqUrhUPe3wQfN2LZV8LJDmhgYBq4F+VDrehps/1cT2TmKcyzBIbD2/P7biq+CbkrQwc3k2rmcTiL5m/r/+Rx++0/2WqFuONw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743730194; c=relaxed/simple;
	bh=sbHNXSRFcArGDX33AffKcabLiNeuGFuWgKGoHVsVxB4=;
	h=To:Subject:From:Message-Id:Date; b=CF/HBb2b/q1ZpF49dkCDGSReWhNIeTtKNX3xqNKXyytlggQt7I2JbCiS8ikIr5q2w/PV5Ag8ONvMtmnqWXYEFt1pgJlP2nQn0aG5DtVsicqCIX5dKqTOctTer35BVAoPhuC723XZrr2EeLXq7DKyZAB/NPESvYvGQ8aQNvgOaf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QUoYLU7O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QUoYLU7O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9DE3C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743730193;
	bh=sbHNXSRFcArGDX33AffKcabLiNeuGFuWgKGoHVsVxB4=;
	h=To:Subject:From:Date:From;
	b=QUoYLU7O6/TIsVnxI6Xe3HvvdU3p9ZiV9mbemxdfy/aOKQg0a2uLqKR8WWQqT42bt
	 hLTGiz55SndTLbeRycMUKIFiUkmGMg+J25JJ1lD+RiUFN8lntKWBDAUANYzuKQU0vo
	 ejkC6iH4FSDhSKre8XLS3J3Ai+pa7vNxKf8lh5shtXwpCwkdASIhVP1kqGfGkBkl18
	 RCU1Nihkuoz8Cqt4KrODUMUIPKRQ+3KYAzfA0ZhOxvLP7CPK90DenpipuHw3jUsu+C
	 KVw4cJUELVOh7AxyECCmu2Gf0Osa2gUhwosLsc4OtOJh4koLF93p2yxFNfMFAle1+G
	 mjO50WU2pS2xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E3A4C3600C
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174373019362.13105.432688846765634383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4434b65606dad860453742b13e5b38b961b7ba83c98714fb7bcb952368bc8c7a
Date: Fri, 04 Apr 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743730193
