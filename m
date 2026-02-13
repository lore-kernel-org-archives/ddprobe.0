Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD5234A788
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 09:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770974094; cv=none; b=DmUosyXnzjr15Vc2dSYcLNwVghxrQgyfWG77AY9jMf0U9RwQonvAfHRZRzkKO3PzHa0cjHVCMb2rgix9bZ0bL/qRBoLh1X0Q+hyWXc3fwRYqZtIM7M+jL9RZuqUoN8gKUYM7ePf4KFHq7okl+WCCtros1p2mn+3huEihvgmqCX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770974094; c=relaxed/simple;
	bh=cIw7i6JOsvxPU/mO400t7LCt0AbVY33mdm8m9yLLqQw=;
	h=To:Subject:From:Message-Id:Date; b=EIhl2/AHIrlz3/7sWDmPKHEe+nr51rLWOTZC8klaXd2pJWY1YJW5gEpKtZYz0HusMUVCdqD7jILP8HbgGzxWlI2zPGb9SFTRGYq+SsC8D9Um7lbzaG9esmp8acBrrtyUWX8v9pshVWGxkNOgnUhfanoczMN3HeGqvuDI9YhSzRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OMgcSQc/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OMgcSQc/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62D5C116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 09:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770974093;
	bh=cIw7i6JOsvxPU/mO400t7LCt0AbVY33mdm8m9yLLqQw=;
	h=To:Subject:From:Date:From;
	b=OMgcSQc/H+uIgFIC7nZLY4MFpaY6C6mNN8A77w3GAbTD6biacmsDFRApAERO7JEeN
	 xBW05f+7Z48exh+6LqzKo6VSupBUjBcjc1T2OJ9v3vacbEZZDtc+8CUenqizv5Pu1S
	 /CRQQ3NTbipXEh05hL7DHM0PacDIBm7aJt0f23010KdaL/uGsEh2q0vNp0AugqwiSd
	 lTLHgyKCnQlCj5958SI6c2OoucZN/MpMBeg9ucQDJ+JL6BZ+RjJWHELMRhvDnHp+mP
	 M3GRd3jK71hGv0j8y8ICujkDIkMuXX5vaaE53GN42g6mWhk8Gnxpbq3z6eE5doj1z1
	 JVQs1vaNNowpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B0DEF48F9
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 09:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177097409359.19583.9245940372123284114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3e18ea36097ec3add7558a8088466ea44f6632d5197ec1cef8a1580a3ea6a39
Date: Fri, 13 Feb 2026 09:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770974093
