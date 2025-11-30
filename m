Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A8C28F5
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 19:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764530574; cv=none; b=h1d4JrWfKcS+gESvs3cl8Nvh7scp8cBQWQj8f5XVLSLbZWnDQgicj7eDbfhK0aK8f03oGTd3cHwB1qV9cAsvAtsDM28Rkt3KBVAc3hiRI2OaW10K+qYFOz+oiX/a9DFKSdn4DejyV1EVCVUTzOrzSfEglIEdoJNFFIPPedvWnjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764530574; c=relaxed/simple;
	bh=+vF1LzQpasq6HqPt292LZEh5KcYvFlHLCW2IaKULaYI=;
	h=To:Subject:From:Message-Id:Date; b=C/RyKy3e2Sxfe3EULYWLskG64jE2g2twQsNyuhVQ+owlftPzwwz47nIsye25jRzCTBm8FafL52pbkCtnFbrXLz6AbNUdvXcDH5gr63uCu82t1GcyEYJ/Qrq+5LJeRzl4+IMW5qJwO10so8cj/9FOwhi+JBqdamnMCHECRxRqUgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=btXAb/9v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="btXAb/9v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A54C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 19:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764530573;
	bh=+vF1LzQpasq6HqPt292LZEh5KcYvFlHLCW2IaKULaYI=;
	h=To:Subject:From:Date:From;
	b=btXAb/9vQZMlLzxYa/Z2HHy3zEzEAbiNTbWe6+pDpaPvynWLgGbjzqzamjWa4NqFG
	 rx3pBINa3E8zgGey7g+Vj9TQWPYT5ynpkZ8ZVoIHkIfs91rXWC11/5obupa/9lieD4
	 GdS6Ft+7fqCYXJ/0gQN6JM+AQDW5JgnNyaiIJLTnxs8CgJsjeH9gQ9aXcNeOTdG3+7
	 DxKX8up8Hk++QhAF/BXqJujUkz45tGoYOBcAeVXSn7i6M6H3yOyIBAS2KGNc0qyp9E
	 tIC20Tj1zW/dRWDUKe1BrSUHBORHtXzgDQk+XI8as7//rwTj9yq6jWuX+arXVP3HdS
	 jrZqCuNaf0t7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91790CFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 19:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176453057358.31670.16914226595418733795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3badcaa4c556ce7f15caaea2c75e1587afc251f51da76a11d34578002eb83dc9
Date: Sun, 30 Nov 2025 19:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764530573
