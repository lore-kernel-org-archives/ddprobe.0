Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2470C1A2392
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762244994; cv=none; b=jXm8uERs01x3X914N+tnhWCmEPUedrtuiQIHsqV4D0uil2XBdNKBNsrNbe0Oo+8ohbEs+aQ1jjds9NXr6LbbJUyIlAir2zV8sHWKkvoqJb18cK9m1KYNkQVKwxd4QwtSKWj5+MfSII0LhlU3pgdsAL3HJRzgAo17S5GYYt53xFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762244994; c=relaxed/simple;
	bh=sYXLhtheKm9D1llf+tIqMwHGXCTaImysveY7yuJXJQk=;
	h=To:Subject:From:Message-Id:Date; b=C0kN7hB0IHENkmIG7tzEFPK3I3X8VvySC8D3QCdxHrj33xc5ee5uAYst4pGpm+DaF3wgj8QEzDhyZ1OMuj8DN5LHrrGMvYjTnPbH24wEd8e0qQrr7zsTxjCIe+PWvWZ1J8SRq/TX9Wd1Z67k/+4pZDAJyG6UKncpOUFtiqBoUwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IOr/lsJ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IOr/lsJ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0930C4CEF8
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762244993;
	bh=sYXLhtheKm9D1llf+tIqMwHGXCTaImysveY7yuJXJQk=;
	h=To:Subject:From:Date:From;
	b=IOr/lsJ4bKktv8uV7tYelv4I0LL7M6oeMihhg1cYkhLu4kyJTDij3oj/hEkFODD/p
	 e2Sp0LTVaTP0XLPjako6Pq4R18VH8idGvuC1e26XZqlWooBZZYJdme2nxHA1HBz6ok
	 J2Jei9nVbUaA0+GgUMVPvWYrdZIwOmpjW+02Pr40ib6HjHHIc0ufLj624aAlKwIQi7
	 ve/a1R+JbjbeFNoGNpsSz97b1SzbNfb46B5X3IRYg8ZQO7fIGw2xOh+EmIWlej3zH9
	 hdrOdF76WL+MK6Z4wQ60ODFh18zDObJC7yWZJsdGP/mC2bbXGi3LDUmdhCJVOM883E
	 LyoNSWl9z9BfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91529CCF9E3
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176224499358.11439.4956897155064809773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 688622ae1d4bfa6b095a4ae9e5eee426f5dd3a97f73fbd709b11c26f3f62d8e2
Date: Tue, 04 Nov 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762244993
