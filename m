Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C2A71684A4
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724452554; cv=none; b=P9vnAWaSkk6rX1MnJlZQyoCEi4KsUKDfauFMVEElFptGKyAzgWNlYtuFTSF8aXIKD+GN9Bn0TqWSn95xnXgfJzu5rselz30HcP5dLG1PCQZhn38Ocks2P5gQycrxnbFdyAg6Ik42pYtsqDHmalhqt4PEWNl2DFkg3h6pj02sQTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724452554; c=relaxed/simple;
	bh=C2P+OEXMbIQ2AUGYlSS3MmoTMHPTlmS6StDmb0uI/bA=;
	h=To:Subject:From:Message-Id:Date; b=C5A68G4rsmH8LnDD0Jyy50wAjX8E3GP2i+mcxYAeFl1yF/6M2pA1vlxDEwKLPX2n9Tbw5MWn8JBg7QAW+39a3GzHx0L+qAAee/1Nj40irHhbFicda+KO7/A5ZGivyPBkRwjnHFzMuXYZYxBQT+lpcInYjvF8tyDmVvGHF0mwY6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sesa96WU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sesa96WU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2E12C32786
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724452553;
	bh=C2P+OEXMbIQ2AUGYlSS3MmoTMHPTlmS6StDmb0uI/bA=;
	h=To:Subject:From:Date:From;
	b=Sesa96WUaLoQdLb7Cr8nnip09RecA8hQIphSA/dBnSpcRT7gyHyfpQ9DwfttZR+0M
	 YeAeWQyMcM8IqURrUjZHQXyJqdRaxVSZiqKft9Y6D6kVKs9/GdpO3RIKlWbT9byVP5
	 BZ2slwuP+EpKna72nhDR1FGzmr9ygAihGz6nmQJxa7X0YAmB5Iy596mHQi90J8enIL
	 byQhVDE+cClkGn7uTB4C0leMzdYaua45aIG/QcDhrnP56jQl8Y/7pEZmmlClahu8yf
	 M0364lDlMPY5n1VGj/h/dJCtcUBPBrTvZ0ANNV6I8bKVynoPa2UjP2rAr8++kRDKdu
	 GjEdXzxaanWwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0105C5321E
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172445255361.7319.5908747419934550816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a492e56d77c3ffd1dce760fea96957895ce8b43957ad651c1dd0f6b597ba5683
Date: Fri, 23 Aug 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724452553
