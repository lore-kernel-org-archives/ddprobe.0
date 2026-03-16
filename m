Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B0B738422C
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 09:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773651894; cv=none; b=D2KU7mtWwHRbnCq4RVk4VRNGjAzPAF3Du886XESalBQqB8VltxQFm4BvZh+b5Ci7XGRTcsYMAhgXnkoucTtQq4V8AL2dzm7zZ1jiqOxEY7J8z2eogWS5klE1JnBuwHK6QufE4fxjF/A489VGJifeXoLYfBVcvdCzZXb3I2eRgkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773651894; c=relaxed/simple;
	bh=+nq1+C2MsEJEMwhEcHHVecITyVeBx3MouAxV5mYMufM=;
	h=To:Subject:From:Message-Id:Date; b=dWFCvZM8UA4bYq5BYCgUsa56PGlY0AE4G9SRdUum4ZyDXkMvg4wX0SpXN4FVbQfWLmMST2/BclyHsd/peBL0tYDIZb25i9c2FlkVNN9zdM4N7/gH9NBNhtoZKqOkDwB2i3ivP6I4+EZZaNlAppMt9rQn6y7agQknRHAMADIXfgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VAQ6AHih; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VAQ6AHih"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BBBC19424
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 09:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773651893;
	bh=+nq1+C2MsEJEMwhEcHHVecITyVeBx3MouAxV5mYMufM=;
	h=To:Subject:From:Date:From;
	b=VAQ6AHihwHqiloiRMuekpJUsfLP6JM+cUthA6m/yUHswvLaUyFwc65VA4Rx3TkL89
	 xnM1kKeqqCXnE7ckuks888rypbmUMbVcMcFATStjmkB00sMov3Wx36ZEevWuechuL8
	 d2vswIUwJUNudIT4Y/F02eOnBgeo0eUVaRn9MUA+5QFyjDAgfurtlKleomjNWvgJs0
	 XH003t70EV9JRLqk17z4ORGTDJUOvRrKk8SgJQ9gzpgTPj4fUNklGtj0VoG8VjETS4
	 kNOFhY1amMaechz83heNgiZTRGeVbHhnLl8kcv6abXFs20vhzcAMq0zYQPYJHTVeqg
	 a0y7ADliyY7KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90693F013EC
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 09:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177365189358.21386.4488147775838276868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 380bec6f99bdb881f350ee76ad3b4f8acdb3608fc84e988bde77ce63bfae8d20
Date: Mon, 16 Mar 2026 09:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773651893
