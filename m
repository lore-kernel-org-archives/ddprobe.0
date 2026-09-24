Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8251E3B5839
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790214634; cv=none; b=sxoWCdo2tlHvf5+t74LKwq4VgiXOAnp12yLC8c00TBwbYGsiAaIh4oKmfyMLFAIcL8ppMnit3VdBKTimoanuunFG7OyrocwWfUex9xTWpqSFwROb21bgf/edaqGl7A2U/LxcI39wCrPmwGa8XEXJXMMY0ovLLkieMTnzEnoRSAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790214634; c=relaxed/simple;
	bh=/c/n8QpUKPaDt7fRiwOlalW7SGp/2tCB4s5kgvwC7nw=;
	h=To:Subject:From:Message-Id:Date; b=utz9qfQNkp9wEO344bUJKZtDRdBu5oKFuTfcQI8Jl7YpwWAirn/4zJdkVx5F2OT1dhbXx+2Xx1H8YTq2GWc6A+BJzmo3+bFnrdshLUOnBrVQ/KkPZyBpkMrqfdBxlRSFaAY3y4jrbuZERINya8sPa3SRhIZmvmsJY3ApyqMUntE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CUt1y9B3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CUt1y9B3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBA3FC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790214633;
	bh=/c/n8QpUKPaDt7fRiwOlalW7SGp/2tCB4s5kgvwC7nw=;
	h=To:Subject:From:Date:From;
	b=CUt1y9B3TDGzyrGNbjZ0zkp0vAUjlRrfbF1965pDBOVAw1gXSn9klXGdspTQdiT1r
	 HXGDjAFDW5gjjyD1P/8LWfBtyn0rQM1aqJqZWG61/VB9E9ou7JaI7ZorscXd8C/yGb
	 jfm5mDla8lYpmkxj88KuXxisW5VDOWyL3/8Zr4bbqRfFzJsOUYdrc+xHYuwydy+dgj
	 vYXZ0YKlull3E8FyihjnLRJyfPXwzh6p6Ndunz5hW8UDdRdSi5SqS8XFXBh2PjNxa9
	 XbXEJVkVTMrCJSsXZ00XiZSAmQ8X7q6kOHr1cSPr4TmWeBuqlHaRcnt13UHVnJ6B4A
	 X7UZmPF4yKYrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B45A6C9830D
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179021463371.11281.5814799143579249000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e045b7a41a4354ba867db890e996267a79dfde6ba05aa61e6349c3916e67c5cc
Date: Thu, 24 Sep 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790214633
