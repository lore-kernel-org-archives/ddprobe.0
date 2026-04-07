Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10CB337472A
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 05:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775539534; cv=none; b=ZYT5opURV7nkUScvIAMoSqI1+mVgLcVlRlJcLwwb+YE5wojEK0LlhJc203XUsME8ogKHYJD6j16Z62zfnWJn12BW9rWgVvtLsAjUTpoXnLgANpEF1WVOsyUjlE5JJzIgERsRgmgMb1TzQmwLJKlUCucJI3qLdz+3X43SfasO1c8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775539534; c=relaxed/simple;
	bh=joFfMyXmPSxkmWu8POgACL89JzKsWiHzxhIDARZWjxo=;
	h=To:Subject:From:Message-Id:Date; b=AHAY3VON/DogVD6XDJgAKdzjzx89oWpBlM+g6Qvkt+fzwWX6lLppq6v8BGnGFGCJFjBjKpTBpCMfX9PnupYC6oav5SPTydqT33TGICO91BJzvIXk9C2oiBFDye7IZ5tfVOGr84R/dNdRnLJ4XMbXZXB3QrspHAQHBBcYbA0DNxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iE6EQF4d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iE6EQF4d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9185C116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 05:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775539533;
	bh=joFfMyXmPSxkmWu8POgACL89JzKsWiHzxhIDARZWjxo=;
	h=To:Subject:From:Date:From;
	b=iE6EQF4dfdhwebJV6dv5gq9pQqDe8d1FQleaDUHXNfLctti5LYOkWopRCaQk4rsLt
	 ouUTe9xr4dFNHGO7SHI/VZdceSiJXiH1M0gky1hCGwhaotzmfc+Vesjsp35Ewy8d7x
	 vXSlU7n+Si3mIADZ36rXeit40sbkYEs85qGZgJueGlYAjR6ZFajZ5NCiSyIzZl9NY9
	 HtOYXO0n6C1OzM8hT6UMQTxif4L9RlbHbYeIU6nQhL7T+ditdKqulv24/HVW7bIwtA
	 KxgBs0c0f+Z6V/8HLpU4ThFiuSXOJV8E0BydpTuJ+I2y6a/UfwxryQloYYN5G2LWiE
	 EZ0C7QATv1IHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A979EFB5190
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 05:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177553953368.26676.12684401604710811052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2b1a85621919590dd2f91f05957c6264280081e34cb0071a36ac713d4594cd6
Date: Tue, 07 Apr 2026 05:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775539533
