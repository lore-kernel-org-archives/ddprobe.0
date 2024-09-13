Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E9C41EEE6
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726239354; cv=none; b=OrQahdpEWOfoggYQ2dRWD2EG8/PH2c4xgdNyeYtmQ5sZhQ8Qq8nlzPjYcApo7CBZxU0RR44SxdzG9r4FDvvrgVnddUUqSk6YjSVpQ/ABM+yojzPSu6F9+nMmFrjEc4L846iNEdIPX3SvYJ0UovsorYQVLWuEtZzaD3spKgdXFIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726239354; c=relaxed/simple;
	bh=eK9qI+riVf/NDcELDNrg1DPydWkUc1UfJvAeLp5H2oQ=;
	h=To:Subject:From:Message-Id:Date; b=gNUmJVH96OKoi5op11dgEFd0+tItoHXLqb/iRG1FU2MsPFlLA8VyFuFWugbRVRuLFyri2LuktisVx4woxQMM7slxbzzs/NX3db1oiGWGKsqs0YdGeVIZU3DLHRBmcpQf9Y2dYK2fOCu8cT0jZ4sk1NrUTz9JdH0fHMdPIH8OOO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L1oGButf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L1oGButf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D03C4CEC0
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726239353;
	bh=eK9qI+riVf/NDcELDNrg1DPydWkUc1UfJvAeLp5H2oQ=;
	h=To:Subject:From:Date:From;
	b=L1oGButfzLIp4Cjhped/MsmjwJ7PN/xrBnyBm+kTRiSqB269LADsvdSrOoKLT2MtP
	 y3szK9jdLMIBOO0c5RAIwaewQE3R8EdTjRziFmUQP73zYimUA4p3B/5DiElyFO+E8x
	 2FPFk+7f4leg4ndwusOBj1v3jjZ7nNbPIgyepWLKn9yO2I73/BKJHhbQvDrc+Ac5qY
	 vKndk6AVMIFnsQmL03wnz2axD1c86AyzRVKL12X4HQ8xCQ7Ey8Ix8/AjETp0pEeb9Y
	 G/aSXYCWiiHIcU9Z0LzXba7MJoC0yEddofCYHQubAmad4Js8DXfH6w2fhM1NqA3a1n
	 D7TYq95SgG93A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD5FFA3755
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172623935358.2597.10895169010320662915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ead417554dcdf95c5b70ccd0a485d6d45a0b34d807a46d9dacf833c55861965
Date: Fri, 13 Sep 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726239353
