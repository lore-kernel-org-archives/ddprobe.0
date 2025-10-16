Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11ABD2580FF
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760647794; cv=none; b=a/2upbS5OEkGcJtEAr2qYWB7nS76QLG5CVUdNCZ2m2tlastD+vcEVF+HROd/CxMqjOCMt7a8AHq68gaBmG8bdmT+rqQYhVuwEJx9KSwTFNGNQTFUdJwPxRPJCdw46cvJHgIDjWqAfM/vl0kpHzbif+8AmVCyPmLsFwIMQaMuu0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760647794; c=relaxed/simple;
	bh=EzqFdq76cMN2Svxq+qAwXyQiHHSA1ZE3uC9b1zKTDpo=;
	h=To:Subject:From:Message-Id:Date; b=GzD3vtXTTjVsUNSYtU2uyKMwIE844PiIJEbLKO/B8dktSl7G4tPH5D6tNGyxoIlj661r6Mh9U2GbLK3XErFYWzQTOZK8c8YNvGpKwOOAca/cHq3LFDNEBttK7xH/Zj2FVeg4b1lS+q98dyjlFcJMTtlkFUcGcU+2ZLGJOaGznM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s38RECkF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s38RECkF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDA6C4CEF9
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760647793;
	bh=EzqFdq76cMN2Svxq+qAwXyQiHHSA1ZE3uC9b1zKTDpo=;
	h=To:Subject:From:Date:From;
	b=s38RECkFdvBvU6HBVJxwvou93lxZsfzge+8m7F2Zpx78V/r2l6dBlgbYxwTjpleB1
	 7k2qLi4DIABE4kBdXiHv0VjZJjgcTJE7eNRQzlc188NheFAqhP3i4E1+KdMINbdStz
	 P5VTzcO1HqJJpyceFfxp8/e5Zv0ZgHxLrqNrK+0+VrWu9pnxfQ7Jp4+Sfk2lh5njgL
	 imnvnbhmFo/g3vUbGFaMjHTRAs+tPUazDHVwssMkAOLBF/eyc/wAeyliqkFGrGItGu
	 bHjXXaFNkv/qLXMpZo+ZlM4Gq3LfTsYf+kz/mbP6wBH/pOwaWzLsa+Si5SkgFuJnIa
	 KGpEg0tPxc2Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE15CCD199
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176064779357.26353.5687408790534661400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 209c9df8167641c1c3e41a7fc35f5a45648d2142d546536dbc9cd9470953e0ae
Date: Thu, 16 Oct 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760647793
