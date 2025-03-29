Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5539E190470
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743282594; cv=none; b=sIx9cDXaFRVVuzQ5RFR2OI8GW4By7tXLky7mCkY/YzXJOWfKBM92PqdNceoftM1J57ix8gJ4ij6qObg1QP3AN4raUW8+Zzpq20uRen1DdXRR8TP6H3HVsN6U19ahEnWAy7fPBdKftwaCsKQQ18fbrIiNM2QXPSBJxMHm9tpXIac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743282594; c=relaxed/simple;
	bh=bo8ga33UnAn5vTEbPo2bx/NFh6fO2unMfN+iQu8AkGk=;
	h=To:Subject:From:Message-Id:Date; b=M6UOj9qt8b7sCxBPMMVovQLQCYKSh4dU6yhxRhXrYUkdAD+D33IR5nC3ozU5GpDHAzQf1U9grmkeIM4i66+EGIKuD8EKcL+tSqWCC1IsH3mnRU98pk2MDv+f+HuWpvGEH7iaPPDb38INPBthFROmkDSdGTGUPisI3yHGje4P7vo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r+ryERdb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r+ryERdb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBAD3C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743282593;
	bh=bo8ga33UnAn5vTEbPo2bx/NFh6fO2unMfN+iQu8AkGk=;
	h=To:Subject:From:Date:From;
	b=r+ryERdbfF0Qt7A9hB/rkIkoxXxUpKz/MKdOHiMd0ZZb2c8Ywyp5B2eEo2WFvCmW6
	 4Q5xb2N7AcmhizxK0wd5GHhXlxbayVq5oIJaEHn55bgrlkUFrKmfWhnbPLy5Y+IM3X
	 4XghR/yo/EJP5wqGrUWrC3Tzn6kXSAeheKBLxY+XV07i0UMKdepQjRcPfV/wZPSxcp
	 5eyMNi0jGpV2pT4HMlexuVial1yw86w08/kFlYFjVGPTZIXoNg4jwHGkgpPn4lO+N1
	 P0KA3ULFGolReQ3/N1u7h9I95U2EgPwcPLXCfgZvjU19TMm3E/w8vtx3vXdzMkRubL
	 l8QT/yM1TRw+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0856C36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174328259360.14224.10746433025223217326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74484083e633c3ef07d3b50029a6fb40addf427b756ec292f72ec266ebb4200d
Date: Sat, 29 Mar 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743282593
