Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51E5C28689
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727077554; cv=none; b=oGxcWB5cvyb5mLti/tPToL5c1YpIAKIsxUU1aZxVI2JkkzK6T6eq1Ava6vi4D+ySXZH0aPagPPzt1APjOlWEd743nkW+4BsZgxz1JnDXVb/koIqsL/zzjGqF0KZmGHk+Xj2IZwmsHcAr9lj9QRIQHQJWxKmFRw88z1nzd6UulqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727077554; c=relaxed/simple;
	bh=C1xCz7gzDSYxAfG/nYnD0dj+DneagSSsFSZC3gpVEvw=;
	h=To:Subject:From:Message-Id:Date; b=lWovnRqdTNZ87bm8tFtZE27DTNnGr06bjliUSOYEYJmcWgVYgGqav4THuhQ5m4p6vTQ9Fnu8EvUS48+oUoKqeHon7CL5OOl/K28+OOa9DwgJvZ2WvRjPV2e9zNCbgv0u1z8ps2FVdxLLhJuRyoURwbbwP60PC8SprvkM0PKwAHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qbAMM4rm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qbAMM4rm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDCEDC4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727077553;
	bh=C1xCz7gzDSYxAfG/nYnD0dj+DneagSSsFSZC3gpVEvw=;
	h=To:Subject:From:Date:From;
	b=qbAMM4rmEWHBzf1w2x5c+QVL7wyAWih2MnEb6YrGBi6xyHWqaffwHiDB8DHvVRMvE
	 JxDvZbdurp3/+k/JLAk0v0HKVEYJkyl9FHudem6KwDQRev0YXLe2JsL0ZWwcKj0v6d
	 sOHyJWr1KjbAG3F9Dqp2sp4/A4CosGMxnT+TmSF23plf8X45KYaoHKWQ0TZH1YCR+M
	 VC8jbCjCZHIFPiftKrddxUi/ZUlKEhxKkEy0gK0RvculfqQ6JNciUkJNUMRAdLAXqz
	 9Ru33qudjlJV/E63/0cOaLegMp9igqlums/fmZ4bxjrkfJVF/YXLChAhSXmegePUJA
	 RfNN/IQyVaG/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3708CF9C5B
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172707755363.13370.14321927527485573208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fed7914cb7a7c181ddb672b2195c00d290eb0cde3adce9544a2112677313586
Date: Mon, 23 Sep 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727077553
