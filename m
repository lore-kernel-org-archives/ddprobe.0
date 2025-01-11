Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C4418622
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736559954; cv=none; b=QLag4+j6+448GNvHT33DQvySANk3DczdeD8VJd/LA0GUM3L+hsXlCIPX5igV6wkzoLg2NSM3X2/ANk9o9Iy0pxMXLL+odely7c4Y2dTglvkznGBhRKhe5gOUw1NdWW8MOjG3Tyict0VnwZBF2pHoooYl2YmzjxUTF2fW9VPSDmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736559954; c=relaxed/simple;
	bh=6bGLnHps9x6HWkmeSogOnIQbiEyEfdjL4/xAY9iVbfg=;
	h=To:Subject:From:Message-Id:Date; b=oMTRhQitX0jr1MvdGYIiJSRyaoRDO03EqhgD8le7Cny0/6CE4s5WkI1D1ggSYnjZu3SB6NHR46x6MFMpHi3jZhwb/fDuadinGd0V3VVF8OfS9XTKzzrbn/JXLoKIuPLNBP2tlMw69s166vlgVTHYKbdBMWlgHvgSI5g1++hge3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z4NQWcPk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z4NQWcPk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD9C7C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736559953;
	bh=6bGLnHps9x6HWkmeSogOnIQbiEyEfdjL4/xAY9iVbfg=;
	h=To:Subject:From:Date:From;
	b=Z4NQWcPkIe+35REr4q5+Fo5v3r0b8LGA3G7Isv9GJihZDMmJm8M4X6GqmdXJilHHX
	 FulTWRzPWQKEe4gTRL0QX86nYO3eP0ER87SvpLyZKyJQjV2G5EDzuVvNe/lvkeGqzC
	 j6uAqtkeSpVcMkZt+eC9hf87H+Udc/T8+9IE3Kjy6OuVezj61U6Z5XapxpzPFORZ2L
	 il3gJofARE7Id/jGi6qBC0NQJIPqb0pZc+5I94qM2EWn1zKZaU1tajQA6r7TwAuht/
	 Cevkwg77qw9Wr0gUvirpqUVJSTJOHk+J692qnuXWcsRB3b/SaN2P79I2t2B43M8NSV
	 oBu5IFA192+OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C2A5E77188
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173655995362.11375.8101790275938340212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da6735249b92cf663911e228a9af4f7d7d5d1ff1d5f777b61818c63c29f9b51f
Date: Sat, 11 Jan 2025 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736559953
