Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16EDF3EFD1C
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 12:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778846434; cv=none; b=Vq7MKy9e5i7lBwuS42XpZQZNtw1wcXtiq63aRTWixSWIprosxfl4hdr63rhGGDrwNu+pKDBRhAaM54vgsjZPBHTTxne8t/XHjL5i5+YtPXTXpRb3WUSkJS3UqsmMIY7Pn1AKM6j4hoaCXpBZbh0uHq5teCnruIHz3SPgd5boSLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778846434; c=relaxed/simple;
	bh=ynMKIpU/tMO7pm8/1mAC0xomQdOwZjuwm0ypFoFcHvw=;
	h=To:Subject:From:Message-Id:Date; b=LqP5onCMGRDMlxMfWYeH+a/DlvzG+h9p6RgYe/RUORVb9/mlfWHccl5Q43dGtHPGOx/+f6Ipa81UNSsKVgFPsKdbEV3aGD89/d7Nw6sFwebzeXDwE/H9y+xUmNW5BxBGqQDfrl8qyVFcddJMNyd9TTvSYE3871f7A1nwIHJ5j9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G1nqqVM3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G1nqqVM3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCAB3C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778846433;
	bh=ynMKIpU/tMO7pm8/1mAC0xomQdOwZjuwm0ypFoFcHvw=;
	h=To:Subject:From:Date:From;
	b=G1nqqVM3JnjR5KyiAw4KeSGhQBjqVcBmxShZwCelOFlk3tEuA/0Fj+nOK5hevbiTg
	 PKSCYNmra+RlOaeimlKE2GNUsVpDKZ/ZvxD5zN5pIfSKsEgk2ICxfa84cfRDsIxUg9
	 0WjJQMZnx/+K/Cx5I4xMSWCTveDbY+bZVNd1InD84L0jBRyJbka9JtkUgl/+JRtXub
	 UlJnd3BQ6vsRMZdGPjPacqQdKzO+bDiFg5x5lTrNSIv6XY7wHIhU5R6a7lmu2Ma5tm
	 wuIMt5g/WgDaHz4WyVEWZKibN8hz2xu0h2R1Y4jYsG+F+unnnmgxK8TowaW7FIp1YM
	 xFuio6gfN7/Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF80CD343F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177884643370.21718.9429360962925598374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03b5491900bf5df69abcda8a7b04a9d255bd6861dbb97d881bdf3c881c1ef0fd
Date: Fri, 15 May 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778846433
