Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47D442853FD
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788772834; cv=none; b=QXxy4fUfclR6I43m45T+qMI1FccgFXkLpH1qSlQrJQdjfRqGAIQOOfzDag40E2VYSvUjboGWtAXqhB1hSe8ELocMDeD3aaSvWexleS743i69E68EVrkIgh1XSkIEhEX261gJ2skMku0Bsns6I7azUpSlFy6+xhETMHgoGpGseLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788772834; c=relaxed/simple;
	bh=0EzirNB1YY60xmB1aAHNGjXr0ILNAZ7IZ12nJBW09pc=;
	h=To:Subject:From:Message-Id:Date; b=JAZQS5MCAjdyJj74+oZQDnUdenMKKXYeEAKSVWfpZhc0UUHCyc3v0Owxa+8t3Mf0l6PdgN8bj9z1zG+ZIrrAycFoTZzd30ROF10dB3HXpVzjlZINNnTl02m0gb9laeiLf4D+jO5EDjAaLqwlJqDSjeEayTz1be+20rDHgK3tgLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NXEi6zVF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NXEi6zVF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C620FC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788772833;
	bh=0EzirNB1YY60xmB1aAHNGjXr0ILNAZ7IZ12nJBW09pc=;
	h=To:Subject:From:Date:From;
	b=NXEi6zVFXV3w354d0KFSU/tDxzRKsKrGNWFGRlK3O5gu7mIHdk8bVHuTPSOhacn/v
	 aRzpLObbi3ZI90RIzcsisJnJVU13wcv6NgmDY6cBmM1/w3vYlgTLhbxlUGgiJ40S+8
	 LoQPLFCIrfElSkv58VvWxVi6f895MEoQDNrdcrzHVntpB7GF+oT6Hmsam46+/nudrn
	 CeG+5iLgGjiIPT5Przd9dZ0zxG6TknR5ndT/DJtTOUKWiZZbBBhoA9oS93He/ZKWza
	 J5XS06WlF21y6QRKW5gFmZSls0rcahJScFlw1EjHs+Ohug/z9ZJjsxn2bicK0Qs87s
	 sPxuWn3PbYYtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB69C79F9F
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178877283369.20610.8377478702834698529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca0934adb0c28d3883bf97eadcc2b25655d5ebd146b2608625858e9e10312fb3
Date: Mon, 07 Sep 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788772833
