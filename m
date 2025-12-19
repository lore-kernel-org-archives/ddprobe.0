Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF7F2D5A13
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 18:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766169834; cv=none; b=FzYntfBhov9iCez8xeWjTHFnDrj7AFb0lW+zOvoF4E/WmzxUBb2+wILNlLoSnjuql/wAjL/ne5/6ylPXYge7fCbvj9Nwj6+2iY3CjlWdwdFgKiEpvM7wOyYLAXOSrVojh3s6OT2yCwxTaUG0BtOAJwuGcl/TklIxnJ1cP4Mhz5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766169834; c=relaxed/simple;
	bh=vImpxkkkkcQhiWUBrLLVFiGSYxIqiEuTiDX+EmYFlCk=;
	h=To:Subject:From:Message-Id:Date; b=EUIgIY+M6IO/x2svA+CXjWAmqwFG+WSfsHMV78p7NraMZRhsNbRMIOyeMpCFu6vf8eHwEsiP+YtHRfEmZbcXoNdJQzhe8/w0kh4mES1De19ZPTTxN+4EuaESX2gcgYbtLEP5hIE6qHmxHRTwxAWTgw/mJuiN4i7qGKS/t+YWNFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=esRy0wG5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="esRy0wG5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF61C116B1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 18:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766169833;
	bh=vImpxkkkkcQhiWUBrLLVFiGSYxIqiEuTiDX+EmYFlCk=;
	h=To:Subject:From:Date:From;
	b=esRy0wG5GU0a+Nq3zPLDi87x2Xxj2qMuwRRt2uwGwWaPQ0oPTu0HsKL1XuofaZR1R
	 e/tppA+BD3rLGYaHwvV2Hw0cobP4DSlmrTMWjRw+QeZQeJ8ODFUmMCCLh0Mumkw9sJ
	 n07rjT3cubDFSpg1dkfbBAXBAqyYadMr3QRTPeQJIHlehd8s2ts7lLJca6YVXizSa0
	 yiB+D38KMdEUWLVw1Mauo5DGYQnOsfSiAGNcwUoXyJ5n+Jyn2GMI5rxX0D2OA2VV58
	 c1UuHAtCo14p7/XMEbd/gMBoJB8iDyszakymJiSw2iP4ho4SX4T92j9+VTDHiKpyYv
	 wBEwzQaKUgzcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E9AD7879F
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 18:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176616983358.12524.260981926421802244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73e7ed05ab43a97ed0da9bf7bf8f2aef8cf3fb8cab59b526fbe0ff1fa3333295
Date: Fri, 19 Dec 2025 18:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766169833
