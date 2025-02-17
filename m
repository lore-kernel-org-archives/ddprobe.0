Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F938224B1F
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 15:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739807936; cv=none; b=awOZ9VxBJqk4gGjGZKXdl2d6ZT4H7KeZffKURqVKOMcp5mEbOe3dLVzOdv10V+7oN1TISDqdQ0f+xMeufrIws5bJ+hL8uuLCRFaa0A4XRR8+b3BtP+P53AQ0Jdy98i49wXEgWMcJDQ/ml/rFju5eEUZ6RqZwLV/lC5E1xhh9rWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739807936; c=relaxed/simple;
	bh=21jqt7IqhjyrhkSo89jW9G6JgMdaNBG+si4aJkMtNQg=;
	h=To:Subject:From:Message-Id:Date; b=mtrRJOlOYi6/MfPOyNfHC63WFen7JrOlexULOnq0SDaqTqJNCk4TE6OHOyeUB50NBYux5pkMj942B8RJk4MiNdA6DHGMv+RoYo+n0lmbzu4UCFjom9qpwlsf+8TFTl2ZwLWuTFo+XCzGu3mR9XM/ID0qLHiHqrlVMTAAtqAq2z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fK7+NgJk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fK7+NgJk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9390C4CED1
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 15:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739807933;
	bh=21jqt7IqhjyrhkSo89jW9G6JgMdaNBG+si4aJkMtNQg=;
	h=To:Subject:From:Date:From;
	b=fK7+NgJk2sW+W/YKY2YHSrlBI6k4VRD9I5T723NKTtbzAn/C2MIKNbpQkBrTjj2By
	 13p+ptQoJ2PoN0osCYJ1UZjS+B1GilXB8xiCedajNL4NA+9IxjKaf6IpQEnJU+tCyl
	 Fj59PHgYRX2kGNRg8YcKoPnULbyA/e2TmhPx1PkiY16ufez3vnTdO8hjN9zyp1ghe9
	 VZLKYk7SzelK4Nj/aV1fUMLT3KopY/r3QAYgopDdSWZM9OazNifSmR3UeT9+yWUVJZ
	 tGBb5Hn/K9IockMlPqt0wZJMLVYazB45TZDpNoZYG1+6zUkVNoqvlsDFiATcNLC1Dh
	 cQ9AfUN/TopyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952C4C021A9
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 15:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173980793360.3566.11273569033950895465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0c64906b15eb75210ed1e983291b16adb2d866c58a20ce9d880c05049960b2b
Date: Mon, 17 Feb 2025 15:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739807933
