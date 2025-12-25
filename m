Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC377E110
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 13:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766670834; cv=none; b=VjdxohhhlxJEM1PAV8sQ/s9bMzY65+XMlLIxz9i9Y3o/8wzYPUWoQPzvXGVPIDxmxTEX+UgoI1xD62j65aLiY0+xuzYanvi2wzD7PkHjm2GlXzgzTHkiQPodOFIiLpN+PwwD3M32F/SEvUgZbo7USd6xwUmt6vvEimpbc1reE5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766670834; c=relaxed/simple;
	bh=F7ok0xNHQF22ElcnDA4FwJ/hTD5zAJWT0DbO391XL1I=;
	h=To:Subject:From:Message-Id:Date; b=dymoD+55PiEFSyNcKRKKA3w/N3Dw7JhwytTi7eWcuSma/A80XreoZgxtSbzq1F5yQ/QoTTVtQ6pbEQeVhbw+/3KOlgmCVZycKl4IPT6sFceoC/pDKyr5JhyCYKGPza7B6ZIyHvK+UEervt0qU7GkR5/yvv59poat2sdDYrFdjtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=frkgEzAj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="frkgEzAj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B57F3C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 13:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766670833;
	bh=F7ok0xNHQF22ElcnDA4FwJ/hTD5zAJWT0DbO391XL1I=;
	h=To:Subject:From:Date:From;
	b=frkgEzAjxDXd0NKX30tTQ6FGu2r6RNUbPo715ZQaNtYX6czF3kLO34c49Sy3a6sxA
	 FsGPyJaNQSfAa+7MZTFfHw/DbzxaXem6HhnIpTqX3cnyTvifMjDTH0XHy+67EY0vLW
	 IjOd6y2LyciajeJ2J71q6+bgP49sTkUcI8H3oMuFFYn7OQWz8GaqcO0qQZVi90Fl8K
	 FX1K4F/VK8ZfcPIDj/5Zf0jw9ijHlOTXEXvDwhcsyxPcGRhHvrH9VpbIK/hJ4c+qoa
	 ++rUCrv7Csy66vt7Or53JpFV7YPLE4Ee5fVQhCqpqdIKzZp8UoxK4GRekI1TF9vlQA
	 oXunoohCd4KEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1BC0E7AD52
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 13:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176667083361.1435.12927344092705237484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20e4450ce97f89a49abb27bc1ab757db5591c51dd61b8a631e7bdb08242cf688
Date: Thu, 25 Dec 2025 13:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766670833
