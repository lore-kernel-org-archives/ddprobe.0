Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ECCA1FC7F4
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737114954; cv=none; b=uz7iH70AMDXIhD8/58dw7XA6VvPNADaL3aKtxcmn1HNE0Varxz5y/B4WZ0DTmxE+Tp2MW4JBkfBWhasWUKnrhujEut2IB6Bvveowpstq06mEpkNjyXwhvlCh4NlA+0FRc2mnPSKcJrggEVouj+HHAMkM8mnIomIoQVMEHFqS3nM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737114954; c=relaxed/simple;
	bh=R/MxWbEz3VQENeQRwtziSfMiYg1kq4nLqNzqReyEq9c=;
	h=To:Subject:From:Message-Id:Date; b=TdnSAs4jlmZGlBIUHM8hFYgzluRF066/iaiDZHLuHmpiv72MrzCl7M3Ju1IaXTbZlF9dImVZyd+h2nqMeO3E4N5UJoZfkI1hlhpqAWj89mG2dGrD2g+wJc8UlmGGvoRG9bBgitIyA/GbG3JO+ILnnj96OafdYcFXFF8EIOsxjyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cd2XHF3l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cd2XHF3l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A1FC4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737114953;
	bh=R/MxWbEz3VQENeQRwtziSfMiYg1kq4nLqNzqReyEq9c=;
	h=To:Subject:From:Date:From;
	b=cd2XHF3l86oNR81RK7yR6ApcJyOTwlxsv8G/K+jl8ENTYSGnrEenw7DssV7hEWk5I
	 wIgd7KbG0nTrWoaZt2Z0oseQKA+xlgok3lbA4cH6Ftz5H7a+siXVSoz6wjxYdu5mZw
	 49Wgo2yYyD0e3c+NI983RMkq8SF6/5f5asrCG8OkgLxZof1U64atujQBdpXRdLQJKA
	 lNsTdKu7DOhM2K0hGYJs9KMK5PiFQTDJW3onGhwTCyFFavzyDw9t3BJzlhy/l1CJP6
	 72iRzBoiOqoa02OlOGchZHRplxcgu0IHH7EhmWmxKChnplA3lAQpjbLuAs4RnJAvZx
	 OiCGToCDZIU0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925C0C02185
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173711495358.7051.3315244866613618272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2ed30368e64f652d8e2f9f7f2ba51c40024abe20640f01c279cdd53029f4b9a
Date: Fri, 17 Jan 2025 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737114953
