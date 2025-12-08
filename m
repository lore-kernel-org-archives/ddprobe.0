Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BCE826E6F8
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 18:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765217574; cv=none; b=nyG4KdiheodXtwjuxiKNhM6vNONCxBJ2LH3JFxEouoSWnTkaNgMBOEG48wtgUjZp3QVuyZh24K6EgpKTWgLMvt0jnLWULK7+86GUf8mj2XdYh3i4DRgT3Kq1E8bGytbXXIz2Nnr6POvlgKxG/iXaS+Iqm1D45+Uc1HQaNMKVjNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765217574; c=relaxed/simple;
	bh=iirB4QYRziBBFmiN89Xw96K7pWiA+1GYQOMife63d7I=;
	h=To:Subject:From:Message-Id:Date; b=ifPMD6nfq7vgR0c8SxPWaGU8X/Rrgzc+Mm1lgjlwdzqc9nIZ9eD8tL7zvIuSZuHAmSr3Z9+jfFTv098umE0TTzNAaMeo8srD6cYMxgP2mUYvZ5ofRxWi63V/mtIGXucZKcb69OszXd+oFhpy28GasDZCyy35XKQaTbwMM5kfMHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mF4QV9+Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mF4QV9+Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABCF7C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 18:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765217573;
	bh=iirB4QYRziBBFmiN89Xw96K7pWiA+1GYQOMife63d7I=;
	h=To:Subject:From:Date:From;
	b=mF4QV9+ZUfyci7fQ0SG48THxsJjKZeIkUolbEKaY32Y7jmMLlsrZWSMb1bds/rWp+
	 LXks3R+yuyokSSiHdG/kqsKheAA+DWJu1R7UqAIz+pGidMgfAen2wcDIsk0a5w3TQI
	 HxXOdexvu/yBeTrJUjV+twQjz1SSuVrn9lgoQr2mq5XA30GTa5XjJ1Dgm12GyvoCBG
	 x7leJa2UgmMnzI64k/bXGx8I01m5svWoYvMS7mJqQkTcupj3iWLYxNQ8ywbaCdTegU
	 gKWxYaUWrZaIQJPTfWzSFZ7qsHaFca2bY9Bj7o6d+fMry0Nx/Mg/1cI9RW4deLXsIG
	 On6SNz+C00GLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9597BD3B7EA
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 18:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176521757360.21311.7452442491373572886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99c17229a614f528cb6b2d180ef55d82461317e93856746b086c2c0c355bfe70
Date: Mon, 08 Dec 2025 18:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765217573
