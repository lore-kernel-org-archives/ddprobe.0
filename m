Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDB011591E9
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 23:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712707097; cv=none; b=KtcTTBh7l9ZVUPPV/pOQd9pthOfVzEgD4hA1go3sW3PPFada/UbAy4xOWyv6kg3YoWXXbsKONxAiCzKEgqDM4DkVzB66RR754ZNbfhSIFKzSLElIK5tlpMknBrhctmiPvT/J0amH+6xZq9GUCDQ6yQeXzYjEHv/YOFc0k9Co9sE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712707097; c=relaxed/simple;
	bh=7oIfwdB6McADFhL0DJD3p/HUEzPYOs1qyrx3+eWOBFs=;
	h=To:Subject:From:Message-Id:Date; b=K4TSMttdprJNuTne40nSYTNnuvFo2sFYBwCNawxFHf9b7jBefkuq0Kye5gWikCjg8uPbh8dYmd7ofvhej4XLDETkLPHXNWwxWPIOjvUu1YMpYRcFtjWUXLStPh+eLQuXXLyY0R0z58iFldr/TakUhn11+RcljfGHGAf53/1GsK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zm9stT/3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zm9stT/3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75C39C433C7
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 23:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712707096;
	bh=7oIfwdB6McADFhL0DJD3p/HUEzPYOs1qyrx3+eWOBFs=;
	h=To:Subject:From:Date:From;
	b=Zm9stT/3JpmN3lKrvZ3P0t9n+m9lJGutEivmz9Xn/NCcHoPXTbytJj29uHu5PFciP
	 FoPWT+2sFLZd50tNWFl7rfnQ4O6rsAgjY8YKJkjfPF1Tu2sw3x69wOSDKRZYqTYHBh
	 2VVcxPNsckGFiGg/6y5PS/mFVNz+6wIKWNjgMepGtnzLUFhxlLkWBsXGdyf0d732He
	 1gHzwN+XCDAPRndYcTl4YQNDhFzr/JmyRQYbv+6vO3+ty+vGhbYjuhWkGGGFrrsStN
	 zTv+Sstw3WMU1uckkFku2DXNuzn5yHQVsd+FWpPN8BqP6w4x5boUwidjpHd6n5XF4x
	 9QuS4k4OgRyiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60432C67861
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 23:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171270709638.2218.40576487514237987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c002307173e72633db3ddc1b5648529342664e46c8844470a1161e1b462f8ed
Date: Tue, 09 Apr 2024 23:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712707096
