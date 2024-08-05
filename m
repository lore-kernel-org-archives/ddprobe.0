Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3132517C
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722821154; cv=none; b=IkB1e9JQDGpxyjzm4zX615pV1cBuGx5qHhhs6q804ivxgkMzIgJezUOhRosJywFO475T5Hv+QUs5yP+VCppjqwuD5Q0pfRp4HEjyWMY0CFQ8nts84q3qRfl3dAXDYVfsqJz/Fg0e/rLmzMbjYgoXPkXcbIzpNli7fdjr4bGlsmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722821154; c=relaxed/simple;
	bh=B8vVoJSaFz72Akyzopp+CbsijwxtD3+vKz7AgydkGQs=;
	h=To:Subject:From:Message-Id:Date; b=n4KsseVFyxRHEPJOsiNBf1I8tcVJS5kQ2W/7fQFwKAb6XIqFA++EOdQYDd+1Y4B2meHS2OfeegVB9uqpWqvMPlfqhAbImb1JpIxfS7DOXHw4Kyba46y/yIkT9A4nA5qFTHnXcX8w1jzLLXoQU0WXSnliI7wUIqh2EfRwVSBlp3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kKVnWlhv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kKVnWlhv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC6FFC32786
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722821153;
	bh=B8vVoJSaFz72Akyzopp+CbsijwxtD3+vKz7AgydkGQs=;
	h=To:Subject:From:Date:From;
	b=kKVnWlhvZFEDJQ0lXus+xDoZ+MKN3yof1zr1zcSeRouXkUe1brjT+12QvhczlBTyc
	 GShYmFERrB4obOY53ihS0PLXdLHV8AOjPxkqokW4Go8Vmmbqi0l7pcR191mJp4siEe
	 n1l1PfonUo6tbcVl5GfEsXgrNVrLUrlK+fQLZQpOPeIaG6mNFUUFZpsHeiSI9E5JfJ
	 NEYrAHUiXjw5bj3p1XOwKbKSm93Yk8QFS0Anu037zB3iMSlZtgTpUWXOOlGU/BJW6m
	 I5pHeMnoi6wtIDcg4mGB/lsrxlkG9BQRuVm+pA95VUdfFk6uN7ARhqoIx8c8dqySAX
	 9JWb5wzfqoJUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5276C3DA7F
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172282115365.5428.16339150706515551245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76654c09678732d1de45d3ad90d6aee411aed012553aa3d720dc7553fb927b38
Date: Mon, 05 Aug 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722821153
