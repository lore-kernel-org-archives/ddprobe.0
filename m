Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35CBA219311
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754680194; cv=none; b=FL+Hf3Q6CgDd2f1xAfIIaJtItVVwky5QHtyJtAIwSDq/z0oIBbYXsGbgwlQ9vW/8JIj3prPsT/W3/WKJSgvJw0JqhYeR+Sip0vlr7fkyh1+wTMTtXZIgXKUtOP6l/EDEyU+ihAIcUsf6Piaz5b0pzAORNhn4RAeZuEr9fVbZ3Dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754680194; c=relaxed/simple;
	bh=R2GEolWWJZqoTA456dGczuHDi2HWLlpZFOPgOyEY4Fw=;
	h=To:Subject:From:Message-Id:Date; b=tpN+C6Poy7Hd44jH5qv5NC6ohByCuCb6cp6GhsJyX03FCeh6BJPr5weL/R01UDCH5B81a0wEPECcq6PmJMEiMjD6feTTdAAjMxbce2Hydl1BQCBko11eAot/yjD3HSDyjtt26HqoHSCfd3xeafTqDt54lGRrzd839B5IKbrRjq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c8u2ntXq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c8u2ntXq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D58C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754680193;
	bh=R2GEolWWJZqoTA456dGczuHDi2HWLlpZFOPgOyEY4Fw=;
	h=To:Subject:From:Date:From;
	b=c8u2ntXqrokvNNTxU6DL0sZ3WZBsBPt+v4T7LIyw0I4sLGPxnIDY2egUqBPU/xEEP
	 wzRceo5VxlTm7nqwso+uiNyxqS5Ap/pfGX1vWGtAck4XoebStxcisFwj2HxCs20o3g
	 udBlsc2CQsth4l5EI0aVyG+MyGf2B0MQdIDIJs6r4RrM9pftYIu7LAFivXHZh77CCf
	 7Sa4iJQ35UEvkp8qEN8McsLKUBIUaqfix1v+/3GEIBJLjX8k19Zvu0n1UsO28bF92p
	 1UCizFgzChEymg2O43Zo5/2f3031wW+vhwnWjZ+BgRkz7gWAS/+lCC+qepagzOxt//
	 /V6aOxoVJ9eOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB92C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175468019357.32255.3946314049861051815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1f92428cbd4238bff7470879475fde94642860db40bf6fbf83404a9454482c3
Date: Fri, 08 Aug 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754680193
