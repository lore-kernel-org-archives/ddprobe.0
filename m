Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48963403AF8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 10:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783678114; cv=none; b=QQGcsxa6+jZDRsRwMYJDYs47hrTNYf72O6p/Cwrq1XRuvGCxa1gdibe0kBh9SWJMuhMd0MhXqcIjWo5QlBbDhc/pROkx9I9oAj6mjYIfAMBMvXfnBYvikq7+0IFZrzdf7vtHgMV4N/RXW/VrOTAd+KR5kJrJ5UDNxjLV94QRxAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783678114; c=relaxed/simple;
	bh=XxfoUnA+rCWCUSygMsG2mACVWcgpDh4zH44mnDIp1cM=;
	h=To:Subject:From:Message-Id:Date; b=a5cevQ48axgbQF5fn9UmZVmfRff5fhXwQK21ekAr3+imfFnO8f/DvKp/o1t1Gpq0dXe2jquQUD2Tpap3MwSpb0EdLMSMlX3v0AlyP4pPBC9OadomguoLt9mvzilp4uBZacd7NixL9vTiPpyQTqptxsBl9DTY6IFllSHRfCSqI+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dC4gGLWn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dC4gGLWn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE536C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 10:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783678113;
	bh=XxfoUnA+rCWCUSygMsG2mACVWcgpDh4zH44mnDIp1cM=;
	h=To:Subject:From:Date:From;
	b=dC4gGLWnYj8hTULfPDADpHC4q+dQKD0N9XMY/yxd/nWYebd7AGnxHd+l2q9MNn2CL
	 ZDvC3C6lPYrQw1ZqQmtqIRAGMx2ZJRoVmUXoG74zuEHA8DlIHctSWcW8w8tKXh42ea
	 tq2m2nVUn7HapbMZtcXHZYT1ZJvNvR6vawuzitsESlBdJEp1/ObVV/Xv6dvnbYBBLY
	 wSrVjdw54IDbgSDreQo+NOzS583Jo3Wf1g9c8fjpIHmyL8eiLrjiEEi6K9G1u9ec9F
	 XK+TFzUyPvvXc9tAontdwLTkCfYQmOMqkBQdMJyKf98F/NTZWQmftc+XqiMY9KGpTu
	 EVcpPn9HgkDIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC86CC43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 10:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178367811369.11383.14752325901749403057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2455195cfb84d11ef872ddb48df4b4885a78368aac07028ea347b43e84d7f5b6
Date: Fri, 10 Jul 2026 10:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783678113
