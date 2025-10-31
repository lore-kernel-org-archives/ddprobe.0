Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1395D2DC788
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761890394; cv=none; b=FfxxRWTvNmnfwJd0NfHlzYVdx33ZppomtrPL7z+xKj60z3DcfH9cSVlmXiYa6jq778js+GkglATzNMuGVg7GluSdARncviRs2eNFajOkBUBPkoagK7Pv2ZsWK2QNs4iw/3qWhMUvcjVO9bXCczWMrXDoXbdCbChR2XwFK0baLYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761890394; c=relaxed/simple;
	bh=SSZRdplZ4kO32OL8pmYrDYl7Nk41GI5dKCPXz3QtbGQ=;
	h=To:Subject:From:Message-Id:Date; b=D4IBniwU1sq+bb7Wutf/PIflq5esdAEZvfcMx3AVBBd/ZBh2tw2WpcmWtscRE1Z6XqufADQFxg9sVhUUtrjQvV+FyIICwMSVv8aNgG4FtJ2X0shQST6y+ILqQohD1st6HfoQqP6GX1ma2oGIo7QZIU80SQfEUpUWBSjaPLu2nQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aZrSMqwB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aZrSMqwB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C5A8C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761890393;
	bh=SSZRdplZ4kO32OL8pmYrDYl7Nk41GI5dKCPXz3QtbGQ=;
	h=To:Subject:From:Date:From;
	b=aZrSMqwB2JLgQQkFkibL7sJtMzoi0K4lWjNX0y6TbcfJkZoE5bdHi89e5kJV0UH6P
	 +hZMYu7EXtRgcxLnYH1BWnEHR0Y5P5qVVxSPN0ksT7F75UYn2nQZaN4CuM81LjSAsI
	 cs/eenzcWmGK1E3CGkO0Ws5eT3ckvE2AzvB4MvAudf4NzaEEEz8IRN/igf0TlUt9f0
	 KEeuOG788qizJ/1eykit8K+KwzpABIXA3QnbvDnMSBVfESBLBjPylzvlva6Qll+NWC
	 LHZgXigXO20C45GGgL+faBzXkMSsItvtF8VQUL8i8xUnYF78wqX3D7/H0s8T271mjq
	 Mz90+vgTjayig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF16CCF9EE
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176189039357.18324.7959206835995311502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6411d61cd92b8a3d915cac8637b4aeeb9954aa2aa693a9469df0e2fe16e43317
Date: Fri, 31 Oct 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761890393
