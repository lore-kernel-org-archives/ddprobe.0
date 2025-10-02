Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 238EA2E22AA
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759393194; cv=none; b=skQ2HD6rvXvtW1NNbY3TtwqU4kMxOLgZPbbjs97xsN4ckonUewf2hNStP+BDknLYKz273cL1UvqAMzLrUamZGtWSdJLJxuxD3XJ28nL2q2amaHyXa01LQT0NvwYNPudfNnzxunxRMZxeevgaRGW9BNaxAZEcpDAwFlxQJGFRhDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759393194; c=relaxed/simple;
	bh=ZgCdsRhzbvsK/wWBohvnsk20Q1eWb1S81FP79pHzrss=;
	h=To:Subject:From:Message-Id:Date; b=pVNLUPo/5bkOkwP/yErK/4hQAm0Xqp3z3nX++zmVDwqdzC47+IsFUlEZJS9DIpUbqOik793eLrnnHJbFaUHA0msG/5voopPfLt/zKdqC1e7VAyMoVtKIizIdW7MFXojkhCNOWlZBdcuO9iKr6SXZ3yosEfsiO9dkvlQPCpAUK7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F7LeTQcG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F7LeTQcG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB456C4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759393193;
	bh=ZgCdsRhzbvsK/wWBohvnsk20Q1eWb1S81FP79pHzrss=;
	h=To:Subject:From:Date:From;
	b=F7LeTQcGhl/iUBGSGoxcywpzGNgiNXN8lPxT+KzdSArOpo/mpL6pjMrHfdsuBWm2E
	 9aggZf44buggfw5tzMkTxhTnPtBz6EuGstbkq3ALiwqIvTocuBJrBUM3LllBlSFNCa
	 YbBsrvbiSUW1XDsCL1oGywjBV8qfWjCs54R5V4Ooy0wNbCT4JwFWWzm5nLbNNKpMXU
	 6uYhp5sm/yho87jBChobP0HBJ9NvkIR/HyRPM1jDiOTsaIeZJBIECtbYqKvhF8f44y
	 tL6U3DZh4Z9fOQGkeOyB1KXKrzADrcmQHAwYtXHihIxVoY28po98KeqxiWuEuyD3Eu
	 Go4CwJH/9kZFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961DDCAC5B0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175939319360.10921.4318949374120074723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21b7d17394c45db4a2e7c5bd4ca3110b840880d4aadc0e78d23da6aac99a259a
Date: Thu, 02 Oct 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759393193
