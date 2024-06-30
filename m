Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4301B29A5
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 07:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719734063; cv=none; b=DpivN/64OwJuZV2Hrz/Z7AZcW7jnpukQqaadL5ypOoDTIR9MM/SGH3k0b2cCOmPJ6Mpvy4lzqqKT/imTE63fKFuGk1IlqYlXzWmLxbXER3W5mE0JFFdjLoxYQDop1oom1j+d/rhNqKAUJ2oC7HRiG3MBdAoTh1PLwlzHbYN/zRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719734063; c=relaxed/simple;
	bh=B/DEMngUiI2h3IH6tDnDrb0M4qVUGCeu3aoTyeihhMs=;
	h=To:Subject:From:Message-Id:Date; b=rdawXAxhhI/AH7qxTld88+u4X8gK6+pH+bap7gusCINsr4MGT81TXGcSQ1bwDr4/V57lseblENKMyACwpnaG/tlcRqaIjYH77xoDuEHlWKDPFEHOuYNS7JJrIg+ZbQ3hc9kaxyU5kfyigYxIk64X1KzHDChywimb2TEEEqi7F0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hMhDZkh3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hMhDZkh3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4FC2C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 07:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719734062;
	bh=B/DEMngUiI2h3IH6tDnDrb0M4qVUGCeu3aoTyeihhMs=;
	h=To:Subject:From:Date:From;
	b=hMhDZkh3u6e7wxGNwRhqpU7CtW0im3SnaC0ezHiwMbI9lQJoPkbUnUgvaGE87th6R
	 UeG4WjVqX9rX41lrUIP62Bcq67xM2DjbxEqkMhzHtL33RI2pignnIVzSl59lDIYPTi
	 GoBjF0BwELmRIMMJtKqxvVGvgvMbmT2Hdvz1VwqYQGqiA01Usd8+jQuddeVfIK6qQ8
	 spr47Zc27vcpALJfw5yzjGK32cXThuA/yBM6QrL/hZ3TTiaEUsf2No5iMhdK/clXcE
	 zqJDc1wOliBJoa1PVy3PluhqqhOza/ZzeYPA92THspgsbjf/WfNABaZLba8s+6eoLh
	 gZtvgWUDyNKWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0FFDC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 07:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171973406275.29855.10220429105135102789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e7c18790e4c9074e282013fb02850a630daa9dbc8d5d3dda2efd5d0b9fcbd29
Date: Sun, 30 Jun 2024 07:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719734062
