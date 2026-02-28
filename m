Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2153D1CF8B
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 02:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772244294; cv=none; b=DdpOI3jnnBqJw2Na4LLEbBwoGzJeBcDmu2SGTehU2QpWBkQ/199u1OqfuIcKa0HKoAoBmPR/3SrfG35PcTp7Xyii47b4zlVSOLWB9I84MQkTHMa9MVkqavq4z5w7/2yITDgpgX7wUq1AyK2Wz282Kn7WpJ1SYekM9JVB9GPlEnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772244294; c=relaxed/simple;
	bh=VRWi+zqWokITLaTAcrOJSgna+6C3xchjA+LZyghiZd4=;
	h=To:Subject:From:Message-Id:Date; b=DWlrQ/1ztG/H5iKAlLQhJ78qIIbv5p1lYwtXSXI0P5j/nXa7xaAk0viSbJcFeB7HljB49BKEz2KTpIjE7nQ9FNEooNIIs5skhssH2lON7Sw936/ubKXQY7r7ocYObWg5XU3e9gqF8c4vj9rTBP6gSWkfZLlQB+G+6c2Z7TBXPyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZFfZL3Or; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZFfZL3Or"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8704C116C6
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 02:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772244293;
	bh=VRWi+zqWokITLaTAcrOJSgna+6C3xchjA+LZyghiZd4=;
	h=To:Subject:From:Date:From;
	b=ZFfZL3OrbEZbQCOUhRUiXW7nk4APTfuncJzwDpR21reuZ+S5gcYPlNebdyBRK9XnI
	 vu2jaWlYbXUEGPSqwT0bkKmG+S78zgzDRAEFrAhDG9BHFhHEXoodAQ269AHSVvshyG
	 K6ANIIMx2g/OrjrLeYl8E87aLPV/mnnTSHhK/lmzE7si5FLIOFeLcpJogMxtPWXhUL
	 ziSm9HdCtsgeuQ7H5LtiCTBH/cH/aJsTLZGI1hIlIdtd6DmJ9+Qip/7hgHBwobEYvQ
	 2W+RDvKiIAafFL2z5OVQY+3oNDMRy5Cdwpxt+9AdlwAZcPG7cv5pUkOhNzC63unn0e
	 i4TeHOKedqokQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952B41039882
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 02:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177224429358.15296.7176577402291883911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9af5e765e87d15fd414c0908dc277e9eb380693e0baedc3d43243d57dfb2daf4
Date: Sat, 28 Feb 2026 02:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772244293
