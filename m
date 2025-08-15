Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38FA41B960
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755218394; cv=none; b=WX1qaNKy2lJPXfvH1yQoamI2gKu8Ugh6rN9lNz3GBQVA0eLTzbFpNHYUKXlK642TVAWeekQbppwWsFwMsnz3HtIDdYIUQvQIhdTq0VsnrScFjKydoNWvtbYr1hCZAgOO9llJhJJx8HapVlTkKgUeCrK5jM2EtgnA+GimMBGJnh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755218394; c=relaxed/simple;
	bh=WKSGLz9oM64qcX34ULDnCZj1httXcxvSHqBwKWtj/b8=;
	h=To:Subject:From:Message-Id:Date; b=En5YnPM2iKs62H3GSSI8bTMxEFQt3yNO1AP3km//hqi6FAJF4IXLswE6IXwvINlUwrO/6tVFB2yY8e+L90oQfYM9RXxjGt7waVicQEJieXVPkFmS4qG56H+a6jlOz+5VqRcSEcSXLIVfdz1MO42jK9TTsvd4pd5kLhgJK0GAwCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=deNi7ATN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="deNi7ATN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47AFC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755218393;
	bh=WKSGLz9oM64qcX34ULDnCZj1httXcxvSHqBwKWtj/b8=;
	h=To:Subject:From:Date:From;
	b=deNi7ATNNmDdq9I0awYKi28aLhXmG5a2WxV0lyrSCBXLeXiX728B9IAGzk/LOvwCF
	 5KBAVjh4KHtnSE62YFkJWc4yo/2DaUbZCxgcuHDf5pXfz3IKCmx1Cx+F2cMkRGO3kB
	 pGLBUxAS5QFUGgHVN2mHRLUjjHi5IKl9UBhBc1A3CGSARG6kWbZGsSu8iADhiMt1sR
	 R+rJ3qFiO/NoBCk8SbOn1XvPl58Zi4QyE/VkJMQ2alXMtfGjbtPDmDnQJuv2ZSb2ve
	 iB211jInYYx+ZYhNq4ovgohZrMOUD1B6mQ8sK84eeTlJ9aoB5SXLC8+/BlXdYR7uC2
	 Fr51MldPyBnzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9219ACA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175521839357.18878.10270544033679315691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1980b27caf92b39cb1599039472bca47f5bf0e72d0c5415b63808cd4d3d86a4
Date: Fri, 15 Aug 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755218393
