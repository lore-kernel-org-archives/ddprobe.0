Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60C891BC2A
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790127034; cv=none; b=fhc7CBkWvTNeEF6/C4y9tJR3n2dsqQoPwsi3vdDEDbdiEoL/UoQork7wzElKheYvWZUE4QidYiVvIKk7+IE0Cn+5uzQsoZUaxU0WeNH7pVgXJCQVo/k+HhUn3MWdELoPnXS+dqvnhxDaWyUPKajbW5zWokrfqZNcv2U0BG1VAHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790127034; c=relaxed/simple;
	bh=r6PrFrR8Zu+R0jO7ToM2FrWeyJCJav4n6pYAYqugb8s=;
	h=To:Subject:From:Message-Id:Date; b=KuMhYUmS39/JKEyf9LW5hK1Bwx3aPp5nVHuHgt9Ozn57Q4EEedO97xZ/BYO5bizdOsvHS3RMIQlowc6MewBQaBy6acYN2ufRLpH7ya1XkM5HY+JFQYMCHk0atKA/3c+pxSKRxyGutcziKraywg+qA8yzPlMOHS/r056Pr+2D6v0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F2lk5it/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F2lk5it/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7E0BC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790127033;
	bh=r6PrFrR8Zu+R0jO7ToM2FrWeyJCJav4n6pYAYqugb8s=;
	h=To:Subject:From:Date:From;
	b=F2lk5it/AKQ+90fmiSZgMYkLuBeF46JD2udP/pibIH2Woss9+r+CzJJVpO3YI9Y1k
	 6S8hyVyLaEPztoBlPi88qpynvzoRnattDy4X8ocWS73tBDrirUoHGgEe4EANve/mMS
	 oEAOZ9DvllFVAvbDb3xugmYtvnueBdAZ9Zey5bXLNj0K5r0SYG94GstDLcjg+7I0nR
	 0D5KNXDiMf5LmvAF+rQjLGlMWyZHEC+We7B8quwV95o5m4uRSTPF4qKEui2dlTDwvp
	 Ga1GTl7bEYEyzLxe3K5wtFqOQ5FHfcqZRcJhBEHhHnM2ff+aQBoJEvs80CYRF+Jk+d
	 q2FVS4zdQwGOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3FBDC98302
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179012703370.11088.2187237059146346819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1e75a721af0d558419490651041d657f0239d0e21876b034d01ba4c702f289c
Date: Wed, 23 Sep 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790127033
