Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B6E51519BC
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746245394; cv=none; b=utSQibJ7wUbUm7bk8DWzlW0nOziiu+7BIei9FtO4T0N8rQfCxN0mX095vHen4yC1WAqJRXmcc8VLjkgAGYv4R6wUqHHtTuioA4JykI23ZLr088ljUHtxfhGNfs5v1SO/hMXseOFc4hMdcosiHjPUL77QaiKUBQ85jT+Mj1GQicY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746245394; c=relaxed/simple;
	bh=S0supFg21xzUwHmOpvcwphpEnUMw7eX2xwhSVoHupYg=;
	h=To:Subject:From:Message-Id:Date; b=inZ1m1I+IRbgdyFcIXQOWyIxh5JK3vviAft5kQcZyFy5JmmTO9nxSPYpYpPDGoyc/vV7CcT2le82skQ91CD/lJ03c6EgzQrt00XhCdXLVxMgcL0fo2l097LJBEisy426k10xvHlMIHW4t0m4r7n+y1zhm7a0xYAn0YgoJqWkwNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OEVIEwKI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OEVIEwKI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A246CC4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746245393;
	bh=S0supFg21xzUwHmOpvcwphpEnUMw7eX2xwhSVoHupYg=;
	h=To:Subject:From:Date:From;
	b=OEVIEwKIDA98nQDqyizke5c+pBjnT+4JIej0GJLxil7uUc8OSN+2+K+HK2892Bf1T
	 AegYP/C4E+1Oh88wnDqQq79/BMo0dYvRINpVUAJzIPcgdrfN5J5eI4MY0VnyTme5kA
	 z0odwZHrzoKgT0vIlrZxRNaj56u3MUwlaTmLJI6xt/jrsquB9xrJuwzyFrfdkvcgXB
	 0ojN2/WA12Oyl5H0fIjx1gsKthT/5Kbf5L53xZ3pnYrPgA04lneBmBhZcSANngBNvS
	 tJcSlnJwJL3cUF4Dj8q1rkVGxu20fZfkOi20LR3Yd3VUKg1LIRggiRTa+97FNn8pfi
	 Vt+jObSUsFGDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA3BC369D9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174624539357.28334.15462418705699808770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc8c1678a0277c43ca119ac012d492931a7130e8d8d955e5a67c246dff278842
Date: Sat, 03 May 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746245393
