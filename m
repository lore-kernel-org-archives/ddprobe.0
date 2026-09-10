Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B99573B2FFE
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789035034; cv=none; b=NPxDprQ0xeweYuXPyxAIeWyJxpciNZgD8YmblT2C91XZgjcgbWED9KFWhUV76TUlT1pOcMOQRe9Vpwgxt3ELlMbDnhB3ju/7X7uwo9idHL0fHg/e23u01xmfjWO8gL7gsEPeD+MdkVEcHlujGxuZ2gPz9565tSp1k8rFpOhS4Wo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789035034; c=relaxed/simple;
	bh=ogD56jpFLjUKwQ9nFMvewYUqHoZ151GUuOa6NQ+3acI=;
	h=To:Subject:From:Message-Id:Date; b=LLjourx9ter/C5p6iXE0oxF/57E/tLuLlrnvgdSz5Jd0DTPQ8cdD+mL6Z1YmfmwVWsdv5Be5kvW0cHMgmQj+2j9HWE6hY7/nj97IIUxng9HTJ1HJgpiPCDxroFpDrtcXSrgcURXjwuoiQygoRIF73lkAIa3kbBIKUDmyfx6Ld6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V49NyDP/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V49NyDP/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB36CC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789035033;
	bh=ogD56jpFLjUKwQ9nFMvewYUqHoZ151GUuOa6NQ+3acI=;
	h=To:Subject:From:Date:From;
	b=V49NyDP/byZby6Y4I/wyOFiPhk6BGq1QbUnaxgCiznTFpqk+EHkG2h4UbYEGJ4U7x
	 DKGBwsgkSUS4znk99OYkirzmf6D5BsTjJE27RSxfAxTI4mMaTXpSsVVlvxTp1DTsa+
	 riP7VbGTeMPFGIoTpgXAvDUxGr/tgfymRTB8/z5fhpCnoL86c4DRqN/lG+09cTrj0b
	 Nty5EsChx5YXbem12HNvWUz0i53NZiqzCT4+54cRZYzMECY8hXIn98NqI3Bw89OmnE
	 PuDepU5m4KDclbHtjvg9WQtJvBUGXW3+2p2SDa8U4HRQYPc3ej0Ph8XsgLLWL655Zw
	 Xu9YzyD1cyrGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7365C79F9F
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178903503373.16256.16514927245752798371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a46f4bb77d44e1369476f29b14fd321ff0797680ca7f9e895b6558800b82ab4
Date: Thu, 10 Sep 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789035033
