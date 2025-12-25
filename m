Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A02A17A2E6
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 07:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766648634; cv=none; b=YVCuLogkVzP/MJRSB3wWjA6fMWROqVEzaCgnwKXtlAzmdFi3ahhw17x1RNaU888Q+/+E0K0nE07UiigFywOYDdoFWlHaQh/QLqJ/J0oAVM2S4lPkGnTMBfIEid+vftm49jnsJ5gBMxYv9QhgkC0RCGiPMduRIOg7BtpGxxRPlro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766648634; c=relaxed/simple;
	bh=tyEasQrADQ9n1doxjvnrj6qoTkBS67SQ3wyg5m0x3oE=;
	h=To:Subject:From:Message-Id:Date; b=CUzSBRiYXxg0lL2LFQB20+BL9BlrX4B5SYZzOdSiG+SxrnpPdaGs4AmP2T+nFtrdgMDgoKFWKJ3905ERx5wAchOhhXj9bgc8mdOc+qBfEprppYSPkGopNtI7e0fHNgFmQohV4l/8lZhA8hUkmkApgeUhcWqEMHM7FlxJ/KP7qZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qNJIMbXv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qNJIMbXv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6C5C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 07:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766648633;
	bh=tyEasQrADQ9n1doxjvnrj6qoTkBS67SQ3wyg5m0x3oE=;
	h=To:Subject:From:Date:From;
	b=qNJIMbXvP6Xcrua1SE4K2dOwyH8BvX4RKwSGBdp3A82N+si/5rP+k1RkaQTbosfJs
	 TKOyDG7v3b9SWb0Rho25g0H9NeHy6kcbAW21HTTJqzP72WAsa6HSzeFTrLcyUMfDxf
	 tR+NRdgi9vydLOlaMkZ5AQh5x7VyusYhmHY6fylB/FyEcN8YVaz3fLqHKzViG20fdN
	 VDrm3GIkZxMl/mfkmUKm508XLOK/NC5BSOwq8HeMGmz9FTU61hipXBcYP+dbvxS4Cr
	 RPpzPEGWFCJ0M6NnffcdtMKMCge0oy0U7wuv1c0uijFGaarzvJUggKFUMcy4qNGg3C
	 1YcYMxLhOXFKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE49E784A4
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 07:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176664863357.12084.2844982811749011157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bedac52cd274588859f1ecd568ed704b1829fcd84165e1dbf7dd070752e77bf
Date: Thu, 25 Dec 2025 07:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766648633
