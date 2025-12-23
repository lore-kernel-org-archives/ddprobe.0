Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41E242D6E70
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 03:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766461434; cv=none; b=IT5x8rQOjl+R1UuIJiiwsnYhIshILHRAhIqC/fcBJXXILXX8ApgxYAmSNqh3WMTpAworA6tEsDURV0ETJWn1KqbXd64rXdcJUPLb9Qj8FqYPn/hY9vbDtmyZMOJDXLiqK+afnWkTriDF1PUwbjyOWTzN79SkgRORvg0zqgBeQmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766461434; c=relaxed/simple;
	bh=apg4y6ZIuUfHe9gaQMeZG++kicuYodw7Rxd5Uwad3O4=;
	h=To:Subject:From:Message-Id:Date; b=VHTo9hOCcnLisEAtPCPfsyZnQCjRbEa0w5oBgyH9u9u0PobqP/jk3QHoo4YHEP3S8OxUuZM7JMQLNaf95yg13vjWv079BHl4tDwW3+A77GY8Uqbkbe1aPg/pfGDSshqfaDc9l5DApwpmxQ+IBzb+AKHRS8kjgE/rGBxCSd3EDxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C6r7jLV2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C6r7jLV2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40D7C116C6
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 03:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766461433;
	bh=apg4y6ZIuUfHe9gaQMeZG++kicuYodw7Rxd5Uwad3O4=;
	h=To:Subject:From:Date:From;
	b=C6r7jLV2d+klJex+Lttnw5bDSzOASXEJfGLPbhX1Yc5lHlPkQp71OERx8yA3fBLfi
	 8Fl7YcR3rAFRUQ3YpsA1YO6P7zklHyS/qqsrISPipCazVLS+u7anJKOXqVBYKWPr8z
	 n/PEPzXdvTJ9EpHJEnsuwCpVvgbDgTMAMqIt89Fc44R+o1SiZfJZtWPLtAEwvUNCae
	 cuK3Q5D16OzcFla8TcUe/BO8kI1iyBnqsyMkhX8NCBHkgOtW1gJUcou4ewh11wclrj
	 CqtyR7Xdv4y6NeWf52vUEYzW91sGgrEIbtRmoJaGv1mgtLlyOzgfsVfZ6fhE5EzXoV
	 JUUmzVF7iSUzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9498EE6B261
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 03:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176646143357.8502.9294254963810177720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fff9f989d96a913f49f20a76e37992acc9c3c8eb86aa5c043091d838ffd8e94
Date: Tue, 23 Dec 2025 03:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766461433
