Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13B6F54774
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 17:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764695574; cv=none; b=VLFAJhxv2njAxYzxwE5B1PgpZ7k/4AcEINi4nH6q8ncgEFwrZDKXn7ttJcHa2qeA8/01/pnacCtgwVLFkujeakuY0uH9+fk7cXA0CYwdpUEPyxnqbHR5uK8vlA0i/Xz6GH1hfUh1jKK15JkP+Em3ow+qaPMUlZ0L+CGtZV7gpQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764695574; c=relaxed/simple;
	bh=vCbBreBLRAL74fFwOuJuwTvRAm4Vmrhj/TdOI2sEdkI=;
	h=To:Subject:From:Message-Id:Date; b=q1HXXIXW5P72fy4LMwrUNlWQS0ip9m+eRUPl5P/2WmdWDTXNgwNVT4nf9ACisSWXyT1umCKiYB9utLDVPeFX8Jhn/12aXdFPY4BQuVW2W0+xrIkbdCq8dXYwN7Nx8knXrpYmvbV19tfJ91/P/8RRyaoF1gtqLHgXk6fPm8yCpWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K1r1hxgF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K1r1hxgF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5757C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 17:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764695573;
	bh=vCbBreBLRAL74fFwOuJuwTvRAm4Vmrhj/TdOI2sEdkI=;
	h=To:Subject:From:Date:From;
	b=K1r1hxgFzmcKVlZ10iTVwwYR/cYeK+uLYxJSGHJWexIic7AAW9cyeEQDGTVDnvEKp
	 lLi3rIWiTy6I3gITr0asLKxzR3qARKquLvTGxfvsjh5MBJTRkMTQf9xKkU6mH7P5FE
	 mdhAlsRKVl4JAOxO6LkGiAITC1Rsy43+JPzDKKGftli35RfeR/VFLpq+8TvELO1t00
	 2CFUgdWp5qimHqS+MkUsxTLxRTLT+BJMLPFzcXrst0f4pkDvhr3EugpH1fX0O1F5OB
	 wCfnX88IDAzDgqEY/ANrW4jEGhTDzMS2hMFLh5jK8DpVQCffUXRWHVJ7YvyURNgttp
	 90K/u684GX8QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930DDD1171B
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 17:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176469557359.9142.2951907666033843939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f4312f711f09699322365f8cbdda37cda6e0603d5fc1e9301ff72670622cfac
Date: Tue, 02 Dec 2025 17:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764695573
