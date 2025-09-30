Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12534283CA7
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759258794; cv=none; b=SljhHfbLKo+csK1T+DKQnSTh54sQvgpiuQZu+om2faqkQ428sWu6pKSiw87688EnYqrrOODVh9uCzy9LXyw/h/PR3JTJhkPADiL61YYKf1ARfjCJ8gT2zcMv7lFBSUgedTRCmGEGqGElGDR3UuKSkUGAjnKeglnX7y0iRgb5woc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759258794; c=relaxed/simple;
	bh=LifHY+1tmeDOwW11z/heG+3tAqHK3eIF2Y16ioB1Yas=;
	h=To:Subject:From:Message-Id:Date; b=eOeaRPVZx/2gIZrzdwSqQog4yeGiZ4su9SsPWZZn1/2GUInClbH3ObSr67XgfbtV47huZdQfiQWcNDzZuBiOqmxWzLhOEYBRWCtxNSX+ysR7QY5t0fhNlgM70+mNN06FGgAG0pgXx5rfQ+1rdMimCqfwzZn06sQej6XYGYQSudM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gb1c1Q3U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gb1c1Q3U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1501C116B1
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759258793;
	bh=LifHY+1tmeDOwW11z/heG+3tAqHK3eIF2Y16ioB1Yas=;
	h=To:Subject:From:Date:From;
	b=gb1c1Q3UsfG1yIBWjSu1H3S3gyw/3gWSlzG3kA9LKXqI7LkCii4WKPgjXSFN3ztQ9
	 RV/P8jVxYXvNzHaIu9U+8SryFk2v4ekUIzbf5AjFgXry0n9MxpRqqdGkCELxDjUTXJ
	 RFLJ2gtOG7f5BV/GMLS4EXR79OTIKMyg/8B9PfllVkZM4FCPdTAOiMV6QGTVth4wfP
	 sLDTZMnpf18fIQsQ2NRK/gl7FGqtf6TmCQ6bFOmxYwN4iXfXNRvTF1TloiAqgT4EP3
	 MY9I+s9+rhTKgGYURFDJT+8v8fB3EUpHdj/ggrJ3V0FdSrLNzCWXrTNm9rGmD4VEq+
	 EuBYxYxAqosTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9011ACCA470
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175925879358.16945.7960765571220012266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2ec1517ace595a0a21cbc2e96877eaf0477cf850ab6a573c1180c8ff502a12c
Date: Tue, 30 Sep 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759258793
