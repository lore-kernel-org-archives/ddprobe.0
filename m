Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2344A2AD04
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759882194; cv=none; b=Ej7W6HVPgHfiEq/8AmSfxwbnx9xmIPCnLY1rZPJWD7ymuSBrwi34AsFDRJV+9JhMjuvH7S/RELXx2Fma84g/Dz+iPhdz9DzRSgkpQHaaS7EPPWUKoJwB/+VV6TuYEQ3dRONEwMl282oxnAta315ael7KR3BDf+BL6o1RE+n4kDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759882194; c=relaxed/simple;
	bh=T6WqYsTwUlsKrkVD7QL9ucvxbZZbcS11JHFfH1YY6Io=;
	h=To:Subject:From:Message-Id:Date; b=hu/Y7HqNQ8LVAVIE5qCbjwct7+tbCVrklY8Dpq7khCqsTsGOcQyd1sqWxDTws7UZsYilZ8xTuVBCfGfuXOk8S+gpNxiBvHjO/Si1UVHuOmtrkDc0WzA23zzf+fOW3mxpHb8VAM+IQkT8klPKXgwSywgd/nchJBwidQ02ta5J7r4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s/pgDy60; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s/pgDy60"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91E5C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759882193;
	bh=T6WqYsTwUlsKrkVD7QL9ucvxbZZbcS11JHFfH1YY6Io=;
	h=To:Subject:From:Date:From;
	b=s/pgDy60eTYv/kzSvasXozfZAR4r+pWHd7reA1lXqL0Gcdho5gA/8QxCm7OUe2svN
	 rPU601OkFnP3mq2WuPqCDujy8AiblFpuyBVA1A4kgrJ32TlplSmx6aGHzt1PTm98CK
	 Q9taMtpIkoW5IAm5Ju718uHeS9HYzPUjIneXDWWbg+foqqMQkp0g5T8BggNGpNqzkZ
	 nlUYOtzF+S7MxpNqDfNO2Xa7DSqryukY34zsIN5zBvR58GsSUg9HVYQpFkNBLDOcML
	 uqc+d0maHNNu3TpztABbxcNxGg56PvgxNgJ57LKrG5k0JkJKvi4L4E02zp5fV3D9WU
	 hHkoBymZkLwxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967DCCCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175988219358.29066.9083111544368693862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d37e12cdde039560dfba116cc994eb262e5916accda866884db8ef97bdbc16cc
Date: Wed, 08 Oct 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759882193
