Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE0B1940AB
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 23:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719446003; cv=none; b=JKDqBejsaW4UbA5+OsRypLhMVg6twkqEdaUm5GC1jQf47x8Bntk+Resoo7cVQP1aDFS8YWO87E0w7rtCbdsIuzBNtgBIl12mU8qfRNcPaXbmyzCAVFgQwca3KJlZiIDdIZIUtkNFjf91ii/VbvdYxp7HfXhVFpkoCUFaNQe0qKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719446003; c=relaxed/simple;
	bh=Fb02+OC6QrNKwpbEZvv4fgtEizQq2viMQYDlrf7Wuo8=;
	h=To:Subject:From:Message-Id:Date; b=eIhH+dChzh9Bc8xq4IiuoGq9hrqKGqMa01tkADK9E4rPSnMT/CyIMLu+m5feNpIPcpIt1D0HdSiITuKl5Vd7EgUdpVS1GmfktkJfFiiC7NrNSS4HfGZ51RRTJxRpRhH9K5Xf4Fuy7yp8zKXZU0/vVS98GONo/1SjPs/fXmJ9wH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LEi+0b8E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LEi+0b8E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7DB1C116B1
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 23:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719446002;
	bh=Fb02+OC6QrNKwpbEZvv4fgtEizQq2viMQYDlrf7Wuo8=;
	h=To:Subject:From:Date:From;
	b=LEi+0b8En5Xz/Adb7B+2WlfwZYPRPFzWhyhrbpRTyDyupP2CZPruuNtZb2+yRVbjj
	 fGxfDihUxBNd2C5nZhwHbbMUEYxuw3Zna4y7jvAXcfwotNhAk4aPQkvODTGe4i4CvK
	 TjQMROpR/TYneEPk7ENnzYHz28hW3eltryS23jtBesG8xqg8witS5Le4JI+aSGqqJo
	 21YeOaELWlMX7KdsWgK5GZrH82Z+Jl7Tuw3CRR2bEPA3/FfQmPqmaU5KF2tbZVW0S/
	 Wz1hpp1Wulbej7efcWHBDR9F6X4OxFX2rf/L+oYjEJNgEsX7KBJyrmeugVg32Tj7kV
	 mJCYq+dguG1yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFF39C27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 23:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171944600277.527.15434918658582318352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f31859f4e71d5fc5473d441e029a995e641fc2800c1f398d568f7b75b7daa7f
Date: Wed, 26 Jun 2024 23:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719446002
