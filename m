Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 115BB13C836
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725710154; cv=none; b=D9uRVNMYkkc0KBGReUq5+gv1onrsCK/zegdZ+xzOCkGQMqW40LSRXOT55SwOlmvFse+TmKu5zQJygRrFD1pyV32FLacHm3a+CxVImnOgR3xl82ZNW+JYletQWlO66dEgEuWmq/XYtiO0MC1hlzwiZ5N7dTY7w6slcBhuzeN0S+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725710154; c=relaxed/simple;
	bh=ZtZUwp/NpuMiiUVGxV6RClRUxSw5O9qfKdlvocnUlAs=;
	h=To:Subject:From:Message-Id:Date; b=L7hLGQWqvLtxFKwX45lPO8s7VJk45ALopwB12f9gITmztZxRN08899qa9zP5SYQzDF3RqqeQilHEV4K9ck0lL8T3309taL1ZftboX3ZrGoHva8bM9Islfb/H38XhqiuO62rWZ5uph/9no7GTOHkp021GRFw4rNGNh6hQOG9cAVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gCxpw2iN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gCxpw2iN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6531C4CEC5
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725710153;
	bh=ZtZUwp/NpuMiiUVGxV6RClRUxSw5O9qfKdlvocnUlAs=;
	h=To:Subject:From:Date:From;
	b=gCxpw2iNoczbSqMtLbx2zqeeVCVfEp6yFZfjw8wohCoocnZjbl0R7oIFGpqppxxdP
	 Qsa7wx/QVXZ8DBnp9ER5olXy9ZMJkNwb550vEnSeiEHbb2Cl8NDW6W1STQfrNl9xLZ
	 in019G/9Ew06JygiYLPcI+cCdGacHENJhx8Mwd7OQv4G9FQouVQ/LRkerZ4Hy2YoBa
	 CIG+SCqWqTecVJ+O74lW3gbbklvgWxXuRqnTeGoQ94m+KLK4v9DptHba0x95NpVpOf
	 Pw1KeILMWkP8FGT+cuZ7DSic7hM2GitwAHr+w1E2OAbBPwMzYpUGozsePz538TrHkx
	 C/g5P+5Y2Ws3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B6EE71080
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172571015358.11389.7053695841650844852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96fb25bf82ecd08f291721f041b496db2261acef1135f4763ddbb85c23ae4796
Date: Sat, 07 Sep 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725710153
