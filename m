Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC9CA360737
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 13:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770990894; cv=none; b=c8HaiGDKf+dmFq/9l3yIwLCT5b1Xr09dnBxt037O3YB//OtYeqd/26htYqKO+qBhX3Plmi6nBPNgpj5NHtNJfI/wnbEHbbALPGe2vmTdYGqU3fuplX/xwObwB2VJOihYMyPAUZJi0yMk4YBMIadPGs8FnaA8Y4DTFG66rwlGvNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770990894; c=relaxed/simple;
	bh=w+nlE80NW3G20So9ZGJRQoL/e2CxkMieLIMXwEcoVjg=;
	h=To:Subject:From:Message-Id:Date; b=PaQsuM8SEY8gW8k6vdFbp4QAxUcSlnU+rB9T4vDvVfIKFR0+kf21fPJHBow27DlVVQG8fjERb6bLv/WgVPeScI0NM+Fqba5D9p1lc7UpxXoE11BwLshbJQDQMaCO7W8PaOe94Yhhk52pEbi7jbJdVOW1k11b4kB251HsnR4UZfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fqB7l74R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fqB7l74R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B70E9C116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 13:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770990893;
	bh=w+nlE80NW3G20So9ZGJRQoL/e2CxkMieLIMXwEcoVjg=;
	h=To:Subject:From:Date:From;
	b=fqB7l74RlJd9wWn//fTwh3DV91ftyHgca94KTo0H0I3xs8ZY6HrOkumUD4xKK+qv2
	 CGzDbsVuE+hdT933YdBSKzELT9vd7kEuQKTidi9eT9EICvPZbJef5Pf3f3YMGbsddk
	 p+ii2i4pgvXrGDnfUC079fL1yUux9C7Ky2k5PUNjKCkynCWj6I0Iibr8W/JMq5LB3j
	 hXAHq46YNP0PEIDyNT9w0MYZ79O/oiu7og/hoyCqfL2lem9o0uvBS8Cx2RTmLVMRrc
	 gm099+Cep03rKAgv3NYv4WwfXfrEzFdfBZHqXLE4XxTkVHOB8gihWbwA498tX3Sz7u
	 QzhmWh1eTaDkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A56A6EDF166
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 13:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177099089363.18816.17308098271238384958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a0161d7fba9b1a7674d8e73bce1453344904538a030ab07b27b11cd2e25f3d2
Date: Fri, 13 Feb 2026 13:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770990893
