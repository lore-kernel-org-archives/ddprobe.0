Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2038B2405FD
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 07:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767598434; cv=none; b=NAzaL+OxvRPAE1vWmRGLWqcW/eiOJRB5WM2g3XDbuppPTsT+2o/zXsm0s7/fo7DMiD70mVSlTgDeNZDDag4UhrLkDWaBHjaoE6hXX7Zr3WfQh60rU/ffgdBEERhXxf3ClJAvPdZFL4+E9iIU1EUNRMVBpU77+ujZe5xi9YppiRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767598434; c=relaxed/simple;
	bh=7iuRcafBGQP18JGPDnbi3HbnEDtIsnIOXznENHZBTHE=;
	h=To:Subject:From:Message-Id:Date; b=NQINX+83WAva/oQBRU/E5UqjEbkstUc7+uoY1BjAr+DAVE14OxSTcHrvTx1E16qKPuOYYpFbn3NgOm22r+T0Q06BA1EuHA5R6rrg+BnkYBTfOecyAIGEaDcOtMj2pHPTj0y+1sv07+i9mPOjrcKRkp8sNMPDJSxS9We4EZ/j4g0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rzg2veet; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rzg2veet"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A368FC19422
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 07:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767598433;
	bh=7iuRcafBGQP18JGPDnbi3HbnEDtIsnIOXznENHZBTHE=;
	h=To:Subject:From:Date:From;
	b=rzg2veetxvK/v6Y1V9lCuaDQL2s7kf7YFJ8NR3yTeiRkIDu63Ps5uWd8fbqCPZwBE
	 fcQBcMaiiqQADnGx1QQInJOe2Farhj9eA60YefchwGst2QojOwZWDCFubHkD7HYsMQ
	 +w6Bo/IXqml55dzjgyKHffhg1VYgZwuhqqY1+xKpxNWuIfueBs+sH6cnBPQ3EWibMN
	 6JeLmZ3Dm2UJPAU6qxMibZpp70hT2LHFhXjIBjtBL7JG77wQYvnfCuBlng+VD5B/L8
	 vHZ43IfeZZp0d/NFAoAVTg4g6nNXwyRigKTMV2eZzURxHv5H78RzYtIhX3YEjXw46B
	 McIo2TGvLlu7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912BFC2A072
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 07:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176759843358.6571.12665859420051750403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bc54e36d2251f8d70dac5cbcb149f8f7ff10c01d64bddf412b0e4a223f64537
Date: Mon, 05 Jan 2026 07:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767598433
