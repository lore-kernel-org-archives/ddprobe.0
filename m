Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 171E71BB6B3
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723827354; cv=none; b=qKoaCI8qrNmKup6WvYslBTVxDP1p8d6IN0U+sgGbenjr86FveZxwFMiDxtGbZPY+BcTqJRSSdzqOa+vllCvdYp+Or3U5Vl6b+9gecdKfk17PvDNBYD2ThxSHDeRdScROOc3LKy/a3zc/qfAe5BI1yXBPkuqwW4cfIvq5ABIGKME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723827354; c=relaxed/simple;
	bh=udXmMi+4MZWx2yVJGAKCnq5ol5ZFu3Qw47sP60wDRO4=;
	h=To:Subject:From:Message-Id:Date; b=Yh6uyu3IzJRb13WtE4/vtVZKYe2ifq8hAwR2xs4pv4vQc0rGKb2x8Y9d5nlFLhFt7WrHtw/UiB0hicomwTy572K1wz12VehUVl+qKM9HM/v0io9LuqvrlB+11wXaoj4SIb6YoDj8Pv2t7XIxeJYoePuVeWTijpC7A5un1spAWEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eq/yCMwm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eq/yCMwm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DF6C32782
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723827353;
	bh=udXmMi+4MZWx2yVJGAKCnq5ol5ZFu3Qw47sP60wDRO4=;
	h=To:Subject:From:Date:From;
	b=Eq/yCMwmIkiV2qfRhceLQrPeqMgF8rWsfi2nQA4mzmIBwNy2SUQbi1iqgAXEkeJ9y
	 KAAcp2xIBEAzeSFE6ZMgySfhpsICdzyQ8Mf7y1ggeJxomB3aH7hSgNgKPFQ1vqdrgZ
	 v5fAPtO9v15sPWLWnm7i6zvFZr88SXC7+5x1a6RGRQDVDpKPClZBsBx/wXsqgdw0ds
	 IdBkcIgqKYzssMps+drn9+Y438s12lPLmUE9W1qKqOJZSTj3FZJdCT30Bvg8hHgRby
	 uM1endHQVo1FdPJR6I/xTSe3DiGLJep5CVDwKmF7ckMOZQYvn1nuxc0QKUUye0NJbo
	 dSY8h+NEWIO5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969E1C3DA4A
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172382735360.20765.12970296529377551174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5af80ec850d05d543adfe51d788018fd3817b9e158bcb5ed5ed7bbf24c8f827d
Date: Fri, 16 Aug 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723827353
