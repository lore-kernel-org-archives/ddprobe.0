Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241EA227B8E
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 14:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765291374; cv=none; b=TADMxzkSBiq2JnPqZLvXaCcUE+tgjvVCFqLtl8yYcKL2lbPg8a8xnkzJl3cN845yktzc25kApsxmJm9C+GUAyRFMGz6+xI6RzOVC5NlqFpbRekDVb9aYEBuwZxXgBiOi6DrKw/8ghSL3WVxgGbAKlNQOorkdLq3DZeuYgDkydo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765291374; c=relaxed/simple;
	bh=S3DT/wjDi0ZIiKk2AASUv29mnmeCKZx2u2qMY9Xa6s8=;
	h=To:Subject:From:Message-Id:Date; b=d6WDd/JHzZAnoQpZ42If/QJZnlGt/EQgdg8tsxmqZyGalCcj/kzdVu7JM2Sh7hcT4+GGGbB1N5zcb21qt2zT8t23iNsbKft741S1qsFIP+yRzdrrGzsRJFMbH9ejHouPqmcfFLbKtcvrzBA69GC8PU60/S0Aqx+x4m0h+LpJDWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lalB5gsb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lalB5gsb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6060C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 14:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765291373;
	bh=S3DT/wjDi0ZIiKk2AASUv29mnmeCKZx2u2qMY9Xa6s8=;
	h=To:Subject:From:Date:From;
	b=lalB5gsbWE/wb+f8IaBqKwsqX1AZeENn0Injn2mtuegJYvS8uYFAZrnoyqNWIZCiy
	 nnZc8jArEjIcqlOJcL3OtZ2mTWfhln4zGjkB0F93GnjT7pKDEEGOkPLA0beVqslSjH
	 HiyJLUMhTZI5En05EzKtQVoLWAs2XDNwDe+WsVIFME8run+yOZTsZALPwQ7NtvnI/b
	 bDJVnVIxVBaefPLhN3MdkTnvP3m28+pj4pKLq3vzTtKsBuRQmOiTcmdwT2OJkcZuHs
	 +qjNyaIHN1+5WnGNBOE2LdR82K9OFwI9PVFe9uAxqEGTIaU94AEtswIxlFcqwGPSS2
	 j5UGy6Vik0FPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918E2D3B7EA
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 14:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176529137358.8048.6235681306478560490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff528d2fa0825c109c799fe3de43f55271af43aafe72694a878b102e053eb1aa
Date: Tue, 09 Dec 2025 14:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765291373
