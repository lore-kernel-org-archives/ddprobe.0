Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33DA119E82A
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 14:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765635774; cv=none; b=s+X4YbIz93VP5sYVFGFzATklW0qztIQdlip4xhu9Am6j8jRgysBc/XKaVKrSXraOIx2m1l2AX+MQO06XHNnliplqboZ05nwkcbg6xm1X5y1n8Ap9lzwfr5v6uaJeax3rU7SAmCzVku0Z772nXrEKm2odr/g+h58HJaaOCLhh6Cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765635774; c=relaxed/simple;
	bh=YCoDNDgKnFMNeytwQwy3U683wuj1uTNxYI6DU8OdKJk=;
	h=To:Subject:From:Message-Id:Date; b=s2GKYCAAy1phV66ES84HZIS8aH1DZ58iYxHAy1d05WBmxmn4vqxUqAd6F4EondKDCdT83GeA7po60R3/zHFqKCdrmy2/tGMuyOGOtbzNijV3BvMp6VMtR9ULcRPGrSe6hrCpawzSf4Z+j8iaXYaod3rjJzQ/Mqzs93fu9PI9A/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tLoJbKBm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tLoJbKBm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B457BC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 14:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765635773;
	bh=YCoDNDgKnFMNeytwQwy3U683wuj1uTNxYI6DU8OdKJk=;
	h=To:Subject:From:Date:From;
	b=tLoJbKBmtknVbIIqMUZAtcXkHKed/lQNNRQXUch7YQob8KZLFEPRvzeI0QkaXvX6j
	 SsV0+BVB/Q3EkcyxX+CT7/cBF9RyqYL1ofsX6njh9M3sd1ojpbzWQPLhMplIdqRhEE
	 ptWAI6OcZ4aoPQgsnIuKQj8mfeJW46AcyNyn/anUeWfv49hiuMx0OKTdf0tGNmmmQ/
	 23ikFrlF3e1zJ6KafdNj1kkrR47jXm2ruB512qCLGnaEZhCGa8Nr1G0M9qbhkS9iEH
	 7FeCmyYLpl56y3e0zfKnTt8Eo/2bKiZmncZ4+5thxCIMSKdVx4MZd56F4lFY9zOdIm
	 RXIpHkKy6Shvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CF89D5B154
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 14:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176563577362.22408.1818245091585200232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28e685dc8bc721df6b907f055ef82384fcea462cd78209d8d7426c7429126c5c
Date: Sat, 13 Dec 2025 14:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765635773
