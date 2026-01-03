Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3349A2110E
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 12:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767444834; cv=none; b=gi7xMrae/bgsCgHH21X33JE0Tx6QLxIMvmweuCRGBoVyOk/ODfGFMf4sKdk8dfZVcynK2emneURPySWUWMkkBpjSAUB+aLtBKAVh/HuHiygEsXmH0VLikhHxsUlTMQWIfKia6snMCqUw3X6xE5itZTQNSU+TRbwPuZrEWYixG3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767444834; c=relaxed/simple;
	bh=3F+0iDzI3AdZ4B6fBpuBrBj0vh+cfE1iLHxefNOO9K4=;
	h=To:Subject:From:Message-Id:Date; b=n9pNzBwP4OiDTGtq901MTySZ1kD7XzMuIQsgZZVzsbuSx7wJm9JSm924pqb0wABoyqtux0BUxahyeknpc0lI2omYNA8LXKYToMx+g4NpE27xmf1pS0FlsiWQrj5KlzQxhjqhUL4GhxQ9U/XBmiCQklOLeI9ac4DfPTWI8ayOA2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=obEsu6QJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="obEsu6QJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE89C19421
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 12:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767444833;
	bh=3F+0iDzI3AdZ4B6fBpuBrBj0vh+cfE1iLHxefNOO9K4=;
	h=To:Subject:From:Date:From;
	b=obEsu6QJSqylxbktq+4nnmizq6u4mMtPhP2HWFQW4Etfq8bMskAzuihnT2jLWrTs/
	 qHCoxgCU9VNwRcHoIEHcgcYXINji20AzFyarzQ/WAPLEOSp97DrmrJq3dlLYAfFNrp
	 9B55kVfJvn1//ReSdcdNWs9/cDXNBiRcBQhsPSxzYC9GCLJp83TuEqNYSINp9G0SDA
	 sIxsaAIlIm6pUHbZHY1bOl5rv2caUrzezh7WA4QIUWaEpOEKPdCGRTrKrPJXGQl5JF
	 c9kAU5aVwPLQBpStpeCudVhwO2X9W5SziHtkOSNuADA8fO3Nx3DCWd1SSiilga+3gr
	 VK28wYaCCndTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA4AFC6179
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 12:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176744483357.14174.8708135481145893948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ca3d6a18a8d133f736c16de1778f8dbbc73734d346a54ced509fcf863dfc46b
Date: Sat, 03 Jan 2026 12:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767444833
