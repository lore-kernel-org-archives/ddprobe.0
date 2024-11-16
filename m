Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CB2A524C
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731747354; cv=none; b=OC/hlW5QpKC+JdRAhKsG3UY2ECtx/oTe0u2e0fIUWnT22/M1IOca/IgpKsbHsR4YD6UOtpI+wpPLytzlYico0EBMYvRvYvJJsRZw35FgzF+wVNfQ2O1Hv2AheaXXZsXHN7DNJFUYpoFB82tUK9Sas5DK+q/jsyr2QVCRVebeI9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731747354; c=relaxed/simple;
	bh=xKr3i/9vlABnWVvQ9FTNtzdxk7IkgZL08k5SKuIc80M=;
	h=To:Subject:From:Message-Id:Date; b=l4avPsWmlHrjDTZHWXe5oTY/HU5jruxi5jTESNfxxNI1vkGNHksB7JY79B8wETQBsEQv0dRplWPANmHiIKsZrL5hTyi3VFE0tzSy7pV0HRt2f0fZ8gkhWIpB1b+8TyNl+nCHsCeUbFxBghEVJS3yV0lYthQip1eJLO/EQZmXqd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l70oQyvl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l70oQyvl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF780C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731747353;
	bh=xKr3i/9vlABnWVvQ9FTNtzdxk7IkgZL08k5SKuIc80M=;
	h=To:Subject:From:Date:From;
	b=l70oQyvlXs2obtfdSatnS2v7QceyoZ93NN6LCO3QjLKyrjOkbOOtzePaagaJ60LeQ
	 sb6BAhmAQng0UM2iniHNTxyS3MAmsL8vcui3tM70AYednJ6KrjnH/wfWhpJK/7GTPH
	 ayexrz1G9+ZUd5DMIVy2n7naXFGbmUfad9Dt8CxndZBXjNwQ4LopS1gDLXOOTVk9H1
	 eWsY1xoXEwqQsaf6nTpmYtY4knrRnPtYimg61YTbifzYMUQH+prElJa/qXAGsnMJO9
	 QlNiXVsxyj0bTVPZIMffti6oqnGb3gP0dBCn0Dw8t29oN0I47TzSUpV18qrLdVV32F
	 wAaPOP5YNGLWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C783D68BE3
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173174735360.9728.3755527026040209936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 642732257e1754d2e716c6758b1f361b5dc8417e0193f5d69941eabf6cf40f48
Date: Sat, 16 Nov 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731747353
