Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD88378D7F
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 01:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782177994; cv=none; b=hVWGzFJSLPHTPMVyuXgY/CeVOQSkYM468mLOPC3ePzya2pYh7EnlOuxPL8w9XLw7zdj+iJrCheIGnEoeeP+v2TCeRph5n1+o1+046pvvH4VVy+Va82Ls6Kx8//ZmyJrUVEJtvmsy3Q//UXqL2dqPulq6iwNTfdI0Nk0EOu2JYsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782177994; c=relaxed/simple;
	bh=Y0gwyee8SHREi+SQ8VULNV7sP0djuGGQjMSL1kRFpdI=;
	h=To:Subject:From:Message-Id:Date; b=SguOmQAcqHhx8evsDTe0xmbTwb8ggUzqwx/Xe06R2S9Hgn50FGm3QvI4KKAuWh+kd7fcAJfwXWkw+f9RktCvO3hTN8kZe/KiToYMe2YxhzDkLMONhp4fGe4ylGW6zK3XXr82e5EnGlHsmqN2iXH9JVY2NTV7KUfZ4j71UfuExT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i+UhLIr8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i+UhLIr8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C663AC2BCB4
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 01:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782177993;
	bh=Y0gwyee8SHREi+SQ8VULNV7sP0djuGGQjMSL1kRFpdI=;
	h=To:Subject:From:Date:From;
	b=i+UhLIr8VaS+cSgj3KaiuXHUzCKPQIzkeIMcaNLqzaukfTlCiPpzXTHCQ/6dGs1T/
	 MUBRqQwu1mX859YlV0Tc0BGbwVCbEhKvZiAmwD55pbPGOFYijYdUdh4BRIodqyc7co
	 sz6OwEvxONrTZhY3VDBwj8s0jzU7uYyn1NimyyXEBXIHhHsA0Y8+et6NULk+8gADiR
	 /rhI7c200OglvXjETOZi2So3Gvedr4B8manU4AxK3WO9a9QsDGjXKUSVQcXKpuDnch
	 1f3kNCq3v34BgeZaO9etOnRmZgvmVvbZfSAtGfuqjdB55FXvsKtYagYHJa6g2iuIX0
	 SYkrUbfE3PN0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA70CDB46F
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 01:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178217799369.8189.2386813620903980215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e931d3c82889fb3d6d527778d8b1337c14039d4ad3375162de64ca3c52d8d358
Date: Tue, 23 Jun 2026 01:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782177993
