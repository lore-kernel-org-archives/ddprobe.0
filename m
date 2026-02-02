Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16AF73370F4
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 22:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770070435; cv=none; b=aXheVN6ZemzALXFr3nJtTnEUc7vJ7o/l6hqq5nJEatdw8FXJjhYxLoDP+GcXuUDtnLSpt6Jyl65c28w014JPkfQM58FuUqYaxupnisp2WyJ6/bSnuzxPJUnnX1avApAJ1MauyRppdXAYO2w9H97nVY4B5syIEDB7YgbOHTY69+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770070435; c=relaxed/simple;
	bh=VcRj6omj22HxlWziuVUqz651tEfonXRLxK+z/qXgdMo=;
	h=To:Subject:From:Message-Id:Date; b=YYD0nzFxIp9Lo6hUCV8z5420k8AzyhwCcO24d2yTtlZLc664iZw6NuC6U/fXfW5EkIkJcmbCGIGHD8BX4/BQNfaQnwxFwThmCMRkv2HqVQ0qpgVLt5SZQypVbBK8dfBgL85v4Kw7Qxj+aV+0M8jUXLn6u3ZI/t8ELiIZXcTKKbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=shgk0okk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="shgk0okk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0E30EC116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 22:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770070434;
	bh=VcRj6omj22HxlWziuVUqz651tEfonXRLxK+z/qXgdMo=;
	h=To:Subject:From:Date:From;
	b=shgk0okkguKpCevl0UPAg8UtoWzSbxnFbOeSH/MTlN6mEb6wklJt2vTwnN3fF6xDQ
	 ZjSAlI5IdKkAiAtBjLSxAnlxs3MYdNcPiYpqZeLjnWzmsVN4RY3YzMLTBekD7NjqEl
	 Vbf6KadzipQMIiZPXMOiQ8et61ksqy20NUvgYgPRMMdtISKSGnxrYAbh9DUC72RFNz
	 6l3BCb39fP9x823F2kM60o/qnlsk4jNp0MaV/L73wGKV7ISJbCVfje/fzw3FhM9HLj
	 vA0Zl3Vs5cT+bu9NWm+K18LDMoN0NLy0OzpGbjk2y7vo9P7FPhBzVFWliVkDAnt6aP
	 eMD8adoLZos2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E15E7FDF3
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 22:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177007043368.20108.2867711572164817452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b347e7030a55264c1edf8033753b2b70bf7c442beef797f9db2810c5cfe75b2
Date: Mon, 02 Feb 2026 22:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770070433
