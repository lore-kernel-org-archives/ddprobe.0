Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F04C24C069
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 19:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741116535; cv=none; b=O44UoX5GlEemyBC46XTNy8wrejQiY6XC24IIea7uznaA6jubNd58ZPDfL7KoyXudI4Z3UGGGLbGo6QSISUra3+ei6ue1IeJN993uD6jkm3WRcJ/vFItCl+mCSqrotnIam5UUDXW7YvJm04g9/uGiUGvQeqxUyJmEdxU/VcyRkv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741116535; c=relaxed/simple;
	bh=8B5FHSWNGjveOpKnRuaXDTzoslvJOzHcOlW0kPnfZBA=;
	h=To:Subject:From:Message-Id:Date; b=J0b97A2wDXk2eeQCoEJAU97bllE+teXSon/rs95SLYGR5KlCZkZJgmAEQdXMgVFRIwuNw6ymDPYrwrhcI+tk+C+fSj5MS/jNXtMYsB26lGbaEoWcXQXglASCCZK3NzvTWrZDqbf/jFy8G2tzkOYe1268JdQxjCcosQHvpj3pfFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fuYccxEK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fuYccxEK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC49BC4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 19:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741116533;
	bh=8B5FHSWNGjveOpKnRuaXDTzoslvJOzHcOlW0kPnfZBA=;
	h=To:Subject:From:Date:From;
	b=fuYccxEKwITItOvd21XoJ/pYrKit+j17M1xnlz1tavLTEOHJ2UO4h1YyxyWHD56ES
	 VhjP1pLKMMb4ZpI9eN1fAij2ZA1R3W7gzIOF6c5Z2qYYQbGCg4I9stlkxC8Jpje9g4
	 7pq2MFKQfT6bC6/p5QaB+VnucWMKnbMSyGznCgIXCm0QQeetcmcpATV+RSuxAoe4c2
	 KEczbXisE+FbbFMmduEZwq/qe7opoLmeRxrhfxM3T8TfLsehrjDQ2wGryH+oL7JKG4
	 Mw/Hf01S0SjdjIGc3v5VJo8uUwtwecKvNseHiquma29/C2p977iXanIkeNK6DcRuQ/
	 htnBl6ngTZgoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A65AC021B8
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 19:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174111653362.25279.17591412004417877245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f414939eac95381b237d40ac9df672e4d679c0197024468831779393ca368bf7
Date: Tue, 04 Mar 2025 19:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741116533
