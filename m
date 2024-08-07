Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 357AE1E6743
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723037154; cv=none; b=CfULNCe+xIxj0GbKlKdPiGf8Zvonp9pdwa2lXg9H8VUkGVttr645Gy2kPc3DUvCwLVdtQ+U5oPSkK+Gr0UQT8ZJlkqyjfeg5nYa3x4WGjR/jbr+J0sF4Ty5/ZjVivuxy2AIbcYT8Y4wuAOwt6ejYBISMIGCDeXzcqpb+nkRyFng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723037154; c=relaxed/simple;
	bh=xDpkQ3I0N9NhEuBEvv4CrpKzOXWqa+peW+ck3VpxlVk=;
	h=To:Subject:From:Message-Id:Date; b=tXDdg0MvKZ08k5baQwOvJDw+VXHxBZSF9pf8bH2Vjc5OVeU3ux8Es1ba9jyCSYezX6Qll9llQ6tzttEcL8HOWv1hDSEH22ec1RlqePTaFB6Z+nJGexNfCedAqdN7fDJ7MfJUtk/es5JUGyWD4nq2zgnF9V6q5fuZpUO7q9TJgdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W4Z3Q9Lf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W4Z3Q9Lf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B424BC4AF0F
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723037153;
	bh=xDpkQ3I0N9NhEuBEvv4CrpKzOXWqa+peW+ck3VpxlVk=;
	h=To:Subject:From:Date:From;
	b=W4Z3Q9LfgjzL2rVKuHIt6rKqoJDbAuzAaiaQdQp+ox8xFLJAv9lvSpoAbllspIStr
	 UHV+3yJEvFFtXHViz0F9OOWLyZ45RIc0Lh+VdSa+4MB5ct2B5z1XaR6fuic19vLerJ
	 Zd+JmIfjeGrf4cMcS74gvdLflt/6sBpM5+TNORs3SEZIaWFSVdc083d8Z28nkb0E8A
	 jmIpJ8FtQ4WQtREQ+bB0xevYImnz2fFyz/4Sqcr1jnN6N10CmVpN6+eV1V/a9ZvF1V
	 b9pxJbKefC2XokHeDUHc1xUIR97oOcfHyrJIR+5WxNe6ZbWf97aK3+ZWOXfA2cusKG
	 5D9j2uQiTMSZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 997B4C3DA7F
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172303715361.18746.8341602719311652696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96b7bc6e21b3442885e864405ec1d9f5734a10cd8d571e897a421fd1dbc16ff5
Date: Wed, 07 Aug 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723037153
