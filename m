Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0709632AAA7
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 23:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780185274; cv=none; b=ByCEyIaEuNI1Pih1Ev44fot5FfFE54F5Bxy7TRqHUgkOKpXzuh+QMMtAWJh4uMnkK5cDqXqa6oGRBEy69rF+JmvFQTafr6XX3sTmmZMEzWtaMIlpDeewF1mdnmzyhuKDVcGvL4RPjcRdjLT5NhFHhNVlT0pCMeCzRao6q4KhF9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780185274; c=relaxed/simple;
	bh=1l2z/e+eRWarBxQZffQ/gz5UN/gfGffsaVvARKHvkyw=;
	h=To:Subject:From:Message-Id:Date; b=B5rTyU7XNxRbD1SNESAgUs1qamyFW6+eTP4ypr367dujkMTCnAhZgR9T/20RmYSI4KHLuVsgka64FIT3WvBS8Tc/zz5rQaWn9zJMw2QSOUox+EeZY5smB/STJaQ2x5MHrtGe5kq+vrxeV2Fx8aHZXGkv2pCRHKC4erNli7qnaRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tr5Y6LLw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tr5Y6LLw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C79AAC19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 23:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780185273;
	bh=1l2z/e+eRWarBxQZffQ/gz5UN/gfGffsaVvARKHvkyw=;
	h=To:Subject:From:Date:From;
	b=Tr5Y6LLw1YIOvv9NYU95iMxwk8xAcWmB80TBdQ32lH9HS41cmQTva/gFrVRz0PVUd
	 WRv8yjjftK6mWOM72wh3xRYJ6ED0p9E+NJl9iRZSSF+MEqGh0JsGhaK8TveZBNZHIq
	 F2+T9k6c60o43XEIoFCMGG2RJM401Dkb2yUO8X+4hHOANftDOtCD7iHo/oVgmeJHjN
	 m+v/pVdJUSsJgKkaqM2P/FexaMjiQbT5sb8Y26ix5uT9aJcQ7Vgq2N9xWK0zdIdQNP
	 9WCz+6KlNLpEj9sroiHgHKBI7iFDoIrl2e5GDIE3TmMFeivjv45aXduBN589RtiSzQ
	 +BbsYJ2ud2h5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5F7CD6E4C
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 23:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178018527368.20939.10209276272655135170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 827702c4335a37447586a573ef69632314781ebd7873035aa41e55b946e01570
Date: Sat, 30 May 2026 23:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780185273
