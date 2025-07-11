Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1789122DA0C
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752269394; cv=none; b=s1hjECyxQfSo92fanh5FXL5Gm1sLgod/MrYM9V3Ht16Ua4OOA5jYwzL1Mfv9UNlJdcoIpnn8oJUZWCiTxES9cW8hxGTDXKe1qhMAI+iGPvNkdPSWiBV0tBK/5o7+4QSUeZ9alCWbxcPMRsO/U0PfmoMUFyGOOt7ZQD+Qgfp0e94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752269394; c=relaxed/simple;
	bh=mpyZ+hdEPnLzEOIyDyxdRFm1FeOUOszkfQ2kABhuTXA=;
	h=To:Subject:From:Message-Id:Date; b=b0dNLqArbVRTuHbzNkRRFmgTrG5xAeGxwE22jM/96ybEiz1/0qER6nAmLE8h/XueVYHfJCbjc21Qc35oDL6ohbhp6BjdydiHYID6E7jZQSeOIr02mHTvdCDRGldlxd6uTz7jGLEwuYmwZJbNHCduhLLZRhSBraA0XwECzmBhvX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TLtBYySc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TLtBYySc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7697C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752269393;
	bh=mpyZ+hdEPnLzEOIyDyxdRFm1FeOUOszkfQ2kABhuTXA=;
	h=To:Subject:From:Date:From;
	b=TLtBYyScaNLmOx8J3NT26vMBi5hdUyh4SqkqbWupFIGbWhi0314hoUwjz1MPgVqFf
	 A7hcJrfESkbQVZtR4jeueVAB/tLqAy8jfCY9AhCXPS70Yq9FVvDBZSIbY9PLM9q1nt
	 FQadW73GgN/3wDN12dJO0nLyveG7BJzqo7pP+jyjffxQDOhr3H0NITKdh2CmB5HZF2
	 NRzEDD7bP+5S5heSvFuwOF/LUqrvb3czHb1+UldOrM//OtsnhNyjqdx9TXhKmr+OiD
	 LcHIXholCmQwdTAj686/xLWF+jchkrjIOvXHd9pS20BezxyO5e7olVRS2FzvdEVacW
	 Yj1SaYy7u80KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918AAC83F1B
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175226939358.15284.12196598965793631827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4958567d9e2fe41687b7ad91f2360b5e012631fd60d377dd4f4c2c176830e505
Date: Fri, 11 Jul 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752269393
