Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1652931A7E4
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 23:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773186894; cv=none; b=XHndpxwiGHkmK9lfyzNPWObCItJiZu+sPYtR0LU/lTa6U4x5CXnEbQtzUfQjCMrVgl3JQ3pMNlQTV9h8dRNeJNZf9G3uqW7b+WGX5VgwHmB+FgrBZSCrr8kikFu+MIzs4Msfs5cC/PC1Exy6zcUUaiRwj+ukUguXxSjzv0PMstc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773186894; c=relaxed/simple;
	bh=FVbbElxhUJv8iJYb2qqtzWfwIzw9bT0YA2AuRgUOJgg=;
	h=To:Subject:From:Message-Id:Date; b=ofjbfa2+7Ampcvt5JeG5RFTXhPSZAvzLPRl8knwYy3YV7beym0pdzmroZ5pqDPWI+448+Kaz4zCkNrW6Yfl+iXMPG3W1HlirEmr9lD01XZ7XcjSlHn3pf+K4DQlGNVfb7ScWu9yBthRNtAE+tyGVtSUQw3/nIe3TEfHU8uWIyCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PhazoyWU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PhazoyWU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF05C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 23:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773186893;
	bh=FVbbElxhUJv8iJYb2qqtzWfwIzw9bT0YA2AuRgUOJgg=;
	h=To:Subject:From:Date:From;
	b=PhazoyWUi4t9G2jbY+h+j1cKl4+Wmz/o6yAnzLDdN0Ig93sNXzI+hem5z4zwdEAJ6
	 vDDFQduv33/yloMgJp8mevxBgUHvcoZevsKDCQ2ofjtwSX3KkYUANluhj5wDwciEcc
	 +QUQrnFip9lwdB/iAGXrnxCD5ctZ3ajAFVjRs242gpc5p1ZoZ6SSKaW++X+qMX/Oiy
	 zO0PoFGEScQuc8c6miS+gChRNdvgB+HzhEC/vOtY5GbvfLqhXvgJlB8qd4VmpodEG8
	 l0KdLThdySNHGZHU55xy0z24+HRUPvm+gYTqXLjOblzpcDMbDavUNsAakaKzQVqdGj
	 OuGqBaQLws+eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97841FD88D2
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 23:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177318689360.26178.791562108141122397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72f79d66b19ad4c55f674288eeb45654cd117251c6135fa172290373eeb59879
Date: Tue, 10 Mar 2026 23:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773186893
