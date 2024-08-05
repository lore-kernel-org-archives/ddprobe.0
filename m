Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B4AD14C5AF
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 09:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722850554; cv=none; b=C5yjcC311Ju824y6rqVPf6uXuRw01+D30yKa50MbvFO/r2i2yZh3DLz33pFSg+KLEMH/1xRaWhd/46noq0hiQT7BltkD9atothAzouXCjEwjxougDAdpU33WXWZkCTGcZuvrsyZlLJ0J4OJvgJQuOV+A6u6jgegcXuiEoieFx48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722850554; c=relaxed/simple;
	bh=lg+g5lmL17yuG4CzVOs9o8qfTQYN7V3goKQXpUUE+hw=;
	h=To:Subject:From:Message-Id:Date; b=KksncH1eIBxFItjZyZOijLatdURsaOW8h98WdRZk0k2DJiZmCp7/C+gMuAnAV7zU0QWlL4lVHfYSB6pIdAEsOmObQGP1drApe7mTjb4s13XIrgs9vHVsB9hJODeq9bjjhx8XPLSXRRoan5LAN5KfkQi3QGd+4+1/iRNqCLa8zoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YvQTHd8L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YvQTHd8L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2AFC9C4AF0D
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 09:35:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722850554;
	bh=lg+g5lmL17yuG4CzVOs9o8qfTQYN7V3goKQXpUUE+hw=;
	h=To:Subject:From:Date:From;
	b=YvQTHd8LKmmquzA5aogCggy4M6cDElujsvrQeJoWs/naqMvV5CpqQcslkHNn1JcX7
	 x6kww/AuBGrLDbko+WHvvBzJcE/ExhZ+g+rLXtseRijmdmxgHvU5EAgSyykBt1iIY1
	 Z1itzilsum3ww/w7c5Of0r1TEtKdTalT9Itc8Gr1DxausnRL7D6rZFXjkfEs2uBdFv
	 /SBY9K9yfWNT9kdCxvNF17aJI83zYmc5GJPYnLGktvDxPm9l++kOb1HSs362SbFVKE
	 zRPCHaV/G7KwwFDOs+gr7kca+N8MD5rurIvEUzp2Nylb6cr1cWy1tTkm5on8oRVYZ0
	 kq07Nl6G3P3qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4CA5C3DA4A
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172285055381.17428.10674300534004033956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6a507ae11187d19d860207235f4c13073db280d76b2b9a30dd51dc50ae49909
Date: Mon, 05 Aug 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722850553
