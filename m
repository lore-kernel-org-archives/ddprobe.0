Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C689921D3F6
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 13:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766669033; cv=none; b=rO0lFwY5DGYzuZGhP9rkQu2ktOJIxedXDK6rEjDnXYZZxpPSqxfxdxIA2B+OciyZ+eYZhec/+/RJUnadPGNoafSLCd1KqCQfRtAsQMvxizWPvi6Nk8tKAODYlIiibjNTGifARuge4iFAyK1SLdMhUQiRQG66+mbP3OYYmSHeTMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766669033; c=relaxed/simple;
	bh=yeoxqOjHlFcykrgx+ujlrs933eZCNzvQRo5lOWiL6a4=;
	h=To:Subject:From:Message-Id:Date; b=sTzg6qYwjrIsFU2ZpOS7ZKGiHM7PYUEsTbVvqFJl0x//HpI4O0wbOYyqM7nnmClgXyGHZt7jGweqAzX/TsbKGqLoXkBDHvZ4NpB8YuS6e2q47yrxiwcxbEjVwAU80+vt5pa34NWBOdnzK/EU8xx0wclZ7+Pf/94oFd5UHDw7+RI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T+p28CTE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T+p28CTE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33EFC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 13:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766669033;
	bh=yeoxqOjHlFcykrgx+ujlrs933eZCNzvQRo5lOWiL6a4=;
	h=To:Subject:From:Date:From;
	b=T+p28CTEbsqX9XPph37zoeTjEeZgAtsjleWggMCCkAANlvwkNCQ0ZuM+xeFqVrikK
	 /MiP+1f+XQtp/Z5twJVzPPiE49id9HNZecrcY0jy2kXJ8sE4d8GENdKNx5ortPKEME
	 ba0gALpGmNULVDkpqmEE8DEuNWOZEIIpsAsuSCWl9w7G/3R686d0PMW0JzhffS/hgh
	 /bXLvPwjOPyYy1Ohxd5E36A0i7XxkREYfj9JXUktvsbJwSb/xpXzIvbZ5QHO/QK0ba
	 O2Lz16jtpCtCVtl2khf9P4dv72kvLSx/dmaCL3voKZgl07mqdNW6/gJ3niWmd4eSVP
	 tZKI3/e0hPVKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9261CE7AD52
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 13:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176666903358.21092.5420889769686862684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fecb8ed00b82d18c69a44fda5a8cccf5913239014930648b9ae64d8e37d5250
Date: Thu, 25 Dec 2025 13:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766669033
