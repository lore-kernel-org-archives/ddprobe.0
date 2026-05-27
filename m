Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D8AE3EEAD9
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 17:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779901954; cv=none; b=orMkl6ztTZazRTuvtb1LPgaJAFeI3Zk4SlcMr5OMptyIsjvFdDWYJrdMpD4fBo7+YrLtcBfPDmFGO1TBTzlFaSQOpY9484bJEW9LU312bwuBgRLFuS3+mzKU8igKJBLyJiNvlyrnbhFusZRsbg1Vc/NhcRBVTdiaP9eDKVvfqms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779901954; c=relaxed/simple;
	bh=83lduJQ9eAa5BmBuWQMn9JqA2T1JNsiZ7IQrrMruVP8=;
	h=To:Subject:From:Message-Id:Date; b=DIC0lhulDziPpmcAuqqL/s6TsCIA62/llt4Oo87KKp+fyDddJGu09PkjgbK94N4FcOvDOy4FeYKKYf946reMSlPr9z4W/7I5vPsKHhsEWvs14tk6zAfUXOtmKGypc0/2GBRfvEvVg+vYMV/xfEotYMP31CO72Xg+lNlimq3FS2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iekIFb4O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iekIFb4O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA2EEC19425
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 17:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779901953;
	bh=83lduJQ9eAa5BmBuWQMn9JqA2T1JNsiZ7IQrrMruVP8=;
	h=To:Subject:From:Date:From;
	b=iekIFb4O48R7iM7vfYOwNfqozeOQjbpbx0IBu/x3hgoy+EO1ldFtqnjGKa19Y4cX+
	 6UurxFErQQoWuYHnaM7NMEnGytd6S+vWGFEVO8E65bNpgP2r97jufeGXhWsgLHqaef
	 +++oanNV/pp00E69uAsxvBgTC3OCBCgQDdGsxsKi2AqOV0wblcLNrYcrGgjGMHhNLb
	 IPRn5Ru0+eQ5QNuNQMBA4zS103cWagdECOWSKQra+0eD4ihpmZbBT5uEK+SxWsuy2T
	 7fNfu56P3dFdKv9SNhTnd3Uc43vlgzRsZjfjb8mLCF3OFEYUbGYUoi9SW2MJYrAfWD
	 I3k2pMV7n7K1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC208CD4F54
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 17:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177990195368.952.7472095771766295163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87d3f036acad690559f63dd2bc499dc526650e2d0aa9f403f7e04294046795d1
Date: Wed, 27 May 2026 17:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779901953
