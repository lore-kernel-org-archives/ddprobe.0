Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCBE5EED8
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 09:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772961293; cv=none; b=rxsnAqesVzl9/u7IgNt+eM7LwcMh2UdqbPUXa6rBXLhxT/Bk9YnUR8CxjE1x5MB+SobJ8J8oUtm8r9qHpxWODgFRSR/Hjik9jVYHOunMWaMa3C3q+SfJb8c9dthIY8nhdQ7ADuWw/K5yuNfllux+CzFpNGZeFJ+UXPD7ECtXHuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772961293; c=relaxed/simple;
	bh=qhm3U2fwDl6g/2Rx1vnisG/jYYWLfQBDKaW3Q7nFtOI=;
	h=To:Subject:From:Message-Id:Date; b=Leh7imauUYFFV+ry+D3yQiFs+5wpJ5sXRyyF9803vkdt9ALS+CCNWRAmyqNC/Zh1ApKDjjxpqSFDn7L4jRiujpLsI4/JWTDpLykGIX49cCC4wAdKJeRzlsXOizM1iDiucpbA+A2b/w3rcsKPi5cg4g+HHfAdyAY2Nrj9/ZpPheU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BBP47fAn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BBP47fAn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B025BC116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 09:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772961293;
	bh=qhm3U2fwDl6g/2Rx1vnisG/jYYWLfQBDKaW3Q7nFtOI=;
	h=To:Subject:From:Date:From;
	b=BBP47fAnTQ5FODl/nYY/HMM5iI778keeqlN+RRGhZXkxORp7bkWlGlQR7qIEmrKHc
	 +Ofm/YGy6U7uNinL26vNq3JSgbd50kYTVght/2HthowTWPpllBdHGEP2Y4kqOmxdHh
	 UqBSbjUCAL/JBtY5f9g6ZsDOgkTP/Pi18n73v1qVJn9pFmxliiuUpoqXDbIwvJc7+T
	 w4kZktvy8dpgRb98GDdWEDyTBR72kXZxpGMUcIM52UDqn5zINtv6LFYrHEpI9Y/x7C
	 qAnDeTq3CRy1UySbkZjPoaNZARrUg+u9cBHId/v++KuiSA5tKFiuwzRf74oNkLHQwX
	 RGv8h2M5sav8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E91F55138
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 09:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177296129358.23132.9571751257643796426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ff62992f8ed41a491da00be47121ca234a5acda1dcb9f2feb6c75fae29beb32
Date: Sun, 08 Mar 2026 09:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772961293
