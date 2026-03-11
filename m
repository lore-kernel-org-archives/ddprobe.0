Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEFCB82866
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 18:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773254093; cv=none; b=Jv4URf1xebDw1SfP1HCsmoHtUOY2jxxgl/tPhegPXK8r9ovZlzfEWK96gG1/2TzN+Ns8drrry0Rul9a4L7Mdgx1lUQdCsWMUiNDLqA6jem0ANDgXOKOLZQOqauQEEeFCHqGwZpb8IoTqjulXvhIagEJGO8xVktwHX8ETymeL0P0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773254093; c=relaxed/simple;
	bh=FsGRF5H0VrNEcOX8Vx5jxwYsEQ2007BHWUyxDcJ4rp0=;
	h=To:Subject:From:Message-Id:Date; b=gPnbRSA/VZrzWd9OPV7GzGBtUfj4Ce/NEa8iX9fanvESqWfeU8EFKT9gcOWFHaNrlFImGnI2cV34BrQI1qK5WvsqsJAWTviTh92InnZDJZJ2d9sO2hN6251VQSrGj+qL6n2F1BNhNPpruccLkni4JyuYS87pSFESyhbIzfYkBys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=snBx6aYo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="snBx6aYo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25B3C116C6
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 18:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773254093;
	bh=FsGRF5H0VrNEcOX8Vx5jxwYsEQ2007BHWUyxDcJ4rp0=;
	h=To:Subject:From:Date:From;
	b=snBx6aYouSeV4cVw9ewoiU8hQ0SRNuhE+bgPeOdVq+zFEeM+Gpda1p7soaAZFUyP8
	 3R7/KCQRO589RBiBE4oU1LmB3Y/6yMC1UEzKcAtfIHjLpDCF0076V2FAf2z+q1uDjc
	 rxSuk0rW6aU2LXfPAkprm+mTrq5O+sQqc3nurR0Uzn4qc6wiR5rbXJear/bixdi587
	 6ifvHqFXYfS3/jsAnz/R4m4ca9iNVxuyH1R8k42cXTY/YMqBZjddsHmVpAlqDlJzzk
	 VxjnOC0r4wWa4gObo2KIHrJzbGIG64FHCXFhN+rOEQIK6iMqVeJCBLtSccIQpjtY96
	 RG/qP2k+m13+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AA11125865
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 18:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177325409358.29241.13980661178010776009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 986efbe4000330015d4b07d9e17b4d7e76644da1487e403edeeb852f93b7acb0
Date: Wed, 11 Mar 2026 18:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773254093
