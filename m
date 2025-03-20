Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 346542EAE4
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742441994; cv=none; b=cwDtduiGMYybIL3c7G6DoMLkKKyPVUKmFne44KgbnX49K/Vzfyrw9usdzRzZ2R4y0lugY1HyQaE8Ao4uVlXL9009rS/lJ/qSSB3qHG43OjTje5/7XwlvzGAgAdDOtg7iC2u0yGPHXdLdUsthnFDSiUeNQ6WB4eBHtX8/HXBshe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742441994; c=relaxed/simple;
	bh=mfRvZRsyli5A3rLHs/IJ8uPKinRnCfOMZ2Rsa/a1+kI=;
	h=To:Subject:From:Message-Id:Date; b=AwrzGzgV6k/9sO1PcoqxHAzIRGC1nh7ygDyMYChi7bc3gOtbC2RfqHzb3AG5zBO0txFbxv4uMf2avA3NYaRIRemnMMlscuro8vR2AcJddGqCqwNhv5kEgxLToEZRYcAMles68kBnyGx4fjqmBbCOZHZVHdHt4fU+e4P3WLriCzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fsFegiGy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fsFegiGy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83BBC4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742441993;
	bh=mfRvZRsyli5A3rLHs/IJ8uPKinRnCfOMZ2Rsa/a1+kI=;
	h=To:Subject:From:Date:From;
	b=fsFegiGyA00My7lAVXP/QjwAZ2WTYRgWKG7iZyCqCHsTVPnV47KobrP5biisU8PDR
	 Cbzq1iujoW8N+ty5EOFkCtGb890Wr3B5Wsi8GRP4VvgjiE7+rjpKEdoV7y9CuBqz1C
	 EGesMmz5DAzvY7gxTy4H5MhAHTCc3tVhN2oXPB2VCkEazwqLCXhY377Cm85u691OqK
	 5vSdu1lJqOmFD5FsWyeWfvJp2vpHHZI60Cn6SyoJysjzJGpRNNMfsk3Q6PBWJRPSN5
	 8l/oe69TEcaF4RIL/04diLDvNem64RkB2nEVq+Q/P/er1DJZkta6avItD3YfhH/Say
	 CoTZlrBcuo4pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9511BC28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174244199358.28680.14422685765071800127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f910c2ed278d8c638bf0d9a2f537085fb06a04db3c4aa5ce586aa7ab5f393a2e
Date: Thu, 20 Mar 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742441993
