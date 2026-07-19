Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EA5127144B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 18:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784487514; cv=none; b=EWoTpdPJiagjAeKTrq3uDJ6wg63derMf32yvN0BKinl9CRziDP5UmTahLM4lzxRmSBoqhYPKEwcyl+7xu5nx1q4jFIFU5Gm5qpIlEdmCy0BPvPRJDCxxgTh1vDR7G6QGXYNR25nOuW8sFHTPgevTY4uZK61WH9vrTOSGf9Nol0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784487514; c=relaxed/simple;
	bh=/03pXIUalVwpwNo2GaR9/kbBocvLLU1YpTcAegZZgxk=;
	h=To:Subject:From:Message-Id:Date; b=azHKzhs5VgfaYIyOSKcf9B6z7nB7IouFWTzms2Z1X7T3ruhYVFkf5Y5DfyTAMlaqKabnUSu4LaRHTZ7b1aNSrT8JFFX0OVFLR9mRCrS0AmAChYsh/OdmKpSrabC5zfWF4t4/E5Rr372nQ8Q92YnmEtylbuMn40iVJ/wcfYCduf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IOH1M3vu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IOH1M3vu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9BEBC19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 18:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784487513;
	bh=/03pXIUalVwpwNo2GaR9/kbBocvLLU1YpTcAegZZgxk=;
	h=To:Subject:From:Date:From;
	b=IOH1M3vu7ft+QgJB8+3T1gjb2RpncfYV9G3jEU1cQFU4aEh20oSOenFd/LLNoXhoz
	 ULmX2T/j2Cgk0l6ipFpqJl4ZpKufwszxYr92mTtAXYjLurlq2+z/lXjm7jBvQhf7uI
	 z6DmAqGJ1+GopRJ8u9WsoFRVpM/xOwHMyuyJrY3nbcHlh5Fx3nexfZ8R6fBrx3ugs/
	 BDP0m1DWIOGYG4Yg5Dclkt+pOJ+pvtNhHa/Il3O14jhkvh2hlEkdkH4S28D8b7ZaTo
	 A/Eq2T/yX9pLS8q9QGngVDkl4jy1hlDZR9Ao7dHv4L4WtoVg/2DKBs9v2vNdwt4fkY
	 ZopICm0hd+gxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B48CDC4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 18:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178448751370.8723.13455881816160210662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d4cd3fb151941c5ba222a842847665f86b46349845b6bcd9caf386d3e1af4c6
Date: Sun, 19 Jul 2026 18:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784487513
