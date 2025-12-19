Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25F9D234994
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 05:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766120634; cv=none; b=AQogLdOI/qUhATe9D4NINBr6RR3fGUVBg5648VUF7UNodpM66eSKTk6lYkO+nyBgZl4UhFGZdWNyT5QoUl7XdKtZcNNvFKw1KJIaclWPZdFlC1KVI/qGPiGkpEmM2kUP0H1w+eMp0izqNsNwIMEhkWcO2fw/7ZSv7hwrh/1Ij28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766120634; c=relaxed/simple;
	bh=7DKu1G8DcUIpOVsT+lCZg6cioLDkEh0aZOtH8qocHR8=;
	h=To:Subject:From:Message-Id:Date; b=VSFXdg43qZUD1XYNMMuNogAPQfDtPIjDnH7aV07YyGhzNQvHKW8wudCiTV3mwkz0bnND2J86i4LvrcHXuVmw0wG29Ho5/mwd6yCg9SdlF86xDseA5ByQrcB+ST2fz4vBU25W4N7XBBNblvUBNPcLWS/0omYd5tzwAZ8/A48BECo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rVmuDRMv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rVmuDRMv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E35C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 05:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766120633;
	bh=7DKu1G8DcUIpOVsT+lCZg6cioLDkEh0aZOtH8qocHR8=;
	h=To:Subject:From:Date:From;
	b=rVmuDRMvBw4S/KhgcxbTDjgMxWNP0xqIakxczCqL8upDraO5u+/iy183Pu8fl195k
	 uDnIT9ktFJ+sbwWdu2+c3klPaevlO4pvpxAPY4SCkWsTeq3iVja7qlsHyTDyhPwuaP
	 rkEZzeX+YUYPEVSYMgNJz6tslVi5SUyH38dX08fihX34MBw5Fl8qQnQxig3lcPpT20
	 0IP3xHRo8fKTe7ywKwQ/yFvG9+vvw97V84VmwvxXD1j1i/MfDmIVQ7EaSng3N8PWij
	 oHYfA5msiRxl6uyvUASNu/m2KjzjfSFiND8fXwxJLi64nxWQxqBiBMRSOq6MQn8yHZ
	 +Q7R9bbzKtBMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C27D74951
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 05:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176612063358.21271.4868663363707934730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa2f65675b890f18dad1aa008612abd7ecce6517b669db2e4b41b5de2441562d
Date: Fri, 19 Dec 2025 05:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766120633
