Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F02FD34B1AF
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762858194; cv=none; b=Dq5e1vfi6SqbYOmk/qHI5NznpvIbqkqJtK1Fp5dquTF8u6jTI1caibWiaIoRpTKx2PfE2GkaDOvHKIfWWWw8NnJsPnv6JEiT7pNszIqCbCTvOutpcGfsrKliPNe5Jbx9tbV1Z6dGI2/pJQKUzSUBrAmPwq9bJ2vM49/eiFh6k+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762858194; c=relaxed/simple;
	bh=BUmkLdSNsaf3kY5J9/eyFWzYoeGObB8u+cdwXwx1IOE=;
	h=To:Subject:From:Message-Id:Date; b=EQoYUBx97kHldBwkj9KUiG4LEo6kt3QmUqRYx6fPST2EOP41sOb7QkyExPDGqAGco4MYMNCzERFFxS5O0uivNISE3Ovm+ysfTZclC5RMn0gJNnY7+ewDh7AzOuABynl5DqUxEKCbThRIH3oi+lez2984Wc4Nmf+IT0YxzD2UdlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gESMdSR9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gESMdSR9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A64DC116B1
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762858193;
	bh=BUmkLdSNsaf3kY5J9/eyFWzYoeGObB8u+cdwXwx1IOE=;
	h=To:Subject:From:Date:From;
	b=gESMdSR9IJvZqJiMYYnVCsF1au59eFvAXIntt/as5kEnB6ZjLmbxcUuhVh3QsGpQo
	 h6l/sZDCQQOe81+fXWWQeNKa+ycSn6NKLPdsQ9K5lBDyeberOudbotx5HBXqp0cXAI
	 /p7Eu+9tFfc4sxnZxEmA60MumVdDCINaE2b52BohA9uS+2ld++J8lh6LaRVt0qnC1S
	 WJNDBorAuJDBGA+irJwjH6FqECeLSyeSo5bvd9sK8cqDvcQORaPEtIR9OhS7vEMW33
	 Gn69bP21zaBXe7zFl7E9AXL8FsB8o2ij3u9If6sqaN9+NlvH6z8aYgkUU7nOmMvdgq
	 hLhc6uqMU8uAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F725CCF9E3
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176285819358.22899.6611983033962251459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 163eee769b1043a9844783bee0a5db63d995d4d5edaee27f12094268b5c291f9
Date: Tue, 11 Nov 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762858193
