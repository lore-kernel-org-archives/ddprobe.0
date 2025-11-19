Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F11D36E545
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 16:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763568114; cv=none; b=t90OwDOpm1AHsqT9aSZCwazsrNqOQXE745MwosejRGWwI+4k8Y/ASBLHRhw1/K4G5mwcU/HeIYQ1gG1xm1EgcL4IOrdAnHpPRy2dbx0ZdSYySDX0w8ph6pVj0PUVzE2K+tYmY223Odkh9VBMdTcPuzABYEtlBVYHXppwTjjfnJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763568114; c=relaxed/simple;
	bh=LYeySoREJSfiIMZG2qDGvtcEjSKMstmaKe6KCaBJIjw=;
	h=To:Subject:From:Message-Id:Date; b=uf1hxz+8fBklz2qlaakDJkXbbZGSirq1btPc7nBQs7DeDak1VYyWDBURRNna9uA8AsvFD5izg0wIKu3iozDVibrOC3zeHXJsmUZzlIkfoeTq4pcjQHhOwp5yvEhO9hClonYLcDcLAtMM765Eau1meyBc4YbwQOpK/0OEo0PBeX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bswcFUTE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bswcFUTE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FF9C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 16:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763568113;
	bh=LYeySoREJSfiIMZG2qDGvtcEjSKMstmaKe6KCaBJIjw=;
	h=To:Subject:From:Date:From;
	b=bswcFUTE/oKFR6Gjp2QptE9pQGPlwYQvz/1O+Fj7r1ziOSAg8KAXpTb+xBV1mPdIT
	 yKKVFQcdz8p9zcGhQ+Klwq+DVQ61GSbetI3Dws815T1SFbSnC3m1j3McxwsH4mn95e
	 jogC1q40vZ8Njmnc80ESA3yFIk5iT6BAXjILHIXxLcNXOqffv/+7KaGjgvOHfnxuIp
	 i9soxbKjY9OdnEqaGTJiYPhvGa4SeqDqq+5zWKOIGLIzqxzyOu88X/nhCiC0sNaK1A
	 HpAC8MRYGrrwTJeO81utRljo/XiIR+tiuMpSwpuyMSXMQ/vdEBYF8NnnMd+2caK0D5
	 aS9wvxyYnCsaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94115CF3943
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 16:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176356811359.9391.10079985206644952820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b11ed7bab6ba1726567fc9651561ea8a673613de9eb5cee440d8f3dae0ebf84a
Date: Wed, 19 Nov 2025 16:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763568113
