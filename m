Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 197E117E4
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 01:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763859714; cv=none; b=Ahjpv1KKh9V95nuZHaNeo9Eb1UHGVZ2N1m64u49bUJ3c75bbTUEPtBWa1u9bCqoZmHI8NUmpiSerIyZrcLl4Bi4bRKDwG5olhyvj6k2F3wWwIRYtrOTRzzRHr6oggVVftynmj9k1bTrjNW3tuLli0LD4JRwRZk4p69yJ1dY0Vzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763859714; c=relaxed/simple;
	bh=PUaqT1jitI0hhUoLBWhLDRYeluz4nQvzsiZwhR41dOE=;
	h=To:Subject:From:Message-Id:Date; b=QEzQX9HfxJkPNLUf8ArgeuO6GC/V0iu/ACVCOrqMfSeOWuQmtoswwimC8wj5izROtB5ji4glbf8VKUYei9Dv4dW4PzdL7l6u+FEMjyrFu6DjyZD9P1VdeoOMMFuocj3DEgCATZqGsRT0cwZRc8Pa8eRdvC5AZroSAKT/TFJIe3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ec7FL6P5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ec7FL6P5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8356C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 01:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763859713;
	bh=PUaqT1jitI0hhUoLBWhLDRYeluz4nQvzsiZwhR41dOE=;
	h=To:Subject:From:Date:From;
	b=Ec7FL6P5a7q4NVGhKWy27AbSyMb0D4lkiSyf7oh3VWUi6ziIl+3TH1AUGE81GU7gD
	 EZdZ6GGUsrjvkIZS0Cjto8omxt0n3hdKJoFyU2xxycHk9LjXjuCzOHvsvdehZBKFq6
	 TM/Ezgp9ac5gWkF1lKZon1QmmLAqs2vJ0e9QCnXwXpmnHTmDVwCFJG0f67ff9NqbVP
	 JCBW80TygEBcAZifTWjs9BrRJKB/YWiPPvM6LAjla8eP/0PPyJPhJuxoSCXp4FPEmT
	 MmIHHLOa+k7S44otzQZD2y/tGtdxy87eYl1kK4qfEgDsotAbwfgyWp/4oITIk5Ujaj
	 c5ZS/98I+uZDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93019CFD312
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 01:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176385971358.26670.17442743513905882337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57ba80cf21674402450776ef7f8a03bd9a91e6ee01de43bebb67cf2aa1a508d4
Date: Sun, 23 Nov 2025 01:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763859713
