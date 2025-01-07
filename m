Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D80786333
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736231754; cv=none; b=ezpannHqsHnse1NpJgxbuiWMQyGtScIR8BuqwHQHH387C2IGGJyjcKPl2p8GXx/1t7FUTt0Ct3EeKqB4fWkRi2jBa0LZ4LSJ1yZ/kRFCynVMfuVTWjfVHC30h6W8L9ReVQ/zaBViz6QjyzwoNFjIw2uXafaBlImxuSUUFH+E8/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736231754; c=relaxed/simple;
	bh=RUZzjIvthe1Jo+zwkVbwgte3dzTWryfKPkzQmjRVAR8=;
	h=To:Subject:From:Message-Id:Date; b=irkHgdw4x2YdG0rMhtg0ry9xVALSxWgVN+xLQp3p/S5lNQ6GIl+J7fiPqFZ6/QpgAGm7d94P7C7DENpoB1aaYGhZSsbY0DIOlqM7bhtwo5cQ3hbVr0yWXU4EfurB8plVFLiQiTTGWbrJ9By+2PQ9AD1xgb8HcXWBcCJFnnlJq0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DULPF3JM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DULPF3JM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DADC4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736231753;
	bh=RUZzjIvthe1Jo+zwkVbwgte3dzTWryfKPkzQmjRVAR8=;
	h=To:Subject:From:Date:From;
	b=DULPF3JMhB5JC2b4ryvvZt5vMaaANsPqjwbeg2zJsh0YS6aTzoJSk5vC4U7SvaKez
	 32p2R4GrLGF9b2mZUUeZMVe4PjKd1jRCsl7vNhn9d+27gJ5/eOsNXwYeWtjioYmmoZ
	 dIPCnqQ1wcuuXYCQl7SGK+5HRgWAexUexhE+ziMcPL1CbofqWRU3fN1zmFTYq02ShW
	 D8xjoZ07RMw2RpWo/ptu1+6p5LmPtaUGqOMNslzSF4gSc6msncauQknJKf4y38CMs8
	 zMB2v3bWSzLCqqIJIKFcf9IXy5F29s4I07mM0EdHp5Y85e35/S4GYjvjcaqtAVBxs7
	 bTAdknNwzxSsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95286E77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173623175360.31233.7059513064792274396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9f1d459a89d83c7d6d0daca1caadd0ef59426a949a736883d68d4251825e963
Date: Tue, 07 Jan 2025 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736231753
