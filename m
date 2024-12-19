Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1339A1E0DDC
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734594954; cv=none; b=j+Gw306WcVaKuqT8kKYqhjmTmR1yL/KZqjTEdy+Ll3UUQShmGNJEG+d/CtCSKU70qrPBcoIGZ3HpQwS3KU8JXo6MslQXpaUezZLDlbblfm8MKAMI0LeZzlopaH11EwTF4QjZ24HqFs7j/7q9xuqV7Bb1QV+salWGZHG6frSymKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734594954; c=relaxed/simple;
	bh=rdQKSgE1eJ1csTZABf3BmrLJR6SwB1cijL7p/DX95tc=;
	h=To:Subject:From:Message-Id:Date; b=C97pDyuq204QICIv7HILZ6cLruIj5+EzuF8OzrrTYWEyCqknysv8iqjyPN1MTxRZDwBVCXSwtV66lYfYe3Zr0ddDyQTSIx8QY1sEULOzBK2wfIF/gGy28FnZIMBkUAwoyXLfMpG+qVsiLUOkXzKK8vs62IrHYXRWbVDDfLqm8Ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aZs06orH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aZs06orH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7225C4CED7
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734594953;
	bh=rdQKSgE1eJ1csTZABf3BmrLJR6SwB1cijL7p/DX95tc=;
	h=To:Subject:From:Date:From;
	b=aZs06orHTZseEtNQTKIruefP75bMyLKXcrzbSfCYvm9DgxJbgou5EyBvQa8tbE/YU
	 xgxNzyyAEv1hhJtNKx7MavjnLLAqv0FmPPP+7Q4lvrKJGsctA6iRfGoE0671aflfDC
	 5nl6lp0y9ceb2C0dFfQ/o+FYAyS0BqelgIG85TAYfPLuZCgDGYs+jb9QyRa93O9rfR
	 VA26+pDTK5XXXausvcOsYCXviNE8N62y9ujpRheqQPzWbDGG4S3kqIJc9kpbuW1SFO
	 1u5X88+yKx8R2u7t8I5SiXPSxxXbvuv+jnufIQgA+hKJlH31kQCpshdO6GsltGHmf5
	 ZutnpO/jCyoow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EBBE77184
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173459495360.23030.16652323326742406062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcde792fb2f4b6171d6707363ec029371fdced5aa87ec486073c02f008991035
Date: Thu, 19 Dec 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734594953
