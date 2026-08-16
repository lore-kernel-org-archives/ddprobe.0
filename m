Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 647803CBE80
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786866034; cv=none; b=hfVYv7ilhJSMB0HrApEAsRkJZ4CPJ0WhcMM2thyXac9J6z3SWXn3Cmb6ZHTzqz3p8qcigJYVLATBIEH77MpNqvLhoXbCi/juPupvl6YiAjPAawEjSnR7yUcRzDsREQs4oq2iqa4+uOSlqk4RUXfcDa3hn6ZgbPIBZOxL8NDlDgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786866034; c=relaxed/simple;
	bh=fuqG+d0D+hrPoATQNmJHXTuoaeZXjfVtlwWCRH6gCwg=;
	h=To:Subject:From:Message-Id:Date; b=dflB2vM3tNiJywNx5Mdqn05DI+Wi5Hq7jLER1FS+DjnXmj+3uIOSXDILu1bGojMDKUNeMA9s/N5rQqWlj/rxCaO/l4C2qXsTg/xd766apIlCjyoKFug7MOihvhBobMZKKCMLFV5LonfGV0wXVR/2HCbC+5lKvcyERqJ1dSRhPfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MM+v7VDk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MM+v7VDk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDAC5C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786866033;
	bh=fuqG+d0D+hrPoATQNmJHXTuoaeZXjfVtlwWCRH6gCwg=;
	h=To:Subject:From:Date:From;
	b=MM+v7VDkAxJW8QTUvR4dQPAYIJociQEYBr9212Rt/V1Vmxorx+oPBEjwYOxHfwUp/
	 bp+ysHyjAd++Dya/PlPKDz1Mc9/afV2lrXidGrikim8qIFp11CLpx1zvNvBWrnyzgC
	 mUOei9CkFNKUhPGovsBOoLCappsDpT+vW0aTsPRnWjUTLBPiunw98oTt7OoP4L6KUa
	 O8XvvwHXvgphTnGxJYZHKbkvYaRKOfvOufwK3YwbN9paDzobHJrJ6ONe814t0n1rSh
	 RBObhM8JDCJGb+M0m/Up7pehHa24cede5FaR7EOn0wqdVfLyvcQw6gCJHR3xHkOaog
	 WeaQeeSM2d+QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2B69C5DF66
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178686603369.28314.16978583499882764873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cdb073f5b0f24724f0274738db9fe92349159d12c3e710f64b5b5f1872ca12d
Date: Sun, 16 Aug 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786866033
