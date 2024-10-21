Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12FF08C0B
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729474554; cv=none; b=GrCOwfE3S5cdSibKSa8JkTIUPpRa9c8oCEoylFRv6UbN3/c3a3HIqairOTnPJa7UzXurfdHGMbslR/V2EndFjOFvSi0523vHGqaS9rQ82zOJ/WfMwZnCQlU1fEOE8buJGCGm8KkcyRjS3ho8QPhoy8waTCWr+yeD33KipnB0wxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729474554; c=relaxed/simple;
	bh=izdsks+vrDnMt+xkMMrbz3hges5XLUZ1H9ZTLrWwOX8=;
	h=To:Subject:From:Message-Id:Date; b=BsZdkrrw37GHv1SFAwsQ0Jkl0z17RJkJ096wLSEzMBsocjl51fJ1tQCCPRaxJ4CaQMYsbL+YKOCwPkUu+sQqTB2qaFCwLlp97U+du5YFp4BVO7LMF9ljkCIcTTA3K43ta0Y9OkTUNKbcvYwvXkyRJa75Thrt4UHw0F2xtifGPQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YYXZlpjt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YYXZlpjt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8324C4CEC6
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729474553;
	bh=izdsks+vrDnMt+xkMMrbz3hges5XLUZ1H9ZTLrWwOX8=;
	h=To:Subject:From:Date:From;
	b=YYXZlpjtatzYPcr5pqjQcpYe2aUtABsp8TBEo/YYv6hYt+KhB8NuY9fBUvmmhdTOs
	 opgrA0WRccrxi6cVB1xn/bmdOkm6XvWkai8rQoPUm7sX6wsAF7S92BOrbnDKz4r/zC
	 7/qbVfxV+m/dXtqz3+3gVaz6cULOMGkdUiZQnggXWGLNNolYUJmaC4C0/o3sLtDXmu
	 fcyOoHZ6EECZR/3+YyPbi/f/MMpRc0tdK74F1klzK5Lawnf1HDcDPnXGmO+O4BAHiC
	 hUWdMmxrHIdSsEEiih8Lh7ipY/HeXjmDWZHYjXFN6q51Z/iynxNH0pnsSD2ByV2Gn6
	 CC4LRBU0cw+oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C2BD3C934
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172947455359.31951.691848109806258484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f527b6402541f9b3f49d0b1cf9289b433e104bbe31c39272abc0cc71b2dec1cb
Date: Mon, 21 Oct 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729474553
