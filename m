Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B327325487
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761857394; cv=none; b=FFX3Gm6kmwxBcCS03YnYQts/CFxF5+ZpG5+hzonH7n7L6CHG1g+t0CVTPqg5BhRWS5w8Xee7LJvhRIz+g7o0CwZQRMnVJZyZmDMS8yUuaLs+XkgOAFiVlyfjTnBLqVNgTdpUgJc2Cm0/SmgZBjlnNhkyWnucGZLNPVpishVG2dU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761857394; c=relaxed/simple;
	bh=JtYUoucNqcsSm1QEoHNkzRWvVLNJiRCxyV6Pkkl3n/U=;
	h=To:Subject:From:Message-Id:Date; b=UKT4celm00IKIjCJSHkTP2DddMHUeQA0qE4QPcckAlUG/iFVK4C/wa/nQ6vrA0eeF6+u6A0uvQWLju4i0ph1g6J1M+llErUF3K96Cj4oHufmdB5qFA+pKH5oir2Q+5Tfw3dKu7ACjznkG+xpPj3Ky6evr31fVhFu52CnRt5Yfpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YGsKhDBO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YGsKhDBO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20EDC4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761857393;
	bh=JtYUoucNqcsSm1QEoHNkzRWvVLNJiRCxyV6Pkkl3n/U=;
	h=To:Subject:From:Date:From;
	b=YGsKhDBOUZECp+oBer5jyXaQL5Sask6pFZ8JGy6G/MDFhqdLE39T+Nii1/SEcCGWc
	 FRmxe5d9W1i/Sqxqw7MerRfLjbBIkzCMiPfmQntRV15gjcRnmiCdCXC6URVtkYZEAc
	 WMGRqbAKCSTrvci9gvh7KPAULpfUffv19l55lcZoEUQWBI4lJc+FWGGWPahTss4/FI
	 3K5BGsYTKe+zpJdyklkFH0kgG91Qb2uBN0Io4vrG+8dHFQKZpws1rGT4oK7X04PEiv
	 3xUACB0j1wNKBLhMMFF1LB/e2+XFAC3NfRxlp0P6SVdl1UE3xh/E9jMjq5DABZsuRQ
	 z2MGuqp7I9g0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E6ACCF9E3
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176185739360.14498.10038302042813090553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a4b414cc5d995d574fb7ae27e5cd51160fa9e74e6d12ed400176e65eed88c0c
Date: Thu, 30 Oct 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761857393
