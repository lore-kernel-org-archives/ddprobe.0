Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF672F616A
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 06:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771050894; cv=none; b=KCum3rmoLaAYiPYLP5nLPX4G0kLqgkxanX26iio0CFEfvbrLR2vt48UWzzgGcix9p1hg6BLaallWremRwCxJX0WMOtfhFToy/85AsORGLsmRXyf6fy+6kCiVtQ1kG8f+xcWbEEzODBydel1qoAfXy3gcjEi2daOscgguu5KqKgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771050894; c=relaxed/simple;
	bh=LfdYjqnrstO07ikmNd8oBo2X2zYyK/8WwRA8yMOXHUk=;
	h=To:Subject:From:Message-Id:Date; b=DDc+cy2nzlG/qiUTuwuYAMYlNDn0nUSZEznvDm1GsuB3To58ICP3W3a15FiBcpw6esisc7y7LMHbLFIfvhL+XkxJSuymjx2HW9vEhzlJ67bsFClaXb2BwL5JC+5V9vvxizvkwKO9CKB9XmKms8h1TLnjmksLvWP+Qwl9r5DReLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OSGAgWr4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OSGAgWr4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3CB0C19421
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 06:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771050893;
	bh=LfdYjqnrstO07ikmNd8oBo2X2zYyK/8WwRA8yMOXHUk=;
	h=To:Subject:From:Date:From;
	b=OSGAgWr4rApQDDJbyPaszcszYjxV+EwB4aqK6JK2hAErbIyWHpaV7tp0uCzyrWskS
	 gcSFr7tzfdONScNsxueMwPJ/s3zSS2dDMu0ryp1d2F45CX+7Sy8osp7q1PV5JADny+
	 RRkLlCXldJa2I6Ziq496pNvORWbBXgUPU8pJpUjhryEylrHXeJwT0WK17zS++6M2Ai
	 1+agx3ESK6qOmVW7yO+mvdmXm/+LQwsDO4vEU28/b5bLD0K2jQ88op0UYRRdDLEN+l
	 KvenxnTIeKViC396v0Bggx/qxz1COUegl1CnaViHhD2ZwtLXwk7vM9TBOXnq1DhVj2
	 dyuzor+EnUr0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DE78EDF142
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 06:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177105089363.3742.10875623571961820334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 694bc49d421e955611b51dd43fd97959c147c46461d2d6ecb7913122b45ea1dc
Date: Sat, 14 Feb 2026 06:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771050893
