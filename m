Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1747C3F5BED
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 16:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779727354; cv=none; b=X1fp18h8LAbhxhNuKs/9WcVrWIa7PpV/nrm4F4ggwVMlWQ5IObwIHCSaCGxlaDg6R/ss/8q3ckr2H3C7czx/mRGohP4Dc5WJlZaGkUWYucgKk3fgXIHJWa637AaZRbIFDzA2uGJgJUanRF9QnlgZ4pdG5IXTf9CzBWV7QTVxiUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779727354; c=relaxed/simple;
	bh=t0tPq6IsUgPOxDfzn62TA5E6Vq9+fbUaGLIZYj9UyKw=;
	h=To:Subject:From:Message-Id:Date; b=H003GhN7sqAsg+6KCL3rGtYfwNq41GqnxJ9dwxHLUa00N/tgVPdKOQ8PG7OPboh5BoIlsiYdNn0JbUQzTfVaxDvPVuEL2/bRfACODzwLYxxS//ymNnW0Lc8souq6CopqrlXnyyZJoDOIFNofxCdfuKdRCNdxm8qTgtGkwr3BC/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oHrfP4DO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oHrfP4DO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5281C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 16:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779727353;
	bh=t0tPq6IsUgPOxDfzn62TA5E6Vq9+fbUaGLIZYj9UyKw=;
	h=To:Subject:From:Date:From;
	b=oHrfP4DOmDQ/SHPwk/Y/NNruBHB42ZRgMsi/EaqpDOUSuXlE2VnMDKryltgxwo7cx
	 g/UopszVwvvmx1HV8CUKL8csb9ONJqV9dQtWxsm8Sedi/b9DDaix+ufDAvVa08djrl
	 LzgaCnnBLZvJoke4F4plLIfMwR06I1/IZLcyToHfzYQ2G2ILfYE8osesc4ZnS9dKg/
	 Bhe5jKGLb11qJuvHxJEvcQ74CHydYLaZEx/8p1vBjFtXdkkHD+Wz9oElSEGu7qJtrQ
	 rvoRd5AZWgCGVNXP4hJ3CViy+KqyX22XW8MGo3ZOHKflk3jdAx8anRWzXqmcVhwbmr
	 GQRCvJP4xqyaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F12CD5BB1
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 16:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177972735368.19167.18193304038419752197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41b45db23bfaa710502bd85d414a5ee9c058149b1681cde58352370d7e3c4bc1
Date: Mon, 25 May 2026 16:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779727353
