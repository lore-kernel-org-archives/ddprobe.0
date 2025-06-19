Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D3F0265637
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750340994; cv=none; b=ahoARuF94Yd6Ww28VdZxvwWtLwr0mqQrcS3mTfZDnqhr+7Uw61LGG8jMc/jNHABDR3l5M2ibuguEmYH2KegTfmz/OUqJNxRJu2a/LIlJ3ECF3XVWWwOKy68iOmkG1DLeVbE0ujIlFOjWE+4sz+UcEej+TOMOrKo31otAtfUnqUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750340994; c=relaxed/simple;
	bh=zFAMA0Zhopb7Jv15W7cGxTxZjPyYa57sqbK9XwcRasY=;
	h=To:Subject:From:Message-Id:Date; b=o56NZsU8stk6TxTu++PWTxDq9agOl7ZjN1YvQGvBXmAUwwCxU1IdFCZ3EVGyM86jQU/CapaAxaUpRjBYRyRX9L7YSQxo/TAnoQRUbpfefVEVbZN+WTnFAp+6lRH0D+QNtBXntUnxg8J50tB76ISFomagZ9OcyCEP760gV091hZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YbZIxP5b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YbZIxP5b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABB8AC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750340993;
	bh=zFAMA0Zhopb7Jv15W7cGxTxZjPyYa57sqbK9XwcRasY=;
	h=To:Subject:From:Date:From;
	b=YbZIxP5bxvIGT5ki6JzGC3k3/qwliIVFey0STJ0WvKQy+wmTPYWBd2Mel7RRZX6GR
	 hcTTbai62EU1Dl3nVnO1M2qVBahOqAB+qz5JRq4K3PnYbv2FtXA/Kq5KW19OjCQ9aI
	 Tp2tKQHcMDUk0hOMTvbCFgcOpbTnDW+xiIu9yl4yUpaaCuc43JLJQ+q75oH57bNzTL
	 rEb3KtwPAj874iEDlwMTLugifW1KfTHWgzR4xlXCLX89voP74Rj4AgVsu2OoQZ6vAj
	 JhbbQVAiBfqCFwuotScY5iuFVb12t56aKF0GV+WA78AjcG4qS1bBmTYS1fFZx7vXNh
	 96aWb9ic0eaZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913EFC7115B
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175034099358.24801.6614829289046948350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a791677c92091c677ce348332fe8c90f1e65b0b8a3ddfd23d8566cd8b176d026
Date: Thu, 19 Jun 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750340993
