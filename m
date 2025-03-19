Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF4225760
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742348994; cv=none; b=DQfKM/ndFpSbUx1bHA5NINHXmcBrVL0PkRW//cfuHzUAfpQ491VONWWOBNrCbO0+k5NZCsbRVfeUTeOVNbfZPtCpgDXGhtL3e0CivCijiypKOxUDla4aAWH5ZroRDvZ/kJ7GyoKx6scTg+CmZipQ9u6IiduymjkwARuGGxF5sOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742348994; c=relaxed/simple;
	bh=5qfhirHTK9FNYSW7tD02wI66hKGm9cWQa0AvhictTzg=;
	h=To:Subject:From:Message-Id:Date; b=Bauh30Zn3GQMTBaBF7Y9arxjM2RpP+st1aznPFQ2zw5G/B0hifwZ487J20KbJwQlOyLrNfWZCc4jwsxWcRCCUBVPYZln04PG1xl0fFe/T2VTfM3Pu6KBqeiP2soI0dXhhB7FHJ3mPlOXHS4Khy1BjCk69AwYOOaPDNeHMBDfau8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QPq5EWnA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QPq5EWnA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E25C4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742348993;
	bh=5qfhirHTK9FNYSW7tD02wI66hKGm9cWQa0AvhictTzg=;
	h=To:Subject:From:Date:From;
	b=QPq5EWnA+FkwrgMkfJOzjD6ZlcUuEYonCPfyHbyw1TL3tIeovBpXGgKqoJofke8Fm
	 np/fLbMYMGeYaxCC26iSZGE3hjLoQBDTuTcywIK1636JFjW6S368PTRJ+ZzAy3+usS
	 eVp+yKk+vd4tjCTra1fh0ftger1/3WHCi4RRPjPwJYpllTepO+tdjBq2Fd+Z8DsM+v
	 NCMgwimSPk2pO8xgqgIpAxAodOe/UTSS9Nl1wiu9yu2Fg20sQcpGiea0UqP5K/v7DK
	 HlX/DO3wW/xqrI4OkpkYVQKofy3/lwsXiTjXrja94KHoD1fdvk/IrazcJ9b38eIt9H
	 w+lxMdetJIX+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAD5C282EC
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174234899358.18649.4029793625251633284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6715b54939a723dfb74a3754f104fd7299b4326ada571eac58988fe92395dda
Date: Wed, 19 Mar 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742348993
