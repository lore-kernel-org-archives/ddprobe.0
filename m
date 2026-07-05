Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31A5C3587DE
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 15:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783265314; cv=none; b=TqCSx3DgXY3YQ0KjVYTJM9mzfMkEJpt7NV3Tn5gph35gsk58EZttUr92TkBwb8edJ6DVvQD4SpPQc7VG8KhclYcVD4ckpUnAfRKvfwcDvwDQXe9K1BkVmxRmQ8BQpxebluRQ+Y/9m+4SS7shd5NyPuPKaSz30dOv2eOqHV7/WPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783265314; c=relaxed/simple;
	bh=BV8nECiH/0CE/WIHOxM18ie10hAG5kiYkzMMEb2pTB0=;
	h=To:Subject:From:Message-Id:Date; b=Ni//nSYimgpIkI/Ug3fzUXo79lRjdcZDVmlR9/wFPESEK+/bCaAe0JQMk3Rvc3mmnpT1IUWxHziAIYQuj8zZqB58EPtISJbKI+WyM1Cb/Nf+7sXRblxwBahIHHA71iAFV35A8yB/Ya3Zv0BBtOr7AFDeJ/9pTKS5nEpDX49sX68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fgGarKQp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fgGarKQp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAA6BC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 15:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783265313;
	bh=BV8nECiH/0CE/WIHOxM18ie10hAG5kiYkzMMEb2pTB0=;
	h=To:Subject:From:Date:From;
	b=fgGarKQpJ67jo9WXMXb5M4/fpbu+pO6XDijUh3QlZ0D/JSJ26V4/ZuAUBod5GiiZa
	 EMIEW1mEHxyTcPwVaJN9IaS4UTVzxueVEK6Nnnbsk8n8sq9WlMU+io6GrriOZRDW13
	 geRZvtBePXVb6Ql4Ct96AaNjhvkSj8jhBQl9EnnsqV9pbBiVu5O44LyLAK+E5baQ+x
	 kxxp7wfCbQeQSS8xJbiJXgatIvzrwrLDwiXTblMZ1zcaIhmbQ2hnqe3OLJSgA8wCyj
	 gZCXv+NM/OM02zvLQWqe6UL/n8SG5P8BtKvSXo81nESIZBP6sxeiTm6xUHippHON59
	 VYYVeMVipkPWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8593C43602
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 15:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178326531368.1392.12772154282080022439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e25a5318347caf09f1eb1fd703b2a7d16456e9f7108f653ef67b7e05c22b6774
Date: Sun, 05 Jul 2026 15:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783265313
