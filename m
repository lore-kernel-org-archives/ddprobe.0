Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E69223CB
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 18:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716404003; cv=none; b=G8Y9fag8FIB3eb6kW5gyGSPb9PcIK40DlGnVTfZBcGvqYTfR3+Mwo1WQYTNGnzW7M3KE5OnNyBN43A/dZeaCaI0K0iBc/ekwJLxzJKbK10IlY4uZlP+V8lcIyFncDxZujCtNUpQmd9ewf92xmn/IJq2fE3VvU7qIgp4mEmZ/KKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716404003; c=relaxed/simple;
	bh=jnULKPleNbzDc7XTPwnxLwAIcUZczHL3ySobOLt8+h8=;
	h=To:Subject:From:Message-Id:Date; b=BEVHb1iT9jRKaPKz+mK/z9VbhD+CdRVr9fAimjws17B/KjIvF747QbcpOVtdGPs7LQODXQFKWqk7S3RGYxSWbdtlOpiFtW/KB3lf4k2UrzX7cEWj0NdfK5Iz2ke3duUbpfttC5r/WDU5sG+AluY2qbRqwcep7BPWnLh0/RD3x3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AFJcwWpw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AFJcwWpw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6862C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 18:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716404002;
	bh=jnULKPleNbzDc7XTPwnxLwAIcUZczHL3ySobOLt8+h8=;
	h=To:Subject:From:Date:From;
	b=AFJcwWpwEtpUOLzZtxUWgLX76lWpjvyCLtJe3YpxXSEr2r6oqjKTLjuO4wj/0/sNE
	 F8NSu2G2DhkYTBEZFs/REVL08SpcMjNtuzUB7OKZa0ppBYRQFNjQW8fUJ08EDxJcRC
	 a2NgJcxoKhqVl+B4nW1p6Sl26txjeDgTk4ohM1aTGnVm0OdKeR7EjbXTOEFPxrZihU
	 YIaifbHSk8628KWTaXKrPUqo5G7glplU0W8UPpVgdgfTRm7+ePYNiHZ0zFbdw8HsDY
	 Ns7z2BAOm5TniRZgLjxaF5EENQVY2nzuLRVyTHd4o39QQwQheXZXODJujAmw28q5yf
	 mvTivZcJXEQtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC28BC25B78
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 18:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171640400278.6850.9792872313610144941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4614d0dc78b6574abd6fb6dc06f766b21454392993153384975edee1da98a859
Date: Wed, 22 May 2024 18:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716404002
