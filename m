Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C5D87E782
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 03:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718075303; cv=none; b=qX1QyZVycYBJu1VuYuRxPmS9O3RARJKuFw0KhSQP3RTo6e/hMkEekLTpuWVW0I2+3vdPo7R4JcZ55+/IxyVMZSs13uRKNS66aB9tgDkGfsh4Cbu8kpn3WDkgJtmLsBdwk5gozZri8WPEJmPrnEMw6FGsS0R6NPcrK2jmJVRulgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718075303; c=relaxed/simple;
	bh=+pwIV+l6rWUvVt5fB3X2ajTzP0IlURuigHfxKdl+aUs=;
	h=To:Subject:From:Message-Id:Date; b=uuT0q5giOGiiiu+NExXXhFxkwSjdDSyG7QuRULqf8Tss4zk0DPstobkT795y4JcCcPhaKiomC08Hs88F4buV8DXwMZfzELHbkbVgFISRfkesp5WHxCxHv56hjntWzQMa+Oj17YuFaTXQatjTAM0H/5EIuObzKJBSk+9s6dMoS3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ru1Aqo9l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ru1Aqo9l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D81DEC2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 03:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718075302;
	bh=+pwIV+l6rWUvVt5fB3X2ajTzP0IlURuigHfxKdl+aUs=;
	h=To:Subject:From:Date:From;
	b=Ru1Aqo9lk7T+kOB6sY2uOqJg7VYtUuSRWr2JGq9nPzfItpKC/kaPQ/WlHB6he+n0t
	 2rMTtd/w55WMSKBF4eqVATkd7EZBpU7z2xdfon40/wiTAN20Yk98CNT+t7B2t34OIU
	 L++LWvnLRM65MYBi+g5XG8pXSsSYEEIZj8g+kQOC8YyOwaxLrZVlDH47RzlG2xzlIm
	 C2UkE5GfZ5Yo2WhVbhtIV5qXk09vG1/GmSuvXJqzonxB7rQ8qaHQF6RuZwQGk3RxiL
	 jiNXupi6IQbtULUJmCONiNW5ygEOAvzDVSRQm/fMsY+fV5NGf2MAfBEVDol7rr7c2H
	 /rcIuAAIXNf/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF415C27C4F
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 03:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171807530276.22614.13217849417544407357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 092a8288a55e0248165cc95b4ff71bc53e4f21b87d5f0ab9d84554ab8bc05416
Date: Tue, 11 Jun 2024 03:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718075302
