Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE22C1C6FFD
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 21:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741727333; cv=none; b=IMCkaoOYpWBRzZKHQWrE8BjRyZ5SrC1okJQpTCUx5SOZhUbwq+R2WoLAMLYVrb7YyMl8ugeQyk6iGOIaezlORQ/iJ3ey2iY8Es6qYp5T57umV1pLvOMa+olhbtqsfos1WA80bH2nuhOBykpPCVo38NIyoYxc+w7MWw+hRFpmnRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741727333; c=relaxed/simple;
	bh=ewzN9Vw/zdJ5oS0EcAfB/yHNPEfyRDeWDwkHiCpItqY=;
	h=To:Subject:From:Message-Id:Date; b=XpvqF14B47fH/pOE0W/C5zLc31LLYWQSZRTx1eLiBfV41La6Nlo38v/5LfKbGWzptnVccID0AAVfiotCGJzVeHMXVPY7dd2WBlpworrHDBxs7lSvzkyFRXpoZhpjMED3UiS3bOmFrEfVohqXjXQgMiUnKhEvgUAXGb9Lt31OoHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I/wSgjBy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I/wSgjBy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC443C4CEEC
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 21:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741727333;
	bh=ewzN9Vw/zdJ5oS0EcAfB/yHNPEfyRDeWDwkHiCpItqY=;
	h=To:Subject:From:Date:From;
	b=I/wSgjBy2gOrWpvZ6Vehxg1TgMyx8ILHmBCtZRwWKy84HNOq8HYK8D1ljLdpsIKE8
	 DpCr18AuYdEPubmGmJ3XqRaaEmF2+EkR0/8eNT8b9ru+07RD++EvAidxF4J0ryIRiF
	 zkx09YfRwm7VOj9BRRPsrwl8eoNOZVGtE9QGtv8er4Yowh8LG/bt4b3OMgs7a2EPn9
	 3N8M39aZq0oM2o6WFDVAMuDGLY2W0MoZAFrZOHz+1w326vPvNi4jyh/dqvq8Q76EdT
	 He54Jo6bwXpQDsa2k0QkXIlpLGOAnh81loGYVF88yskD0xrY7isq6M/DWRmFuIp3QB
	 bcvYx+uT4t2BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D126C282EC
	for <ddprobe@lists.linux.dev>; Tue, 11 Mar 2025 21:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174172733363.8227.16902182583225164721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e2dcf017460695e45349e6dfcae8179bf022b015441d89ebd8f9024a767922c
Date: Tue, 11 Mar 2025 21:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741727333
