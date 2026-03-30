Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B4D43822B9
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 06:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774851894; cv=none; b=eBC51itCTQC10Z+2S2plm6WQJliLKKOCFh3ckNomyBU/oO0wp945ONSaPSCtib94KfbwsgAgZQcDTNzOI44ncpyU8SRAE4IntCTKc9zvYzYOI5n/jrKK+0FFO/S1AaiCife/Po6HeeRFYBkKMU9rqgvBN9BWwdwtfglgTVAXQtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774851894; c=relaxed/simple;
	bh=CpbXTLsH9TLnz2kOfTsUhgo8J0ifbjSrbSJK81gnx9E=;
	h=To:Subject:From:Message-Id:Date; b=nINFOdaImCrsSQjJVdPtqfiXAgeT8sl5dfOB1HfPbj8nPZoVxQam+Cy6JoZwYiAHiJSlsAGIZRJEH+aKURoO26Typej3ptOkKT2yzS7qUlvxEhp1H5313DSV0NG0jl5DmoCLLsw+tMr6escMouWyOX4ET+GjjzS3amKCWCbS0qo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i+qwdCv9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i+qwdCv9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C11C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 06:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774851893;
	bh=CpbXTLsH9TLnz2kOfTsUhgo8J0ifbjSrbSJK81gnx9E=;
	h=To:Subject:From:Date:From;
	b=i+qwdCv9UWQ6YCbxpWYtDtkXcK8/U51QZKnUA8aDtJqoPUZkKdmKHZP+nGdVZRhji
	 sUz+ndUFa45K7uH3Y2bIXs8vcRLWySD/rWTA5ZwHG6cywiOOme7FCy1dc1E6Y5QgG6
	 fUWi9RFKORRlVcBeiIRt4krb05iGE/7ddlF+trz858lW8QgRe8fUZOH6RADU1JANDS
	 Glft+fXyXu+OFY/cqTRBMJVk70u3R8gJrim7km40RaZXAhX5PgSt2rDoInHTo1Q+iK
	 TLEVRdjJ8aSqJzhPPz2zeKJ0H0m04GHUzBKUNlv008i2SuDxqHUYADQt6jHDa1sPXI
	 QxHfwvvoWJqSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 984D6FF4946
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 06:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177485189358.29005.2489563309031430234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1d0af187fc3171885399ffecf0c7c9734f73bc2f562a3fdda5acc378b3a5b8f
Date: Mon, 30 Mar 2026 06:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774851893
