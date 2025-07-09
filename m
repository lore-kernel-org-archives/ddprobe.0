Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29FC11C84D5
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752028795; cv=none; b=pChRpr6YtlUdtWek7pChPNxLQbEJ4TgUTQiKA9NrPs40yAv+g3p5+q8yyV0foIAYiLjeSZU0E3mo5/mgXhOC87XWnFOD5cHQRSfB4IuRR9XBYQF6ze8UaSKQhO8m8a8L71D2veSbmNqyghJbizykccyCbEtcUzA8d/LV4O7Lt6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752028795; c=relaxed/simple;
	bh=b9VP/wvadijVYNfMwYkNgkbd/DzcvLSkJzZLgnNTSzc=;
	h=To:Subject:From:Message-Id:Date; b=lQjqI2tBxxkujrd9Yq14n7RiZ8j496M/Be3gOcOMzJsZlaSvJPRm3qfq2Xnbu1C5oeiFHkIvmUzyLDfn6/wUe4YjaF0fsdd8wN5VDkeSWhXQDI/JeQLc9LAun+TP1n3/M8KsHpk3JR/tx7/WtGqdxXPHptbTZbYyXGWdLdxcy2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S3IovhuH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S3IovhuH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB26C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752028793;
	bh=b9VP/wvadijVYNfMwYkNgkbd/DzcvLSkJzZLgnNTSzc=;
	h=To:Subject:From:Date:From;
	b=S3IovhuHgNpdDVsoBOm2ImbsWZF3OoPucJdykMz7Qvdcrk6kSmkfSSWARrc+qW2tk
	 BlmnP/DEVa1kegZ0FDWiwA63ad6SInGpYED/+LEc2lSLsIDhiEugtlzxovkUxqzSlT
	 80Iy1K9FZ9Gk+IrjrLq5AnNFA6Md+cEgYU5xIMfn7GQqBCBJh1N/4P+w4r/Idy9QVV
	 KhSAsgwYpar5jE5Os2rZD7wWihRLaGbw0bwbHjCZw2s0qI7ZSGZgcSHFLcHAaRUlWz
	 4WTIVnK3hb/Nky06ZufDLxSMG3f7wZf+BLgJl62PhNiF4XGOIxfpXEUp0O0AUV5lrS
	 E4mPc1yYw5i/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB77C83F09
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175202879362.31609.12951043567950236686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3add080c78d42a3e6fb40ea389b5999bd92329d7980259934896b51d10667ba6
Date: Wed, 09 Jul 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752028793
