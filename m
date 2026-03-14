Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF241AF4E9
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 02:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773456294; cv=none; b=c2EyP71jFzcVmYxouoL/Jy0QZJOZuXXDPaf/ZPklua9z+AlzdJSofGFP8J8kx6xlvwLBCxsE6Y+zjuC4sdX7LuhJaI9CNaIlGJW4lxGnaujNweEUHs2jqeILpSC4hHz3MLCGNWiRrUYbrKy2RZXpzn+J+stdWAg5zTZX49TDAbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773456294; c=relaxed/simple;
	bh=JcbHm/6dPYWoVfpf4vDwMwPRosp1r9DpTUB+p11Y/BQ=;
	h=To:Subject:From:Message-Id:Date; b=F28TkWnzPaGdpTmhj/cKdKtARb7bdBIlDAZXr/uBefwUkyTLgDXkfoKWP7fOk0Eb2j9sVIlwhvMUuVgxu/8PcEqYa+KDK3z2CWzlR4VE8CiyM+U78z5hkb4hC2iN250Pu7x8gfXMQHYd6VShSjyjPS40RJGHe/Ge2gRbwttdlSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CkwCf7BO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CkwCf7BO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACEE2C19421
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 02:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773456293;
	bh=JcbHm/6dPYWoVfpf4vDwMwPRosp1r9DpTUB+p11Y/BQ=;
	h=To:Subject:From:Date:From;
	b=CkwCf7BO/Zk2Adh+L+25uxLy0jMx5RgRrBTQmo5GuPWIrLaDsbDcyrUOF9iqBcR8Y
	 PWLbh5Myi3X7duZRjgLsEWkcFazJKZppQkQC5PJOR03zjZPOYRqk7/pGLvEAIT6VMi
	 4hYzgv0jxwQyDardJmi6i2zuVtay1nxlpFVv5rbofkVzA9+MLUvCnzYwhDAjyEtpB1
	 nP7KulztK2+qAXkCl6UsulN3SaC96UUZyVGCnGGThR+HPd/MthLTCzniElAUoOUSbn
	 PpKUx/HgLfHVtSDxeEO2tCaTWaksGi7cDpqtNzu4tSvNV7I4BCZxE5Y8cZt4rxh3eu
	 9i7hoZLxns0Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A7A2107BCF2
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 02:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177345629357.21180.14232516784090763856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e6bc620564ebb7620fa376a574e618b8cc4772e0d4dd1c5669ecff609ba0f76
Date: Sat, 14 Mar 2026 02:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773456293
