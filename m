Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5418BC8FE
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744519194; cv=none; b=m+p5y1nGX1pdz6XkomG6zEKddsHLMb4B9G9Mj9bvl4y27CKBCW5pc32QyArFoo4/X2jzul5AD8GEeCmVDaMerbYFw4f3saokVzULHJ50X+TmvxIoPfJ2evhD9tzOV9eiNEez+cTFCicdgmGX8ZIjGHhWEBrYXva+E4AovTLLmm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744519194; c=relaxed/simple;
	bh=iRvXWx3x77vvrKw9OjMONMNkfyDq3OExEvCVCseTYNA=;
	h=To:Subject:From:Message-Id:Date; b=H75Bbllips2URBMHoM+DxWgNZ/jQ+pr9IlenG8vSjqjOqMW+tIYKkZLmKXSIYy0u18CN9yol4QtMmYxLSWuzVnJA9lPKGvAK92j0bpY2U+Cxhnd9L0xKqWeujPIykTWFyDCHzythceECW8/TUItmkrt+wuZ5psM4AJhuSD8V7LU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F7e8vLgT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F7e8vLgT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB029C4CEE5
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744519193;
	bh=iRvXWx3x77vvrKw9OjMONMNkfyDq3OExEvCVCseTYNA=;
	h=To:Subject:From:Date:From;
	b=F7e8vLgTqi1YQCzttknmRPwyoeY9Y7+R1A9Oz3wwS73L0wnmnTMmLaN0Vu/dfPC5u
	 gzsea1+lEMZTlWiAHUsomg5mmEzVXu1PH2jfvxuU2Wf3sP8g1Fw/vywctDhAZTzO0i
	 IgwNRU5fJGUmveELqv5WizIxeectVXLaC+XenI/fkEsBHycgdRUItCHLsiRflympOh
	 tQoQiFUMFBThgXRh6iHyKzrb1kBdMQ4X0DA/iQzYuK2Q5GM/IvnyogJX1RnLe/O0iu
	 T5j3C7fB9GGGq3eSMJOTttLute81HfyxGipE6g7YbrT6wV2fuUlN6ejstMUyBPQeal
	 anTd7JsiKrAoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5E26C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174451919364.14871.14029099460922940975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f394c85636067e950268401d49e193be47a1783ea9d6e2bff15d571278e3523b
Date: Sun, 13 Apr 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744519193
