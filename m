Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17A3720ED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754659195; cv=none; b=W2Dmsow9JCHuVl83eNLQe0BEvSHs5dIWq6zf5NWmarzIFdL3RPCV9klRCIdp0vHkre2s216yFOKvW9zhynCqXIqKV5GfpX4hv3Gi48FjrUI8A0x8EYZfN7+hDNA6X5wKo3zcFiam9WM8NgkYs7YaWP0sFipNgiMbr5tVpyiZJX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754659195; c=relaxed/simple;
	bh=+9wonNW7IYH4jbgOnpPxYe2r/mUAu3XMqM0joyNX7vk=;
	h=To:Subject:From:Message-Id:Date; b=ukiVDE036rsQ6y3L/3HokqrydiuRtUO+JV51tapk25LCdrLgR/f3wEOhjV9xBVJAJaNosHb2ViIT69ZH8SDHyPh96yBJGEx+OkIHzKJCTfhz0eIF6JKb9/YhFtO5nGEhRlBVnHwVYj5kTVgbnQeiMg9EBEXuvfwPPBxLOBZGxnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VMZCUZzG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VMZCUZzG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D72BC4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754659193;
	bh=+9wonNW7IYH4jbgOnpPxYe2r/mUAu3XMqM0joyNX7vk=;
	h=To:Subject:From:Date:From;
	b=VMZCUZzG/rJ5XvdvdqJ680TMUWafqk1t4CfT4vIaOwS4zbOroXvvMS4E7w6hm+REV
	 EcHibmJnb4AoCYf2Pkvn1GpIdKIrlQc2lNINBwYdgmFozkqSy9cww+CHUqcvvNi/rr
	 WRx4AHGpkXRhIyBsq6n2LHNjXEzd7ePRWGXFRq3+tn3+mzAL+dEl2ovon3fVI0mzC1
	 Z+6YhLW8O5/tgKl+lMMP+d60wiUCKIuugHGJvXgJw3YYy+4VoKoGVAUqB9WGPYnSpW
	 0s7nFpnsA+W/arTODkMkynBgIAgQ/JfQ8n5nAeHpSzfOVxpZpb5p40a1bQnn0U71Ys
	 JeQv3h0N6lohw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5DDC87FD2
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175465919357.12861.13372107618729296144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5971ecc911b3bdd10f8b628f83f73693a1892c4ff2225d9787c824a26d2b1774
Date: Fri, 08 Aug 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754659193
