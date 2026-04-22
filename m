Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 183ED347C6
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 01:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776822454; cv=none; b=sPVaz9kvzRfbOwdBB2V76JTH2RS47DWNHDYqbXDctR1c98p3QUOMKQT/fWkIh5kwhfZNCEXMuQpjQTWqGwpPFykRO6ZCGKu9T6+fVUkx4KlLJwAiKbXzbWrFvWpX3J9NlMzCfFIROCy/oK4+g3uHR+foP3MDNZc2nK7DKH50qns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776822454; c=relaxed/simple;
	bh=e21W6CQpNw98blmML5vFG3rCSEOhnj93jd6ShYY7+Us=;
	h=To:Subject:From:Message-Id:Date; b=e/+fZkEXf9Zd0yYc5ffhmij7ieSKNJoHg2EBxS1TraU9KlEz4Mbt42G0gxDJaxNumBHYCB0VtxxQjEitebyiF14gkWlEPwDv8pTZQut1oAtutBBZoZHXJwGri9+sgO5ydNAay2xCUrqnGmbT8fyA9ZfPqiDIfygeIpSSbbOavvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MlTS9ALn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MlTS9ALn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7A81C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 01:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776822453;
	bh=e21W6CQpNw98blmML5vFG3rCSEOhnj93jd6ShYY7+Us=;
	h=To:Subject:From:Date:From;
	b=MlTS9ALn3NFcHFfqoJvoBvGu3uYTvxxzc9sbRNdRnEAnI8IT500dfk7PKuIudJbVf
	 Xu3xwKhozyClP6F4nPBBJ2KEkunEGZzFx9DtTCilvNjKHXf72uNE9nkd6OMCijK36h
	 2rY+WL5LFdJIL1OiiYpNxg3AxX8UDzTmdS+VWFfhB/D8wZhmgmemNH+HBwIP9AaM9F
	 zjY1ljNSB1Z23tVd4iqliHszi86tJ34WUieuG2fIVbqqkWR4qN24EwuThjWpgdYc2E
	 yty6tONBRpoQHqjeG5toCVs3oprz+z/zPM0yaYS3y0xp0liDjFTDwS30DfbK9uhCAL
	 OZarCj3CJSAzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97E8F94CA2
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 01:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177682245368.5517.15971403291541075776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71a30e2fa108187ba8a72f510b5ac72a18231626914fe2b5c4978067bb50a386
Date: Wed, 22 Apr 2026 01:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776822453
