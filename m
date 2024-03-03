Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09B4A8F56
	for <ddprobe@lists.linux.dev>; Sun,  3 Mar 2024 07:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709452097; cv=none; b=PHtqGxYQl2kCoGRBD2jdLjfrUHZSV5nalBV2ZG7QX29MPGhAKkgABhx6F+F4naClq8AYK/HAhy6mgIP7FJf/0pcAN6rH6I5RMmTgb6dUq/kgsdq6fgRT+46EkcqkQkxuj0sjAkm9pJuVezBG+HRldyvJYSYOuVNacNDNk3jqDsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709452097; c=relaxed/simple;
	bh=o49palnOAYbXc8BtXhaDvNuimkjn9WUCrjnme0yMwEw=;
	h=To:Subject:From:Message-Id:Date; b=By9LTjOO8Wsd6xjHs/6O6YTNB/entlygcUl8zI8Ovg1wuYPTBot3/ClwzwzLRvhttsnFavTIZ1rGW3o2NkYiHOJEKFBqRqb6GpTuhhADCjmMUf5PDGqhq1C6HP1LFHD6HRdKQs6G3Es2YdviR/KD8cCBjVpF6//9IhV8xRH3kBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jBJhsxSR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jBJhsxSR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 765DBC433F1
	for <ddprobe@lists.linux.dev>; Sun,  3 Mar 2024 07:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709452096;
	bh=o49palnOAYbXc8BtXhaDvNuimkjn9WUCrjnme0yMwEw=;
	h=To:Subject:From:Date:From;
	b=jBJhsxSR/Ky8Giyo3P70XxTpt9tlvOYudMfHOWaNbvL4GHruktulgJ54HLcN8IJvE
	 oc/pMjx+8anKXYB5TsbJ4h6uIXM29O39b8/eQyuw76ym0eEau6khr8i7VBb4uYHM5v
	 vvVaTAUkNkoPPZ5GLCbcKYp9Yt+GiscUBJT09P7SGM5v2X1jelPRvIzHKG8F6iwW5j
	 JtFooVsI1wyATUGohJmkwdotBVNKiJ/21CaaMeVB5Xt12IbEh8t3Qs1nsOEPa/56Yv
	 0LybB+knmMskr3vkd8k0mlnFuAdG6VCgn3bkHooX0KStYmlPTY6pXb2PPupleeNvHl
	 CWkORFBw146YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FDAFC48BF6
	for <ddprobe@lists.linux.dev>; Sun,  3 Mar 2024 07:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170945209636.7938.17023134412545904141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42e0d2322d4a5674346a88754a5b2e70d57a0e360f4eb8362e37d2c07796a48a
Date: Sun, 03 Mar 2024 07:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709452096
