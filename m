Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D23D1990C7
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744657194; cv=none; b=lG0HPY/Beuu1nu4PdqVYpfyoR4rFAMusx1X/qQkZYM9cM5US8t5sqH3wkR3Im17+lfjoFhVFvUzw67fW4u1b5COFHnSQgGqHdXVTK2hrRCvEJxuN3fz1hzKhN6FuTkVgBUFFp2RnqouMb3WGlAhEJVLgm8CzXHrYC9heYzfPkhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744657194; c=relaxed/simple;
	bh=CUjp+yqrf5BnapYC4w5j4q3/1t5PEY8zTp+NlHquVvM=;
	h=To:Subject:From:Message-Id:Date; b=iYAMJVYIxNThHoW7dHadcwOrHtAIGGEt8XVHLypVujabuboHoa5NwEOHKgjW7SdN7iJEerYarKpTxu11hSQGwyhSwbCMdAoQ5TsyOPkARc+JJmMN8p2o56gqxaWccNwejRHWLkXRZKFzEKBTMoUBdjJjBqa9oyAX+sNnF9UniOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n3n/oz8i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n3n/oz8i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4EEDC4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744657193;
	bh=CUjp+yqrf5BnapYC4w5j4q3/1t5PEY8zTp+NlHquVvM=;
	h=To:Subject:From:Date:From;
	b=n3n/oz8iVQ3yNqeWjscWdkyrjBD3HUzRe4umKh/CWQUyCecJ4KJdMRW7HzYBX2mw4
	 qEo7lBoGwGZAKmdekB5+9Ch2BKluAmJZyjItOQrpC2CJsoHtU1KgXY95bE2OBjm66D
	 m52FW5DsGyS9yxVvcw7lGNRPdAcSkUwbZVm1zraajGOcGTqg8ynmllQm0+FIHpKqB3
	 VXZTTOxWtZlXdeLJOFYFUkAwdr0jyeJ24PsjLcT9jFBqj4AW/1Ppi9A8z1fXt0rmVP
	 WGh13E7FdBHJPLXtrpLLMVIPqaykH8FHnSR5/4UIEFF5N8/zQRFNk/COR4VYPVQVi6
	 CIuZJHBjR4/fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCDAC369B2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174465719357.4784.13607352664752638251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b7c1f05e645f9fae735481aab8d071ccc52eb2a809a659d582029ea7e006d2f
Date: Mon, 14 Apr 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744657193
