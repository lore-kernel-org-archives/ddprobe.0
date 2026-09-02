Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A2EF439F8F
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788344434; cv=none; b=XowLFjXP7Nj3WstUrg2jEs9yjuQd1i5qoh+k3uknfQECeMERRjdLNHMgBrpARnk5PYj/D6jT6llDJ8wzoON3yo2g9ppE7Mj6iUyo4YIqh/hoV7mvkZPlpgdMzTSPoYnDkWz9ENoYak8EnOJC2xfL3yb1Lk4xfTk05XAAtbOCT2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788344434; c=relaxed/simple;
	bh=KUZVeySFhW0ywbNVjhfH8ShZVLT14QJH949q+0uP2+0=;
	h=To:Subject:From:Message-Id:Date; b=X6bjQ6mH8IUtLbbgNvYTSGLC8Q0GiyGGYweLLrZqe17PSVD63hDOvJuf6uDRd4JwX48nHbswqThFw2Mz95X9DTZbRG/uHCF2nGB3SR7JAAxJ1Veub44SQVev+1gjgdQoT2iJBaA1qYV0iGNUfbx++rJEIN1MIZAzEkIo9SRI+ZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dXryy/Dz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dXryy/Dz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB729C2BCF7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788344433;
	bh=KUZVeySFhW0ywbNVjhfH8ShZVLT14QJH949q+0uP2+0=;
	h=To:Subject:From:Date:From;
	b=dXryy/DzSDhOzu+b0YUmvdU8sBC3fgeuufbwr6KAVmPWl/JW1F/Ih5Q1jaFOdWwAv
	 0FPkpn1qGSGdFFxkMJ9h8QzDUehsaL8Dd6eVmPrBmlwU1WGOLtU4A+1iZexis1yzbI
	 0HnYNxCWNOz3OjPMj5o4SVD0NsIVUDtd7zoIIsHgb2jtiEqqDVs4TyWIud1jH8zL20
	 eiI8wUfr8XrMzEA5N7MpLCe4dvbEgYSS5bRhWEyJfEXgIjJOBoS0E6cO+LY+D5BsmY
	 /5vmTt0X+wKAz8SI2nhtcIpZCVvoPhk/tY41KBbXUYk11Qz0SuFB7KJ7c10oYtl6Gg
	 7VzoiYnumZD3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B48C61DD6
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178834443368.20306.9701448736936177486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de95461fdf3e30d5cbcc35f8bafb9013b9dc745e68434d0e8e974ee6dbe9e1e5
Date: Wed, 02 Sep 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788344433
