Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD042222C3
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755345596; cv=none; b=iAGF9etzIBpTGys3YHga66ROlhTa1sz012jFCSx+d6RbfjIe6Ly4ADcdlQBEKEp1+2x1d95GNQ8frqiUSnZWxi99vAzID5DqM0lsOxDv1ogjbAleMQ5U4M5Xz4SGufI7ssn8q1Usguv3vEzoBX2HnMpV732ollFIpvNB7DNlDvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755345596; c=relaxed/simple;
	bh=0ekvFLEyoC4B8hRYMDtG0fpk+ZZJbjEY41phQ2Yoydw=;
	h=To:Subject:From:Message-Id:Date; b=WVFBG3OqYZhYZ/5StXbxksVplFCCUat7PSGn7BCjU375AcNQVt529OyR5loHsP1iEm4ecaR8Xk3OFPH4Skx8BjoYB33bDIV4lMZH/A12wqtnFkVc0wF6dLQpCrYwOornh7jgEn0iudu4of+le2IM8nqMD9Hr/GupIx9A/f5eBMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j9dlVyd1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j9dlVyd1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CD89C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755345593;
	bh=0ekvFLEyoC4B8hRYMDtG0fpk+ZZJbjEY41phQ2Yoydw=;
	h=To:Subject:From:Date:From;
	b=j9dlVyd149XQMBUgmn0aU7a84218hG2Vmw0WpEHofsUPH61yVtU/W9tu9xVFNBLN7
	 rrsSTJ601yAsUEILROQ/GjsDwxftx5SGZJUjWi0PG1dziZLM0FoSA9DKeylscqh9Uw
	 js+RixVhFC8Vs8QiAaWqfPpvaomPEYBh9g0BPbYJqdxfSXdwyMiwyqGP70j7kLCUdh
	 hsmE275MbQ/Cob5/Cuc4kT+7IOOe/hv3XHl4lwMbSIRbZqBhiwQ3HlRNvejh3qdD6a
	 vT+gRel4D6MQE4jZ6kVUf41xoqD8bZQxs7Yv2EtJgLWpfsu/a2vQyIq0/HCcQtXKVy
	 kqwdtj6gQreHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E853CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175534559357.10079.6555643302537179855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6120092fe25031d3d626204722f327d5055520a97930a6060c5fc9b20206ef2
Date: Sat, 16 Aug 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755345593
