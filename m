Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4543213B58C
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 00:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783643314; cv=none; b=Ahh3F/LimX/DxbaVMwo0hebDb8ecc4uXRNRpc2fIP6O1HO8wEemiQ6eUmRj+zeNCN7XD9uRgEYC2syYQnJ/RY3r3c0JOvZzxCHgKxaYjTi7XTW8anYnMhlKmENFx9ld5egoTceNq1YBKLMdhSqsoXeFzPDYx3qhv91TIkq6ZiQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783643314; c=relaxed/simple;
	bh=Vl65CtnbrPALXU3bHTqK5cB7vJiB/eDkE2fGvzzEaHU=;
	h=To:Subject:From:Message-Id:Date; b=YH/3T9J5TofTkZv8TTaYtqLVG5TTmF5CpR0nBbMVtsLnJAW4UvPyhlX4lWkSzYD0bPyeqxZf9cuIvi02R6JFME9R/tpyQaJVHdpHRI8JTJkG2JpYNuFGFhXFpK4KWxlp5SaQJl48epAOcfEU93S65xZJ/dPq7ursAn8qTenSbjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CN4BEUCh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CN4BEUCh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D033FC2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 00:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783643313;
	bh=Vl65CtnbrPALXU3bHTqK5cB7vJiB/eDkE2fGvzzEaHU=;
	h=To:Subject:From:Date:From;
	b=CN4BEUCh/gdrT5qrjOYbxdzVasD9t7V5Oeq+VtQl+DMJ7M50fz/Qa2yHRoFVG+PCV
	 kk0+7QY//Eeup8nb93XvAr8IoWXFsLW0u7Qb8mjqZ1BkAz1oSVbOQniwtXo/jlLF7R
	 acWQ+1zcEfX9d42RW4DxZN+UYwPpOoNb1iv1s95paQES2SvPXQE1xd00RMgsmjcFQE
	 GBfVw5ipBmoaeiPdd5yJamcxo7a+a/KCM2Im1W+CuyJ57fxAQ+fLfEsVefF9T1Ndyv
	 DPo5zcoI9psJcgnJnW3WHUtCWvfnu9heZYqYHlMsEUCcCAIVXRfNnwiue+hhlN0T2y
	 PBPj+sqXHuk5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABDD5C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 00:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178364331368.28547.17981816449794171180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72102b7128ac06c47a12132ee459ad30ddb2bc992683535ef37a688735a079b4
Date: Fri, 10 Jul 2026 00:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783643313
