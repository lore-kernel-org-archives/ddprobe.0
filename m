Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F4C2347532
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790912434; cv=none; b=Enb/P5z0rM/szXCk15WlhavaI9bG5YipEle0qEBO/Nj5128/LNqj8LAlL9hVaxOiL+Oga/sNq/z9KpPZ9mBkULXVmw/zvI8QfaIavG68sDGzs2GIFAv50uOQF+1VS/5GdNfae9/RuYZ9t6cypnW2g0GhKiKGAgROFNVDmBEQe34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790912434; c=relaxed/simple;
	bh=lA3ZpWVUC0Nr0/bHU1AxmVk9ojWHDC129xt5yh0gFm4=;
	h=To:Subject:From:Message-Id:Date; b=QCZH5SHfMjNzRmhVjMCpYvroKwaRnU+THRovPeFG2dkjhIfIwnNJEyLy9GXMUxcbv2/j45mCvR6+kxYj/3hoxlb6LfOaTRi6xTfG+/9Ae74wti+sc0fiyssMx1YAO1nTyortVsXl7K6TkDB2Fg0TUlK8MquEgSYFwIPbwD4y4H0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NBll5bzT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NBll5bzT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAF12C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790912433;
	bh=lA3ZpWVUC0Nr0/bHU1AxmVk9ojWHDC129xt5yh0gFm4=;
	h=To:Subject:From:Date:From;
	b=NBll5bzTSFvsgGiXEMfIHW0984NYLHgaLxFR9nGGrvF0W/kYyzi9/G4GLaU1dYsvp
	 hEK5Ujl3Ws/7EeXjAnnp0wgRTP4cUfg6AOZSYVKJJHwYjK2SJZhi4hR/j/lvdM8Ryz
	 hO5TU7uvi0ZWk54e+RHQcBuQGl+/OjMT+Acan2F0xYMq4PLLXwT/tgY/5YD9eyEtqG
	 5YJpEdqdFbVwohmk4w/ntA3AvDl/iF1dwHY9rQ2am26nO/Y+omNehf/z3jHdLFcg4H
	 QOASCSCPZwX936h28ag9nJioQfsY3Ti6XhP7RcuwxE0jGWPW1cbCheZBBOIMiKMj9F
	 572pz+aHD8wQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2738CA5FD6
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179091243371.9797.8197395932653536164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64cd6d92fe1a8ee747e1c6d87992c9052f5233717e043cb13b1dbe1b4000f0b6
Date: Fri, 02 Oct 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790912433
