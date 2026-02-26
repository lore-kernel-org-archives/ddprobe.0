Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B5D22D5C6C
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 01:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772070894; cv=none; b=avpu+UxIXhBerln5H3CwalsACg1orAcaeLKLRdb9440GCAAx7a0//HQVDLRzNUrDPubYjDZuG1+/ddNy+jm2dXBPwgfJ581na3uCpuzukb5ag8h/ZcpnRlyPU2pLt8SD0U0+OmtVPchZ9LlcbdKVm+eX21ZkbQmiFXvPTC8AuYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772070894; c=relaxed/simple;
	bh=C5uLV64ll/dpqFD8pvVOUftvYQCgFI6g06//inmSGvA=;
	h=To:Subject:From:Message-Id:Date; b=i0m1eppVR8bCiU/KarXETBA/OyPMYQ7bzXEvvyISzooIT6I6M8sVlFG5oekD5QiGHlIOyqeoOZd9glRSRd1MIzkE6ehAXOWCe35mgrdFOqj0hf13/P7BcGML+NB2ieIQK6vr4Wkjh45IbqdAiLYyTdOlYCLxnRAVU/xJHiWx538=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jKztOs50; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jKztOs50"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AED9CC116D0
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 01:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772070893;
	bh=C5uLV64ll/dpqFD8pvVOUftvYQCgFI6g06//inmSGvA=;
	h=To:Subject:From:Date:From;
	b=jKztOs50mErtx1kcuudWuqWag6JdxGzW0LD0o1EsxRZTBGZUyMl004t8uORDrbzv6
	 MRCokR8Ik5WwbYozyh4F5RoIrK7wGAMBMYFIi7a1QUveZkKwrJlcgmK40YInBj79uC
	 09f/JCI/ZweFyT7peiFmb9KPYQ6bqaNUZ6g29fVY/T7Pu/3/3pEV2hjCPMvuvrqwBm
	 XiO+ejoQfyPnneZDGnyxGRBs4ZIdeTZKAkZ7sSRri/V0EyzJoyZJxgdIXFslSNnNMZ
	 pQ/ae9BMjHKZBE3V+jxd/sPSf2CNZ+hXscf4HLHn2cz4YzJ6JVRg1bzR3ndJwty/OS
	 sqe2B/1dOAChA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9614AFD45F9
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 01:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177207089358.5328.1945999726829069463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f227b97a1f5150d7e9dac9e665aff8176c46eef2308e5900d254e157698fa217
Date: Thu, 26 Feb 2026 01:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772070893
