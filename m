Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDF6928BAB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745429393; cv=none; b=eCCPcz6e4sCeEZXgeNR8Q3RkPnbvlwRLUHeZLt1MzGTNsyGNPAp3nU2zMA9Ic3Z62eG4A1k+LeCSJDiKND4rIXgUhIoX8n1dXqz2+ZjpkthUpcN7wGcuKPWKYS+8fSk0nrlNEAGlomtz8VZ9gdLmKTCjavyQCPrZ4gBVmgWQmqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745429393; c=relaxed/simple;
	bh=T0npU7avaHTfJJ8Hjw6IlbFrIGvdH+32TfGbDkvCYkE=;
	h=To:Subject:From:Message-Id:Date; b=LIDndEGV48n1nGtfvLzW/Mhhl0qWkso/TGo1CJGCa4kI6JVaDMJTowcOQJk+mpPmvztDmk898KEgNSuMefNGhJrGpcAS2aQZzbA+YzSJ71lQW9ujrwYvBwGqm/ldHwdHVm8eB+lZl5syKeXFoutHLMDf+9PwjHm+CSLleWOSImM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZTHf1QOf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZTHf1QOf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0732C4CEE8
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745429393;
	bh=T0npU7avaHTfJJ8Hjw6IlbFrIGvdH+32TfGbDkvCYkE=;
	h=To:Subject:From:Date:From;
	b=ZTHf1QOfFi+rwEr5jMGajyLLOcJM5KyqCNHe9ClWFc7awJQPgC1VghDgB1AscKg17
	 AKZRDlUi7nUovY1TlBJUCuw8swydf3IR+ObjSRJpRkHmULThZMhxg6B5d/+n+kUpaF
	 Vm5qN3yRe9h5tCZKnwQSih+xpLhtE04kwm5F30CdrqeyIqcgSiC7d/cOfyt0sUn3Tp
	 ENPIMsQBqlHe9Rr2ASmkZ/da4HVfzNcC+KOdwK+KiK22QFCuLlxQ7qtVLmfLQPRZvE
	 6QqPiQNMWQSVRoNDLbSpUzHud+ImFtADfZoIQvYd4rSuBVC1k/1kBjptz5EYeVrsqN
	 xgqkms6XlLPGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910D4C369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174542939358.7945.3237891898478400753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ba1b7b61ec168a4b4329187af1568a89e5db8c6a891c057f1c288b3a7cb3fcd
Date: Wed, 23 Apr 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745429393
