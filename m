Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132C1E55A
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 09:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767433434; cv=none; b=X7tCnPeiV3uMZDXW/TV2u5UbHZdE7rOEkJqiTy8uvFgH5toQI7qGsb0GzCv7O+/6+jAnE1qYbwCPefxdMjg+EZFm7rfrTQEiP2T+JTDYpWxDlEC562f6QGbXcNQ+nGCbF9JEc2JI0lWfY5G04TpcjsWcol0jcJYOPcGZQdraK7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767433434; c=relaxed/simple;
	bh=dvoOQ64C8Slb8dQmLN4B0w/BLK8SRiQk+0yiul5RE5U=;
	h=To:Subject:From:Message-Id:Date; b=q3EWnW1KsUq8OCfbfi0bFT7t21yG4s5bRGiPKrO7BYuh7tshQ9X4IozRVzRp6VJ3HCyF8fSHk3sxL0Pt09JhCftMMOb9xj7qE228bSJv9QiK80YC71UOB+DhsZr73L2F8sQevpU1UvF8N8yDqKC0cIbo51ZO3e5piwpm/gle8C0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tbeuSUAJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tbeuSUAJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5118C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 09:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767433433;
	bh=dvoOQ64C8Slb8dQmLN4B0w/BLK8SRiQk+0yiul5RE5U=;
	h=To:Subject:From:Date:From;
	b=tbeuSUAJTUxwRLT4985wAOUFcBkI/oZ44aXC3/oPoeZB/4MPtXyOvFABDH+sI8sPr
	 6H20ZV4Qo3n66K/TpIcb6UI1ygo7gsmh3AMRdJhJZruoFUZoq5oJM5R1Gbsu+yjiHA
	 fu7+eCEGyEGPMLSAGALn3tUrDt3QqHUMP7+gQsYJg3diHC3JVZ37bg7SnAFN9G24ti
	 eGL4PK/LCvRwZ1yQbRMYonLQdlGrbYxNXhH+9j2bkcBHAv9MxP80PmiwXIfAmi13q0
	 A4K4J4TGzIoq8pSKssVaEQVSBbds9SIGFcqx3vQS4l4VQHlwINKUjgEIohRmwiz2Kf
	 /ikLRMKhos0/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D71FA374F
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 09:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176743343357.15459.7225072205988448013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fd0778b4b13d3f0759e9b1eca7cdacf806e89983b3b39719c267d9d867904df
Date: Sat, 03 Jan 2026 09:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767433433
