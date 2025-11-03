Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AFC7311976
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762180194; cv=none; b=PLb/AGHNiVBVeSbLbiZqqy2mAdtpVTq4VJXNCfX53roqdEXX2B8kbLf1cY6S2SdGYlV0JurFw6UHM2HalAxk8NWeFjMTU98aHVEgHrxV+BNLTnxk5/+mvFrdgLJJ87ZWa7C0g9cwpXBol5kCyIE8xj+llFb/Fd7jzdkuMFU3gEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762180194; c=relaxed/simple;
	bh=ueu/ZXZ0xjrKZqa+/VvYWMP92hcgyGruclnCN4xVciY=;
	h=To:Subject:From:Message-Id:Date; b=b/Ff/Nbb7ofYbfKT3mVTdCRLI+LO8bqNDOXkfhCivwEdbLX95dj3ZieHH5w+NrLayMMOMgeJA9aGbpb/oJjKqGWbJ4yFRzmHQrM8fixP33c/yXrfWTMa4l9RB9ZHguC6GbabZBmT9fJuC10b7L01BhkhR0JkNDLJhehbjmNLiCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r6YNWxXx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r6YNWxXx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D526C4CEFD
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762180193;
	bh=ueu/ZXZ0xjrKZqa+/VvYWMP92hcgyGruclnCN4xVciY=;
	h=To:Subject:From:Date:From;
	b=r6YNWxXxj7koBiJD073jmw8KGecLFoa31PhDAvm83T+V/pPt5mUGKilPhVtxzPyTj
	 0f1REt7qD2VaT/u5dSXkALb/nDihilEkCF5BPvqDULsGVLoFVqaprSU1dXv48UWjok
	 T/SYCL2G0FivVnA5CD9JbRo9Dq8npi/OLgoDw/knwh0kjWyv6mjy4AmS/qJpogCXnO
	 DKOSHeYH8zU0L7u8xfqyjzsitGLVIYdt2ijozY5wfTpbvMtPxcJ0dUbIrvsdzzR1bv
	 zYYGP4edJ0pR620uky7stb/gShcKs+Fnf5RLOFnzILeTpeVjRhTXWz++Ye6yZU3+U8
	 i6VFKOkSdsANQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FCBCCF9F8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176218019358.8106.3856323405098387848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aac807322b8d39969c8342076e78c51e748925c298cff06061f2f5336e0eb551
Date: Mon, 03 Nov 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762180193
