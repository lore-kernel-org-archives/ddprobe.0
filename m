Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1513E4E0B89
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789676435; cv=none; b=FGW1yU7qbzyWM5bG7tdF/7PKWagpBhc993ddJ0tUjVDFJ+9GN8jGfttflad6aolEsXiAzglUnDQL6BH0TZDc+nxsSJx00YP8le/QmLlATx+pyT4G5gi2jjppXTkp8NF51B7WpRaJK80Gxx/qxhaWjG+hW4RROcBEGfd24F6Sg8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789676435; c=relaxed/simple;
	bh=aRtyNYmzblETsEeuywATYPP4n7JfUGUCjouteWdWoHI=;
	h=To:Subject:From:Message-Id:Date; b=PNIWgClXEDkuhRbgTrYap88thtCNtSJ4LXGTuCAYb59JoWaaqQA+eI11Dd7vjkAyVrEub9NdEDSVqTm7MJv7UuSugMOY94k2P4n9eK63aHrt52DZ9ZuyPYsqr03YECnF/SXYxnh5p3xXca2PGPvHO06zqdCafeJwfJ4b3sOdEjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mCvx7aq+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mCvx7aq+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1144C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789676433;
	bh=aRtyNYmzblETsEeuywATYPP4n7JfUGUCjouteWdWoHI=;
	h=To:Subject:From:Date:From;
	b=mCvx7aq+VvVjViWSA0lf3u8W6bWYTkK+tSGyi4u1gaqp4naxTjr4w+4c6qYTuYJvX
	 CHyMhu/osaNrSmnEfiX6OjJjTvtq3u8utrUwSFYjP1zBfy2I2k1Ovd9ms68W0LcMYl
	 kfTwxMQPrDKqxkt5AnM2MWFjEY8GrH3z7LCRB7LeQehq+ehwH/YGzOXWtg5AXQU8Uc
	 rud3akhuVS7H7iHKCMSLyvw9uzWdS/ZJ5Vp+8N4VE6BYwlbMmSxQC0gujSMvE6pY1A
	 vMiAY4Lmawhb8Y16fXjHRn0FJrOnRvH+i+A9UCSqleXed7vtkAudbF64ObY3M4RW6V
	 +bu0buya03uew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF720C982D0
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178967643370.16834.18050283634127894747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aef3f77aa826ae44482101d0c3d1146f994ddab9eec4d60a7cc01bd840b2c0c6
Date: Thu, 17 Sep 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789676433
