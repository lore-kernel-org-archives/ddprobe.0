Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6AD2FF65F
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 18:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780250674; cv=none; b=kebSO80jxOlTXJiLnb3GwuUtPaZLDUfGshuXyASPxhjLHnifRL6WHFVr7XGSDq5N0CfPGAt1Knr08vqJHvqgum9jXyAaWKDRXtC0YfI281W4MMl8FkaZiPM3fjjxOdoXR+1d+/ygf6+6OCC0ITZFUNox3yP+VK+Ljvq6lRVepuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780250674; c=relaxed/simple;
	bh=wHGx81NuO4AqZ9bl34tG+qXgZDB2SG1uP9+4fBEfbj0=;
	h=To:Subject:From:Message-Id:Date; b=jncHfW+rYmNHM6GdF9B+iUXAMGF9EFuIS6jaby0bvlx9i34G5UX+ONSb0Grua3uxKeQAj29Dw8bRuL2GN8MwTT5u3enJ9N60FObymr6LhP4299gtSjW+Gsue2Rp9k1x40Eil3Q3K6bkDhPGTu+qTI9bOx/IXfgN6KrwK0QmY3eE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uk78H77w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uk78H77w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8DEFC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 18:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780250673;
	bh=wHGx81NuO4AqZ9bl34tG+qXgZDB2SG1uP9+4fBEfbj0=;
	h=To:Subject:From:Date:From;
	b=uk78H77wBzccR+ZrwR8+DtARyQpB13r1fILhzt4K/ZwKo8HY9fLeX49Rm5KxR2cbT
	 KNrcD9wjBoPPnG9LesWShyowdQwvYYkXiAoR1GTJJGFU0tb5gqLkHJlbwysbq4WSZO
	 Ep6AaQFwq630Jetk/AXNxXGa6WZJVGXuKDVHVnvlhdDE9Rx9sfjT2Brnzmoo0pA9Ls
	 Ku6kcUDNdamJMg9doRxZk+CXqcDtFccRE8Y7//oJmdU5G5jmUR0LSY96Zf3fUPh6Ns
	 764CoCpodE2UrIFEtaPw2eXcbJOCyXk4MTb8/fC5l+tXbZWozQS0bCXd3U3onvgoi1
	 QBVIDmKcUtWKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC84CD6E52
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 18:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178025067368.5176.5027858140931412784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75bbb526c3429366ac02150e45ec50cf786e49efd2591938e07371b935d7ace9
Date: Sun, 31 May 2026 18:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780250673
