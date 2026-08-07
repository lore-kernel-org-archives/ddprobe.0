Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 900534766AF
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786108834; cv=none; b=ggfF+DqlQhY55/8Styrpyr23kQSg8H600IGaa4TPiLwsAeSA6A8+hSwVhAXHdg3MFnJklPrVskypw+bjZlR7Y66aYeB83oYr5VD3HCyAbfTF4aQi1ZXXyjmeoNgGJRpvmGaen/R8R806vVw8fZKtIHnJPlOabLyGrvzHol5yL9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786108834; c=relaxed/simple;
	bh=8mFEjZLIafVU3lfeds3sJxpunyly52yTA+rZ9C0koaI=;
	h=To:Subject:From:Message-Id:Date; b=AD5c9ApG37GAIjeGP+wDu+F59LOvJQ7gh4UDuQzhAmiwBeGQfd+2N/5lSUriCm0j0nDged25SFyWONowOnVZuI3AD/MgwibjdOdS3PTKs8VGf5/4mhK9RbKmWxwK0jfuiB391WjN14YACaiU3TYk05d9M8zods1h4ZxgUuoa8tA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ESLBTu65; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ESLBTu65"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2EBAC19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786108833;
	bh=8mFEjZLIafVU3lfeds3sJxpunyly52yTA+rZ9C0koaI=;
	h=To:Subject:From:Date:From;
	b=ESLBTu65v3EvecyLI4CNMad5CtFX1ZvC8RQy7ZGiR0s1rkHyQUR1wIzk57S3Ob5W2
	 LZbk18/YY1rPLlWkaAgUQ68RBYzv4vCQu8qKrmC/k/O3QX55YyhaMJcfC3ohLFzkse
	 c9cDbcusu/5o+/VzaqdX4nVEuXSPW2SU6SbgTwQ1E0qb/+p/Y9ttm/SfAHWBISbSIq
	 VYpGk7bMl/OFlG5TArjIkcpihsSR46arfqwzSgY4y380T0ldHPVce/DLJTpyNWj7Ub
	 atXZwQS8bc/MB2qL7C+l0cbciCwIHRiC7y4C0Gqo2aueZugD8omLFiiP8XeCX/R4kO
	 qCtNdFhrgxLnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE2C9C2A09B
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178610883370.21619.7564202245278979594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c726a7191fde31c942d345f7aa5d0e8728de2cfe05ee3e172afc3f6f27afb82
Date: Fri, 07 Aug 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786108833
