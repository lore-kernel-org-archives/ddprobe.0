Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D7CE6FC5
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 04:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717216463; cv=none; b=GPCpjlCrSk/GwICersjmCFVFjHr1anx1OCCj60yFmXQC4qALNIWuKP2+TUjH2slZY756zKGTrpmGY3sltnI4K9tC/1ID8d+dR2Uz1firn48rN3aYlx6lK44RvLk9snpAzxWJOe7Lp4M0y8fF3+E4k6Qc8/F2jbHzfhTkg4gdZRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717216463; c=relaxed/simple;
	bh=2zUM0v4Xh1kMMnHiLwKFIDIfOWlmZJUPY/+TbY8XurQ=;
	h=To:Subject:From:Message-Id:Date; b=PkwVjjQo4gNOnmaP4TcoQAgu+8NRNYbfCexoNtlQtIpvQKbtZgNLx1OyYLRB6gp3ohjKpib2Xgk0++WSvhYkuOnj+/stFMm8N8aevgpakQPEXJW86bPZMIaPLJzkvO+aBIypngy3krV5g/UWRmQ6HEF+fbyClZ6+DSWnXAXS0jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I3sT/yzk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I3sT/yzk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1AD0CC3277B
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 04:34:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717216463;
	bh=2zUM0v4Xh1kMMnHiLwKFIDIfOWlmZJUPY/+TbY8XurQ=;
	h=To:Subject:From:Date:From;
	b=I3sT/yzkUz2B7SQJMxc5HnEFYVdIlGAoAr8i9gySI1UZvWaUCDasX4aXsPfFtNDL6
	 rbAbfmKcKRLC3p4rvOVdaN1uX9/Umpmwe02vjJtr57COLz2fJ00R7Ijno5TDjTnMha
	 tY5qvKqwdDFhMifAcjFUypIzWC7PMeGbkVkEXjllK86DW9usE0yLPHIdbEc53DDZsw
	 4f5k5BtDe0sYAxY1oS7KR3b/78YdPht15kebTaoffLiUP1Hs5PBM3lQXj/nLTiJ6Ta
	 mP56hxBJq3FD0yQ3Noh/60mhIK9EBbHeuaDufpuGdjQfoRb3ZaFhXM15EykZY5loYI
	 HkcreVXW7rhLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1EB3C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 04:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171721646285.16306.8387428309854061017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f90491537558f8c14a987842a04885f77684cc6bce3f6224a375476827fa6ae
Date: Sat, 01 Jun 2024 04:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717216462
