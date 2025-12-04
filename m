Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 281B71A317D
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 13:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764856374; cv=none; b=rkmkC3GhaAhiAbwFKUEp8cGPPObwa68XKpD5niKhVJKY7FvmH4BZ4vhXUzyvhJYITg8wPileG7GQ8TkLcBL9EP+fIS46CxYt0lUQVQW01fTKtdYVizkQL8BqUMAnfy3jaGwNHRL77mvldWBdGjjCbO0ogPkabQJRyz51985gVEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764856374; c=relaxed/simple;
	bh=1oU/8KRj2fvAzQ73BnTojP6WKRuHckbVCfFysm1AEBw=;
	h=To:Subject:From:Message-Id:Date; b=kPjl1dOhXaBW8JZ5iIhpXG9OBkd+HiZzw6O/AxZ5FbA3RBzJf/KiQtGaW/elinfyptWXaDCAy6aN7Gkr58eFZLemzRgEyK4s3Fy+imsj9WWMN9DSPp6Yav0WGibX66aj9r1ricyHZiKITov63OLi0h6SUEnyxm2S+R8Q7cZaupM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r/JeeqOQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r/JeeqOQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70C8C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 13:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764856373;
	bh=1oU/8KRj2fvAzQ73BnTojP6WKRuHckbVCfFysm1AEBw=;
	h=To:Subject:From:Date:From;
	b=r/JeeqOQDJVU04mIDrfILFK8M67JzOR82hjxkzDoFpeLQwAyQ68Bt+TPz4/U1P320
	 pcPXw+NBui/rTrvh/FG+3DMLYGWkCdqRwhED4PP0R3+PP11VygZEWU+xlJwSoZc8PD
	 zGxKv8W+Z0FhrhTZDIIAjhD5pMXa+EXi/G/ZbKPAaAgwJOe1K8rJ2yY2+qKdon93Gj
	 ItL2JzsHRss9V9eNdcLG3/yw/fosKRNCk/lLB/UpzR1GGff2II80cGBElHsQ8bHJFM
	 sJny95/EnddNAn9RakU1vf11iud1RqEy17fBTuw1l98u/O80dPVkvw1iZEjl4l3/2X
	 +a6x/wYTnq7CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96242D2069A
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 13:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176485637360.29361.12362102018498209815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15f870939254fa72109cd091a70bc68f32f6ada5b1edc56ed11891716322d99c
Date: Thu, 04 Dec 2025 13:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764856373
