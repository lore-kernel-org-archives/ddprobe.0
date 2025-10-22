Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE7C328B59
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761131394; cv=none; b=sl+ScgR3QeMNRlDyNv2aSMSlVyhKPvBjhE3IAmKz6CxjABkbt2kgHFgGJK+CObxzSW2MmZoY/lrzfWvVY7ercxic7w7obn+SlzUkH6TALo6VJx/gmGWNEJeGIijhiode2u2eB9d+7mcU7l8UVet44kELsrOts9JRCRZJZBkFxG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761131394; c=relaxed/simple;
	bh=JdMkPtdvZNd/3h/5HQjvB93CaGz2nI3MOGGhC+5BNdU=;
	h=To:Subject:From:Message-Id:Date; b=DgNuiG5mzLgxUzHfj8sEb6MLQOE1qgZt1elXDyAhFBpgg8Nw40WLi85tjjKRG2Ei2+xEuREeYv4q3k3rMj7wMxb1x7ZWuHMNI//tjhNFYWE26w3CKQMkwYArbZ7XTLWEN7srPdDcqMZovy1sfjt940Gmy5oxzXIkjZUlcTyWdEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y72aBJRc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y72aBJRc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A937DC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761131393;
	bh=JdMkPtdvZNd/3h/5HQjvB93CaGz2nI3MOGGhC+5BNdU=;
	h=To:Subject:From:Date:From;
	b=Y72aBJRcMgrDvRV2k64U64IwStvKH/NjnXhl47CFRFe1z6s8+h3MZrWOuT6YG8MKN
	 Kfq7hyVPQXqA0gY0JkawLoanwmodwqp0oQdEHarwXhpCkGldwqpKK1hT9JsAyWdi1J
	 sxiLlQvB8WSYxkvWLqeXBBhsn2dDj0oBEKrbP5UB4HBRPjKto5kj1kO4LeD3eJqKo8
	 9GGKF0rxDXHtiDd0ZT+u65H+2cWIcV75GIyrbRqdZc7jBaIhG5lix6iki1lelW8kHr
	 PHhhJ4bmtpVRlV5ZDcKgASaMkFaAvFFtafPw9CEJ/o5hv6m9grBfumjlKAPBXOoal3
	 rT/5LSU4VOZdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F16CCD195
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176113139359.28981.10338130341547554409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bd5bf86631c81f33122f48f1ca5bc35de0fde3459a8af2777ac4ccad27cf57c
Date: Wed, 22 Oct 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761131393
