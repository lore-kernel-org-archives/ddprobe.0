Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 173DF22B8AB
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 22:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766441634; cv=none; b=SpylXDNkiCUyhaGq+It3rtTdKDqYvJPbGW1INVLltqZ69uEgVgpf3pkwnP2zI1up0nQvpJThfGtef5ZiqVJLgWTkzqPNdR7AiCBAU+GaTyGWOQJXzIZkURMSot2iRUuTFjca0iGgF4Bgc/7NBA/+x4S8csYczK/EC/e7M1RHOKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766441634; c=relaxed/simple;
	bh=ihp6qNuyz0TksB4ogF4fEjZxZ8ex63iSbrtuC7le7r8=;
	h=To:Subject:From:Message-Id:Date; b=lUnAE30pwQiuv5WDMN1QGGJLtwCpV1EMgg1NvMr8DQ79Neq/rzrqk/F3+EeNsKYlN1wcAbUH4R1D9OX2GCd/aDz0xTmBrkoBSU+8uJSKT6h6KyUkLP/UFNIGXNE8j73nykAZfNwwFXu6b3mhL3eFLQGJLAQqfjDe6xmGGcOGybU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NZjB4SSp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NZjB4SSp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA6BC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 22:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766441633;
	bh=ihp6qNuyz0TksB4ogF4fEjZxZ8ex63iSbrtuC7le7r8=;
	h=To:Subject:From:Date:From;
	b=NZjB4SSp/dU6mPHa6L4zvwTGJJYuI1O7vUI/tetEXThvA2KwDhyCkcdASEDILhNgc
	 4tMzWsx5XnXUfSDeivbe+RLg1bdMkPLNKg8QV9SdYisRf4LtZ6dWamjbo+3o/9GY5D
	 LNvqZYE6LUWOjSACm85U3xvF05rDqhvylkHevAuS8DsBIlFFj7Lr7U9jmp4esld+Os
	 n39n8UCAZk3ms4rB5BltoF1FFlbV2vWnURxsJwPUWpQdy6uCvsc963uYLS/SksreER
	 HGCmR+gwiOmn+2Z4lxsN5KvzhCxEi70+cgAA/Fts7a5dEhz0ptfym5OW/orFcO0Ej0
	 EjCkcr66FFrtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924E2E6B257
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 22:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176644163359.13879.18445776161988938415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46ebd9ea94ac24ae350c821271d12c8cdf466971511f3c6679139b9c6477334c
Date: Mon, 22 Dec 2025 22:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766441633
