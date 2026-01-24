Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A3193EBF0C
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 06:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769236434; cv=none; b=U5rEdpUqDhCrHNiN+8j8nBpQDiWOga9jZih6oCudB9DyooRvWOZQEzzPb+JAtYr5fE/mF1I8ILhN7Pd76W+EWsln6dc7X9uE68fcyo3LuneoxTBwpVrQGuI1G5uwoOKlTK7PdLdyR38ETI2gF64rvhHi/mjl8M7qQTtoOvUmuYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769236434; c=relaxed/simple;
	bh=vkA6R7ELgVEd8/ZbInWcBdy4toEQEFUk2qKqsBOI74s=;
	h=To:Subject:From:Message-Id:Date; b=Jjb52oUvLjf6eFRozkKAj3bnK5zDWt0afSgWlexLG38jpjnNROHWKLXn1p97KOH1ntAoJS6/dkXKmjekPDzNFJTkYVORzeNOqg38GLBwZr6VLcpAp9l3WYeX0z4tpu+mVg/ER/+2DV1+ONooj/2o3rlVBCVI6syNLFWM8g0xtQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AnxVRKzF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AnxVRKzF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5413C116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 06:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769236433;
	bh=vkA6R7ELgVEd8/ZbInWcBdy4toEQEFUk2qKqsBOI74s=;
	h=To:Subject:From:Date:From;
	b=AnxVRKzFjJEE8AdqpRrGX4dR0JteudV2posat+wNCPw7fXB9cms9XcLJGJm/10k+v
	 vKZM9rgwgjgwfeaSoY7S1DTtGTXr7x4OE1SGOWWLGvqgZ1DVyuTa8FWpJx//HJWfcA
	 j36LIpulpvvFoeQqp8US6YLziHipLhGayH16V75O6dQC9L4pp4wbO/QJ3IX0SItP/5
	 RwHL37voJHAhlrdVFI4+yJnmwg7nObGlmQO5Eb3AAvRh1/rHPnPkxxh+qmIp/2lrcI
	 J7xmNGLXOeLUK3k6Syt603obLR4FggVOwJTGNqNLMZ9cR/5HU9BYPjnjEfLgmKcbpY
	 CdzjUr1yCUKyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9386AD715D1
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 06:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176923643358.8252.16584124206263234175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f2393186a7b4dd0792da6dc97175c9df6d654363048489abf0405b063116538
Date: Sat, 24 Jan 2026 06:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769236433
