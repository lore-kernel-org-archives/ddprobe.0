Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BCE721507F
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 23:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773098694; cv=none; b=MH7s0aOisH7cstIRWSbL+SXFKifXmfPCYEy2w3bcgbZLCRby9IbFjetFzyO/4s+AnIQkWQGK1D+qDezQv9vZQTYyAYpPC1vl+UbRPa10szDsbO7uAiPKqK9+K4RT9at2kpT/q+F4i2aQb46a21r66Y5YlkZ7QVRw0pZT2e2qT3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773098694; c=relaxed/simple;
	bh=PRnqk1f2f+C8gVH/XbhGEQ6L+dpXs9T7d61gii3+zHc=;
	h=To:Subject:From:Message-Id:Date; b=gEZaJV1ugkgnS2W/nytwnFEwHDAzUXHaT9SPPvDWJZwjFlEDiCEUakDiKS58EsFa4mJghH3HO/Y0bCR2WT9m8yttd1/tU7HO5HSsHu3su4ngaW14/Q6/h0VdDBRmF2EINspeW4mSIOUo4Asq/XoWhGlbHzZ/0yoTvrqQ6QFGAqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SY6F2eLv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SY6F2eLv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70A3C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 23:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773098693;
	bh=PRnqk1f2f+C8gVH/XbhGEQ6L+dpXs9T7d61gii3+zHc=;
	h=To:Subject:From:Date:From;
	b=SY6F2eLvoygHNBXAhfu8MzFMfWHdOC7co2HFhKFWLepp8U2QUnpp/60EnydYxfw8M
	 nFVvqNxuBDxS3eUaol0UT76IF/KndzBHxgDo8GibT9E3zXjkPT0A8Z0ryfXpqf6BTw
	 xHI8sYy8eGrEMj8rp/YRn+r5BCP4kLmdixjxRSoqp0pbZEGPybnrC2oEcSM/zfb43L
	 YXIitNsVaIwvnhMYUkUmtN+4fTPA+GOs5tAsjYSm8MLoGU4AgraTFwKLFzQoM0d3Xe
	 ONZNIu9jXjEmO+y5xzVZebl4tBEXLSgmWtqMULcF9xav5pOLYS9+hx9/YZW0nWvC1Z
	 RzeNdCeEqPe9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92899F3C24D
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 23:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177309869358.4456.18305130371073837055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 315496161a80f4f90663b8d14e72e3e1bc66adf875faeadfff7cd5f13390bf44
Date: Mon, 09 Mar 2026 23:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773098693
