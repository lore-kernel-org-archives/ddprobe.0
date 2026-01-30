Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331E434320D
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 16:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769790834; cv=none; b=uTBX/1hQmFGZPdeCUIbLbYA27/IpYu1cnMSMsgP7cOCO9IU8eiJYc6AR17WVSDBz89/yD8OeXNLlTSy+R1myVmA3eGl9JBi5hvDKUbTEWPLluDzVLZ3Q5EaIK1qt5KNPQRwPrBUyZc0wAYLV513BUnbFn3lOsSLP3kdXDgfLyWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769790834; c=relaxed/simple;
	bh=kLOIEwo6aJOqZP8pgis2W/xNnr3YWK0ADkPCVtLihp8=;
	h=To:Subject:From:Message-Id:Date; b=qYri7qa+3VoGay+MvvzJQ7DQ9ltg75zjDT5MFMDGt309X/xWQcCxAdyDn/q5PD92YEB4eQJahwIFSiz8pkQPX37bYYtg56G/jrfFyTUQa7Z95Mctr9NM1L4D9QjwM4TfsYT1ZqywdDL8uYMJD9Z7E/KeukxF3GRvEefD63+3Nok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ps4wwtnI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ps4wwtnI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A554DC116C6
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 16:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769790833;
	bh=kLOIEwo6aJOqZP8pgis2W/xNnr3YWK0ADkPCVtLihp8=;
	h=To:Subject:From:Date:From;
	b=Ps4wwtnIjwS2n3qRxCe3CjVdHHXTch8oJ4OfIfTwGNs9+wLJG89BnZfqmkjGMzkDX
	 4G8kETOT64T6gOMm0DVv/pKQopTZ4cm+LXJb23jtwQKadohFScbO7XuDhfMNLOmhQe
	 epdYc/RdggviKDB7pip0rvg9yChPBB4sTMMKdft6d5ZGiPZoYtR0nlSscO+r2jxAFh
	 nVwboMi0UqEIDAVJcA9xvt2krAZYuEptgoBGHLiz8s2seVYCecQR2hbbhAy1e+ASy+
	 i2yKzVnc2TfNdP38rHUCjpH6zOMCMSw3cv7SIBqu+QPqpRSXpyvp/h4qKKPe+76ZU1
	 42MQQY8CgQncw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90783E6BF20
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 16:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176979083358.10081.2672223633502295711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45241222f6612a774d9afb56d6e1dd19030c3422b98a7f0598699386bf172bd3
Date: Fri, 30 Jan 2026 16:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769790833
