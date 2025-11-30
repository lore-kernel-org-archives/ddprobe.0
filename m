Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BAF614AD0D
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 02:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764470574; cv=none; b=FgqWyp+ZoCTzWel8Azm+BD+GDMNtuBCNplzyjnzsFF6CRTskqAF2LwxBitXOs3uUaEzcfw+JSZwIX/SH8jcPq/nmrQNg3eCp8KZMBhAA9LfWg/Gj3U/d7k826zcKXBNlT3GyVgkyzm64uzkY9bpUY8Si/gZSrW7zD/H03UAktXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764470574; c=relaxed/simple;
	bh=DI6+2XLhpRDpxG4HcmhwbGZ6LT+m1+KJX06oeKF1FQ8=;
	h=To:Subject:From:Message-Id:Date; b=SfAG7onhpsVGgFWvdM2fCAxhaCwl9JPZutQAbC93akgH7itaO7hH5SoV7UZaSLE5Tw3s1zP38GKMiud4kEGrVS7HrKIae1GVpjgmHuhQPcVo3kWhBQX9OsteVhFyM+wfEIwiaHD2w2EKdEJ3xTZx9Sl/hub7sJVs+acL8HY83Nc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GKR0c1vB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GKR0c1vB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF8BC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 02:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764470573;
	bh=DI6+2XLhpRDpxG4HcmhwbGZ6LT+m1+KJX06oeKF1FQ8=;
	h=To:Subject:From:Date:From;
	b=GKR0c1vBZu/UTF9gg3V9WKNSxOn/DfPIVnYntpy5wrImdYLCqTAgQz7ms5RhppHp9
	 j+9SHqRNpje/6m9DWkA1x6BXJiGJgvdpIHCPnI+XMiZIiwYLgj/CSgI4/bQXsraEJo
	 YNGCCvVe9dInvIcodktOln1qQeK7w45t/ACq7Znhq9bnrZ4v7x0MR4/r1PeuaMc2Br
	 rliHD9tyUKdyqwBLEojuaE/iNlcWZt8NjaM9RBJoZkSCu/PjyCSBSqP9N8cta+x7MS
	 ouQ8CXy8834FM4FUdBXdrBVN/JPEce+gSnwcEcVWgn+Yy4eKvOxKxSXRd3bK9pRMNA
	 awsjvE8+vyGdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96EE4CFD2F6
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 02:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176447057358.3982.12750164279456949508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89dc863fa54ff71a26e02e5fd3163dd5d8a1c77023f04a16d7cef2a2ee597f5e
Date: Sun, 30 Nov 2025 02:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764470573
