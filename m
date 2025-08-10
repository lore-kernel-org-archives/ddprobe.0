Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 461653C26
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754852994; cv=none; b=cBW8WQcx3xaPdw67KOp+2wllcgh/xiBsuQoOImjuTPGT9KADeecpY0Q70wZ3AvvJAbJd0D7CyllyAxrdrx/rhPoe7wdhDYy7I08awEpweqlE/0pmsau3YGgGSQcBKLzSTNmDuns4M8eWSge0dWZMYV/QxJ7NosPIaeMvSuLPT3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754852994; c=relaxed/simple;
	bh=f0sZ/Mg7VAsEprL2fEFDAF8yCRSv1UUjjHPCQ435bfE=;
	h=To:Subject:From:Message-Id:Date; b=HyYwayQ4E/vc9AU7PuV+S1gkahR2yzWAWgRjqfoThO5amZtAtwS+CNGOqiFikiZxY6DuP8uwgd9CjfiXEwg/qnpjKnOGEh8J4qDaQEfQMrff6/4SYqkc++C909rc4hsUF+d+YOCtWu1iHFfgc5E6bUAUb9T98hejS/ApQ4AlPeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KUbPLiae; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KUbPLiae"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97894C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754852993;
	bh=f0sZ/Mg7VAsEprL2fEFDAF8yCRSv1UUjjHPCQ435bfE=;
	h=To:Subject:From:Date:From;
	b=KUbPLiae4HmkvsDCSbchtUdEw3gPL6LmbYyA6zeW2DZMXAI3CQuJ/iibKgoNY71h5
	 U64IS9Pi6+J7zQiSqVKeu0HEPqYrV+1HiIoTuRnZ8eRPq2c+qQMvMbu4PkUdp4WSh1
	 ASxmSYMvPuSUxcoNf8xg6oRdHq/SGCYTZx5E44h/Z7yAI/AnI0BlU6RJ9UYcM7AH8x
	 4JITfSGYJ1+MF6KtEkF/U0z30DVQaHXbwtsy0FMUVRbL9xRLO+wYq622SC0CpgSmYr
	 dw2rdhqwe/EwpHBlU1dUngX2YY/IrYpkfvpDTtlWbQTW+5mUV0mmyCK/Q4REl4ETMM
	 uWtdh1U4cklWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E594C87FDA
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175485299357.27150.18200220107774981463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbde4382bead29bfd0b99b6953610160d60141a605a0dd52c3ace5c965941fc7
Date: Sun, 10 Aug 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754852993
