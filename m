Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33243243951
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 02:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764816174; cv=none; b=peRWB63Z70ylF/RdbZ0r9TpmiGz7MCY+CGGhTJGqIKtPSNUtvzRIt0AnbOjX5UMExiu8G43lh/9x0eA5CaEAJ/MZjAK2BCEy1v1mwp4LX+j+x5WSugp1qICUH7kBk7myiFT1QzTNr3oWIpmRkjcAnY7KuUvrOWFYH3EHzcUeo9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764816174; c=relaxed/simple;
	bh=zd1aUHzIVFGWSNLQF/PebWcmVI/jk/ABrysC6b/TI7M=;
	h=To:Subject:From:Message-Id:Date; b=Oyj3Epq/9DjX1z/0bJzz2ptVj3Smg+kQAMN2h+m6k1BAWAzVz0BhdhjnjpjDKlHIEz091pflxjS5+RsvzwNiLib/oknjjlWKRQa7t5gBO2q9DLRT0Kk3DQxTa7kZNPYMK3JdG/L7m/ri4TyXtSQQKCHnX7i51NfdgsgvE78yF14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uiydOy9L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uiydOy9L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB248C4CEF5
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 02:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764816173;
	bh=zd1aUHzIVFGWSNLQF/PebWcmVI/jk/ABrysC6b/TI7M=;
	h=To:Subject:From:Date:From;
	b=uiydOy9L8MHclpQLXhPogkyTz7ZwdMAlT2XCqRXhUIbwv3aaTGcmlKxP8T8GFS+gG
	 Lvg2k7C0MI7o6/DqSrixqycwZLHdwMAovr3TslK5ipYwCm8BR/ftugToE4wsTCsh4C
	 NdT1yJjKIZyW26g5dRuJ5N3fhzqFzW6L/BugFEfQxpXAsZN89qNuhNLVBnMYxWTDYy
	 tZLNp6vNzjPQ+lfMnegjdz4GfMFT4imi3jIcwVv1n4bSRNt9LJBBHlsRC9FDhGjPM+
	 JSNXyoYjUrz3cSUgrsIQ47Psnbd3BQIrEMU/mTcHfqftJH0eqZjlm5xA/LdfKx5u3k
	 UqBY8QOhVioaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B76D1CDC1
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 02:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176481617358.26922.16029682524752354861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81370b34b62a035be5971c24e0040d39839314df489f31ef826414044b3600ac
Date: Thu, 04 Dec 2025 02:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764816173
