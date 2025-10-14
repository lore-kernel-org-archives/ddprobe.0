Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2264024DCE6
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760463594; cv=none; b=NvdBZ2l+FoZIneNHcY0rq8R5oeVPz2A8KUM8cRiTZIHDLcGSkO/nwgWFZrQRwvHqBFBCcehA9WHqVy3hecHTT7vr++oRwuc2HMCbDQ6xh25ESd5kGSKs+crRAJEcknzZqeyPQ8jw+KqxBBQpCqGSCGagD7BOdLTzScWPg4wDL1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760463594; c=relaxed/simple;
	bh=AxmqE8Al5zmwxbQtT4PeYFUODJdjlGJlznnPk58Aujs=;
	h=To:Subject:From:Message-Id:Date; b=az2Uff3Nm6wK1t/OjRfSVp2vbG3htzlheFbic65R8U7zcgv4OTl0vp2wsqjrFBLnNu0vaWVnSGgcDCRA9u/dLPfzPgIKKdWzYbkEzYttPMqiKxk8n3HY/VmvhrXzLV/bORBIzyyeI6+2vplt3r+3mkbTSzLKjCI4UG/CrWDnSfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c/syH4eC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c/syH4eC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A005EC4CEF9
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760463593;
	bh=AxmqE8Al5zmwxbQtT4PeYFUODJdjlGJlznnPk58Aujs=;
	h=To:Subject:From:Date:From;
	b=c/syH4eCZK1T3LQolO82udHcXbMU/OPUJjBDZIU7AZrNALcTJM3338IcxpzztnRlu
	 i550r+fH8Gc1rRfEexmWAI5c6QYZiREmmFb4vKDr+iQ5O1OpVx44UGVBl2R+aVlH3y
	 qGgngeVQTCvFbGa35P492K0nem6851gyFNThJImKK+7arL549vFOm8s+mbwn6aJzd3
	 W2rbxJyCZkcIdg4swZOxOaPJiBfA2LnHenMnZ8hhjF/YMcN9GdfNhUMRyuIVRQqXQq
	 PSrZOsQbVPCfccVziH79Gpdkr1Dzun3hFdFS2eKrj74xECYgrAQCZN8uKpDTyJBRGQ
	 xOoJfAyU5r3zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902D8CCD184
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176046359358.1538.16882729895654080882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdd438df2d089b00a394689434d3e80ccec1aa0c37c4ebb5dba09996d91f33aa
Date: Tue, 14 Oct 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760463593
