Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C2E15665D
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723226154; cv=none; b=E0cOUWZExU4zbxfbKKAJUX0mtE67CRY2fPey9I8D34b3G6jEo0YZsTnR2pmLArBSHBXmjDQv7XqQfSApRKCv313j+XnYTlewVWE4ImXB4Hc5Ri5efzDpsehTrQGhMx7fncGyit7uuti4dyGzkbihwxsJKrp0igxEoC2lesMJ8/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723226154; c=relaxed/simple;
	bh=u2HWS0yuxekS1iJzGFsXu66wTAOG7KfcL6rSJjPAfMY=;
	h=To:Subject:From:Message-Id:Date; b=JYrUIT5hsSsYLLb8kddd1v79HIG/oVdzpK/tQsJFSMtm8mZMwcbZtdBZs4U53Xy1Ja3023YskE+tzyHtngGPow9X7MfcVCP+zdqfPKCEQ0bcrs5UN79/DoJ3NsT3Xng1NmxMzZz6KlKZb3NfCLo1w0rRHVhdZiMtdgLQf3qjCuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JqtW5RUD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JqtW5RUD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6174C32782
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723226153;
	bh=u2HWS0yuxekS1iJzGFsXu66wTAOG7KfcL6rSJjPAfMY=;
	h=To:Subject:From:Date:From;
	b=JqtW5RUDftAl88xs2iI+DvDYrT+in505qH34v33xtNJMyvMxpmIZSniWXMrx8c8Ox
	 ob1zDpz6pNmE1+PkKV4zBc/fRsgJB6fV8mQNCsAw+8J3U1HKDeEMuf1QJ21e395xGl
	 rkQrGGU5cIvbwwZdWYnAZZ8hMA3YlckRItFPmSTkbsT4S4bE3N/V8gNF+Gl+Ua35Yi
	 XPpaJZD/zoL0EBLZl2VDjbX9RjdSCi9JlZdNh+2TsRl6Q0tYEHkMQrFXzU3z/JaZcE
	 0wQ46mesal+pnHz8BZ4shLWG9d0LG1UfUVTWW25KK0daImSVksPLHn1hc3zLCVjVKU
	 qwO1OprGHgdXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93948C52D7C
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172322615359.2546.733873478812748718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9974c950ac98eb5107f3e75f43c2d9e221ec3b9c1fcf3c54fb2b12a9474e9c5d
Date: Fri, 09 Aug 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723226153
