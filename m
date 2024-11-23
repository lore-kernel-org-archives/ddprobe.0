Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DA1129405
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732347354; cv=none; b=A0kdZJr1XbsbDRhkEQTpDqdEmmn9bKZPaeJ3q7rQ+RZ0ssi3a8x/5GChVLb+8y6dcVeVtgPT0x4MCr2EphIfCSyV2VpjQzKTRxpl8cwT9caSAxwGvLkrFFuyEnqDGpzBYku5Jbqc62YLPfNQAceQ45/aTQoleD0Kiv8JgoY43L0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732347354; c=relaxed/simple;
	bh=CSooVMZNdJYw4BBMFAm6nGnvahhWCQrzY4rbbAhytnc=;
	h=To:Subject:From:Message-Id:Date; b=EcWhKpZ8EjJcnhHAZoPXhH9Ro7l5UgwhX3k2MTA+BEBXfRUVBnsGjgz9Ey6Boy0o0HJJpUSFwj+HuWrNCGKTqGluUplsSERn7y6SpXA6dPKZL0MQbVzqHRk4wKd9P7Rs2/jnOSZkyZw/gqQ6Krw1qo7qSqJxc3dlNUccMB8Y+Uo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tHt4K1+d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tHt4K1+d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9F8CC4CECD
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732347353;
	bh=CSooVMZNdJYw4BBMFAm6nGnvahhWCQrzY4rbbAhytnc=;
	h=To:Subject:From:Date:From;
	b=tHt4K1+d8q/8KPfWG1Kbs/C88UXm3njmCNgrZQiUfv8ni4u0MDNjawT/3RpRUYiwP
	 lOqdT821QNzKWvHAT3EEbbsGsX2VpTPsWDEToeCP0vtSmb5UEdbWWV5iRCWpvAy0ea
	 lVAW9aI4HSIDY8Ocdqm9m2V99Q+g5NhyahtVg5ZzcUHdRQAe7/OOkDy0zmgcFDDVIB
	 N5JTbBh95+32kAY1HjSRidlYAhtPjD7ar8MCf4zeAoeKXDlcEiuiEQ7KXStTmiio4x
	 mcL/14iVOtZ8+/+bpUG+4TT34FpUO/1SLpMTMZ0V/fzeOe7fekcQANsoD1qn/qsYDb
	 3e5Zbe4v7JQbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F969E6ADD5
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173234735362.8014.13837948504972455247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0a297f9fe2a5a7252bde1929dac2422737037fd7a60da5c6d220f4bf74b458b
Date: Sat, 23 Nov 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732347353
