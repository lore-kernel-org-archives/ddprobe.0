Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AA3933FD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743746394; cv=none; b=DnVwsul4vRpmSm6D1li8Sa4Q26xri69etCg1bvuM4QL1CmY5XCoKcJ3gntLO1P6mXwbjcAiuvDqWb8urFKvXgIiMWtLZpIpc2NKfy6ESEpzsX4WHPGU+zdJdV4Xw5Q6ZbdEZg8yV1GQafTrPxNJfnn8g7bZhjnxBs3f2Acn6MW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743746394; c=relaxed/simple;
	bh=ddLQS0FI3SwAnzQvFLAmS5SrR+bm1rcMU5WjTtCGw1I=;
	h=To:Subject:From:Message-Id:Date; b=rd+autMuRORE1lCRceSfGhLv9xTOtExMjPyt+4lC0EfLlTEyydTfxCW3bJc6aOpS5VZ9vOa1zT58K8+VXZvgAX5XnuYYypMQYKp2Djx90d3msVdnvMH07KT5oz6Q1Yzc4o/TAA1iHmkXVKySfCdxIyXBt5sEympNjz/UWSCXEcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J1d7m6vz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J1d7m6vz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE6BC4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743746393;
	bh=ddLQS0FI3SwAnzQvFLAmS5SrR+bm1rcMU5WjTtCGw1I=;
	h=To:Subject:From:Date:From;
	b=J1d7m6vzr77hxqn3mCkTn3qTsL1wtaafY6k6BbWQF5o5sb3Be4oQv2UyBE1zYEltc
	 65fG97OjMS4q1gXD4+0bU3xPpvsb6iXabb9u5uxLBtyvVAjD37Gh93blLTPJUsgBNw
	 gWiZrGsmCjG2vqsRSTY6193w2OO3611/UHjkaD9RD0Ar7z9vLoWWUpQuSO4fU3aEi9
	 7VZNjMZYJ7LdevmqHZWNh69ApJmUgAilqXStr8kgdCwZp1DzuHxQ5FGBaR8rQC8Ifb
	 hcAZ7JbHKMmZ6pmf6K1VPADZFcyMhCU+Md7tEk8o3Wr8wqBi2yRfgpWk1b89+wdcHY
	 fhi2DpSuhm2Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91826C36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174374639358.739.15011373702978506731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab186d72f1c87d0b86f12bc7b71d6f67d4a8a3e2ad82d5c4e862b80a1a956aa7
Date: Fri, 04 Apr 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743746393
