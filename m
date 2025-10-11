Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2377E204096
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760204994; cv=none; b=EMtKPwk/VcAi8nQkEWJYk62N4Zw3s8XDc5YzcHu5JC31qfdgHAJLJOWYtzRTRCHIWXeHWEXkGK2D4fLIYg88NmBFPX8GpXs0PK8qxAT6N3B5eQnXB2gHCmVeCjBD7aKODQum2OoPtIyrq+jn5Y/cwZ/Z783xM3OZcJuf2vCt3QA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760204994; c=relaxed/simple;
	bh=nOkzcVv27Bgiz6vQnrjsNSEYMiQsF8e5y0oWgTXOI70=;
	h=To:Subject:From:Message-Id:Date; b=IuzpIeJjKTOLCQ+uk64FoyojryNsbK0dQHbxBKIhFnz9nvJmasPmkePGlgo2UtCGB0HgyK63wDN5s7XePY4ICj09tiTSRzc3hm0wttvzx8oVPZaW3wovJP5ijKE4ZOxk0EX+h3HDe0jOnTOW5V/b8T7ZCs3yr2tXZy+8AJWMGAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EkTeskO9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EkTeskO9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7789C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760204993;
	bh=nOkzcVv27Bgiz6vQnrjsNSEYMiQsF8e5y0oWgTXOI70=;
	h=To:Subject:From:Date:From;
	b=EkTeskO9X8vDtJtqMQvq8GEcc8DsbMT2uMNlIm3hnvp3txNIBJ26SZTxyqdwjhN5f
	 UylUBBdpkr20itL9slBIZn9yirwZoT5wsnwBbDfuPcEI2EpfMvJvcaXkvhHDB1u2oL
	 7ssCJk8661BICP8nwkTKqIR6aY/27ieqhYVo/JJZe4+VjuSiaHLSKWR5pBrl9qDhZo
	 dRF8Uyh2MKI0ni7Zx58qZs09Z03c7AI9QinjzSiGyvcjUwmDfPVPt01Om1r4TuCLf/
	 MRK31egPdfsvEMHReGb4MHZ/urNtj3smyXPI/TkW1cvW5TM5YmOg9rUbl3OT4+QNFl
	 dOJ5nQGYnUwFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95406CCD184
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176020499357.19198.5387615750419556030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50480642eb712ac1be206dbcd0376a611296080340200a1f25792c7889ecb2fb
Date: Sat, 11 Oct 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760204993
