Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C3F203705
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737534354; cv=none; b=NGK///XP65U4Ubdq0c7PJZyZB7/GkGwkNq4Yx/gltUn3ULjueaq1O3jbIfaOVBeYVe6Mzdftu6wQG+euCpzxzsJQOZ9j0uwdm6GltWt7uWmX+N5fRPqGQLr0ofRiJt03jIscKigAXljMhumjNC0+xcA2zaVBTo0sWDttCI/3kEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737534354; c=relaxed/simple;
	bh=c+i/jPndNE8R6REBrMbKXOweh1olD6MkK6zpjZO6XZ4=;
	h=To:Subject:From:Message-Id:Date; b=MGrXR8X6zDfBdPHlzaJ8pl1SRP/XPJ4d8kh8Vyk2dEerl0RhdFO8EDnxuxebRNdB8ncIGN2jE10gBUS9j3Elx5dAz/zCuUhtIy4DF28NQqiGtYhZene3F/b0Ewdr2UC0HwLiGYc4ipUGNrscm7d9hBHD1dWgKH6DucJa4amm0Z8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bUEfsnaD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bUEfsnaD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A667EC4CED6
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737534353;
	bh=c+i/jPndNE8R6REBrMbKXOweh1olD6MkK6zpjZO6XZ4=;
	h=To:Subject:From:Date:From;
	b=bUEfsnaDeT84wguNidQ+zMu5w47OQt5dkzm32Q2vqffhBAPQQAm7L2sAC+iBx/Q1b
	 d3KW2TU5BIrWFJ0jueL3hw0ql2n1A9kGa/YLbRaYCYQm9XeaPXU6g5nLsVgoftctZd
	 lhtIO0j6TzQmDBJj0Hc1pu8kRH9R/uOE85gPqxw0jT7D8vuUk+WSSfCJD6OSL4Xp3Q
	 hQEW8CIiS9N7Q5cTx+tRmuKl+XfGKC0+NHyTMIIGVKb1RkKu+0f3iS+V0GXFkKb6B0
	 7pY/ovYrKJxfpqhZWvwEVSoBYyh9OEut4GB2zfkKEf7V2u1QMZqJY2ai+w/L6H0w8j
	 zzTdzoNVBHn3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F356C02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173753435357.23679.17681861778723117001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb164767c339fc0419de593b164467d2fb5f90a378bb386806ef41213807889f
Date: Wed, 22 Jan 2025 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737534353
