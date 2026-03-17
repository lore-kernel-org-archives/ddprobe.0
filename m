Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04B283845C5
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 23:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773791094; cv=none; b=RgWYwthl0dvdkIjP+19/5IEWC5sDuIz0Eb5zUQ0ObGLOyevSpVERWUOfWGjyuWPQBy4BGm9VlH0+DY9VteMg+TnPlZwhv8DcDdGAMxgd7pv36HrvDhwXXoQYHeU8PWCWNd7DwLogskLjFHsQdd7lvqtSAQprfuxK7N1tRjsJLqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773791094; c=relaxed/simple;
	bh=J9VHJHFPqI0c0IvFd91kFUPs0TC890udX1W3n/nbIHo=;
	h=To:Subject:From:Message-Id:Date; b=mJy4DXwXzGAQt6GxPncucs+enAwTASqYoEArwbK/bZNbZJY8b8l8MOMIqON8zHCx07wihmqR3It2qs5NRKI9r/HNqUjwzOVwoDfXzBc0g5FLH1eSzOQV2+ViB5Mc1s0nJVHCizXjuYPSNV48wa2vMRC3zCLaglwaa0U0yaLPL1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QM3L5Xs3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QM3L5Xs3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02A6C19425
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 23:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773791093;
	bh=J9VHJHFPqI0c0IvFd91kFUPs0TC890udX1W3n/nbIHo=;
	h=To:Subject:From:Date:From;
	b=QM3L5Xs3TaN9Qjk5cGJy69P9RFA1tfg2Dz6wJ+WEVUKmn/icUnP0pkQjqVYfRpjAE
	 +2BcDb0hLheiPEzXXuiA4ffmv9uxHqWov9EyUgvDbIY5RSRUTcPPzH/t7pbBmQYbiU
	 EOZseWBA5dvhIYNd2JROOEAJsBx3BEJ7E8mW+Z8eGxeek2aEw360nxya3+yWbjofID
	 boXdfBly4XeiejQb2f2Fba6/duwHB5mS/2++AmbGLjvdUnzZJxxoDuQtz3WhzsQ9TW
	 D9IghqF7mZa5vgQIdLlC7vAbvcql1GuFjFz2466nec+re84Z4hsw5n7doNNACdf+yU
	 28Xoqkpgv9gng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F388FF6E9A
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 23:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177379109357.4129.12464007167344010574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52381da549b42762f06a1d5221cfd6904461cfb8d4cebe0050ac3ed1e24fb630
Date: Tue, 17 Mar 2026 23:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773791093
