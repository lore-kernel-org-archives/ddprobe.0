Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 299EC13EFE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734116754; cv=none; b=Cxqd/mc2md5UaqFxWA/BUw+BDXksd4SUwbaaBGxt2n6nq4BH4zNHJjWGQG7w2opEhc19l8LypNX9J4OewShtYHTNQ6B/QdAMTqiAMH6z9QlZRt8GQZ6s6vkQYD5gcVlcFqRlJt29Ix3wcmVCtmsU5Jcv9viOJRoYPPrF+VLycJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734116754; c=relaxed/simple;
	bh=YF6IpbvD9pDudc8386OwNFqQzvHbNj436yTR0/LYGFk=;
	h=To:Subject:From:Message-Id:Date; b=Ye14fAU892ugD9OiJ0EKOpzI6YVQSBHl/k41kburEEVcxjrhuo1jmoE6TSQFqAwNQ9W6QFVgY6T0HMOjDQTjj9S88z519Vr2pm5025H2jIu1l6PeyYi1YJW2ICKD5WTxpjAcs6z7v3NPuXhJpZROiqGWXKXhb5GCv5sfxR/Pa4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XVlTrnT1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XVlTrnT1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB36CC4CED0
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734116753;
	bh=YF6IpbvD9pDudc8386OwNFqQzvHbNj436yTR0/LYGFk=;
	h=To:Subject:From:Date:From;
	b=XVlTrnT1dp/kyusKUiTTJLF6Obf82APmL+t93DS4OJKfKyU2+X+gMENqFBLbY7RP/
	 zLsUvlyIi6Cfh2NLNCn2OVJFnUPEJwtnDw10r28bNib7Uxyd/FE/yslArO2k1XU5bk
	 TIe7KXAHSrMeylbXr660Qo6kCADnaF94OGU7mXCwmcme9/u9Cv9xp9ISNk8qV6PsW6
	 g9pEmdC0HOofgjv2qAuDT02MlFZuAf7RMSLMYNPTvSx4WneK61T7G+j53reG20Cwty
	 7JAiQN2u+1aDgsT3XEbXexb2Tv+URJx5F4TCjlQf5dtnnDGmxLb7SzfcIQy3aPXYYQ
	 xreFzSiK3veFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B20BE7717F
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173411675359.25973.6909613313125928487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6af5545c79232a54b874b60975b33029dc5b4913b67cd7e1e35d8399d63b51c
Date: Fri, 13 Dec 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734116753
