Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34DB723B616
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751396394; cv=none; b=LAx1hmMO+LbKrKjZLZWsLeL43MkJxJxYO09h/1mHPEeAxxBnYE00iQgA7jO6r8HHYrpKxmKsdBxnjHBLfFAygDQEJytyeQEXEZX7XmmAf6iOaUJ2eCxajRC4qO9upRL5XpajgcVmWCfUEq5dSAceLGXoMDIVuCVPRGGsP9L3Qzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751396394; c=relaxed/simple;
	bh=Q3zQHi8NMU2+24cR0qjSjTwZgzPw8BsCdf29qr34B78=;
	h=To:Subject:From:Message-Id:Date; b=UXZsrQIgh9NGHwKibGPh2HE+QJPQbY4biAT3FVTkuCZAr76oXfffVhkf6CG15ZHBn50TTCMoO0GmG80SWLDySG+tvGKM4WJfqMLWGyZ5yqnIqXSI9A2/eMI+N8fFAh3SaarIhYplvLUxCaaK0+igA1h35POMZpJdMjicT5ptvv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JA4GJw5V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JA4GJw5V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E94C4CEEE
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751396393;
	bh=Q3zQHi8NMU2+24cR0qjSjTwZgzPw8BsCdf29qr34B78=;
	h=To:Subject:From:Date:From;
	b=JA4GJw5V5QVbC7X5J9hf7HHIF2HkKgQy+AGDenIef8EG9Il/6kxOZcy6dJAPnDb2y
	 4kAeibcgYbevuF/2u4W/1bq/MPo7Uaethkz2cWFyotiX8m342p60TsuTvrzmMiRdF3
	 n61k3htUxkTbjZsewgM04N0AvBJPniwOJMezwVzUloIJLeIq3GrSBpbXUdgg8++OoO
	 L5V6tpw6NI4/bRei0x2kjUCehyDVCWDd23eZmmeWriK25Fef50zwC6MIWSZheQpfF/
	 ZCeCjZs1ce+CBPJT/rm/q21G4o+E0nGuQFg5rVZsuW4m7zVWqWlSoZz6c1bSspcZVT
	 3XGqbmK/otCDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9013EC8303C
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175139639358.29016.16102036979225082308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 167b8369d1343c040a5ea91b658cbb97ace37dfb25bd07b165d9af1f6c7451dc
Date: Tue, 01 Jul 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751396393
