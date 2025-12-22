Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34CB2137C52
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 05:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766381034; cv=none; b=dcLNiI28hg2bsiNTCsuBdhBBHD39lxE5ND6XVPwM9tSCPKNfydZphSuWFmn3tueG8BHRau4Auq5cWrhRwOzlfxrdchfAtW+Ug7Um4hI/oXzwcYfV+NLuxCFCRc+qXuoyN9Q/ryctp6bPPEtFIRHV4hcB4+DJEBF8LucNkiqJQ8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766381034; c=relaxed/simple;
	bh=tXY5ZY4ThB0aOVvNQIob9+gl+fVc/VIDs76KTI6GzKo=;
	h=To:Subject:From:Message-Id:Date; b=LvGWAtuIU707eJGB2Wy+j5nRn/dI234TSVvVA4CqaDqax3WxYiCJI8OvsLrLENER+TC2UMYNdhNNpIWxKr1H93zyJQCsE82PO9kFcDYKpdPZnOe7F27wshBkWDImX8vcKThMndBK8RhE5LVWaynDGnALladRkom2cm4LbqMpS+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M9ytK0Vt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M9ytK0Vt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3ABEC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 05:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766381033;
	bh=tXY5ZY4ThB0aOVvNQIob9+gl+fVc/VIDs76KTI6GzKo=;
	h=To:Subject:From:Date:From;
	b=M9ytK0Vtza+ukDdWvSxqcKRNSBhT/Gupwzix6WwQXynfifQoESCHgpGytTjHwmv3E
	 q21NSPa7K1UxqjjvKO87q8m4m63vhrWe4SEWC0gYuxdoNOADG8MTzLSh35HVbqdMx+
	 9ysInYd5pEa+z59nJUAz40PFvORGiJm6I+9Eb7Ews/poezZYM15/g7zbJHooBo6Oo8
	 F96XZR3TFK7CDqJAdirIQkWbjRyn4aOlk3o4DIddWB0IABPrALxX0emCYW3K3gIAIm
	 bBy+86BwayAYoHsUchg8ahgaKCB5OBObIKQ2Ca4JveV7GMVZQT8tiObGcARMiChof6
	 hZvau1j59LQOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A50D711D5
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 05:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176638103358.12594.5342984263809245928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7618f28103b6df11da1692e9162c3056fd29c927ae6c0bab08e3f009cacae2b
Date: Mon, 22 Dec 2025 05:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766381033
