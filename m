Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D85196D98
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 21:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720040723; cv=none; b=RdshEWkmQsaUMDhIAYmOdxSbCE2ItVNTo7TvJ7RJlqGdiygdGpFKw6pxb73BT+3i6KcBFvyQpXqNSp5GvlynHmYYgo9y/2XOnL5c5xQhAwbKJP34Xc4FORjz8vyrFUmBySkjasEKMlZ/LokUgCIKA5ZOCgSYcttobJEyZsjroa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720040723; c=relaxed/simple;
	bh=Rh+FX4F8KTPUIbMt8pdM4oe4i/cXccq0d5q33HIqj7A=;
	h=To:Subject:From:Message-Id:Date; b=Jx9I5fE3QXJn8Ao2wfDRxNo4nrq+gps7QK0iETXBhEEJ29VzlcQTp1qs1JeUY+bGdKjInNO4ZHyfquzVz99vgAaF3Gu2+rnhu3jEMHhsFmRgmFRSWD+DsKIU+DrYX2rOE7E0XSeNcyNonjztlJQjtnuJEAmCHHxlLZ42Ufuxhs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F0GzFiBV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F0GzFiBV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D70A0C4AF07
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 21:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720040722;
	bh=Rh+FX4F8KTPUIbMt8pdM4oe4i/cXccq0d5q33HIqj7A=;
	h=To:Subject:From:Date:From;
	b=F0GzFiBVDZxmc+efMxcnadpjKyxpb1kUTzu9cx1CayPyKlEj6xW+k/cKv03wbC4rD
	 Wn2TR1hsz2y0DdaOFcR9ELcEjzFes3uNG4yEL3NTEt0RD8iBYNZchUxQzAwLMrxR7L
	 b/ZtBXfZ9H+lMQG/WzVJcvVLu1Pm8YCnL1eF4NtM1wNdvEHu+HKk3Ic/36n+y2QQgF
	 G9lhDxg0T4EussjXrPczb/RMHieLuDD2iDS4uyZ4WGTtaDGkxeJDSlH57TbZSRbZBj
	 EQGAGI7rbJprKars8Yr/2PpRD4Eo/UDaQUvq8DH/d4ymY5bRN8eiIotrx0smBM0DWD
	 PiGUMDuMVAfkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD603C2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 21:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172004072276.16714.1444205813146846461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 882afe431f40d2cdea0992b0afa76e4f73d4acf68b1f1f10ba3e2772787a59b8
Date: Wed, 03 Jul 2024 21:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720040722
