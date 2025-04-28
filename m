Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302911494DB
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745809195; cv=none; b=cWlL3DKCFg2tGHSL/kGCedIn5a25aYIZxXm6su40ea2wvONF92reXYGuYTtWcblVVC3TMgnvuWjjPDfAA2rcDG5psTc0wrnblT9CLsPHxhIicS8WW5PVZvgHraaUfdbe17KCRnUsNcaD23vxoGhV60cjTeNUQ+GUV+yxlkqUwaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745809195; c=relaxed/simple;
	bh=ftutDHDlkA7AiL7x7Lobu9KZGom04iACCZwdWpVLcv0=;
	h=To:Subject:From:Message-Id:Date; b=JhnnVP3oqu3iVsStENDxWwPugopPw2EWwAaxP/fOBDschD8e7gxkivPfFkDLYKlvOAjcTgB3W4YinHvh/zpPnHYwONJam7LhjG8YZwDwxwoxO02ThvGWxi5XhNLwQMHhpmPUK9fpU6PcU8UzvYiFWDaN7usv915AVBzQq85Waeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C/jB7OIG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C/jB7OIG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14B1C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745809193;
	bh=ftutDHDlkA7AiL7x7Lobu9KZGom04iACCZwdWpVLcv0=;
	h=To:Subject:From:Date:From;
	b=C/jB7OIGfzmcKl0g5OL2Y7XOss4zT3AkEDUAow/EHg40gJHLLPN743nroA5t39EAa
	 Ra8PjklCCJsa+loPd64QP5RmaREDtGrWGIF9wE1IjYupej05s82pJkACSJAE0NN99O
	 w7ZkI034F10VQhNN1Cct5okyP6/VGS8Cz0NvpbF8b/EGmjC8IigYWWpH1Y+WR0R21Y
	 Ogv6Dh3+cLRb+J6raeraByij2TcK4muzTN6the6cxgFkmwtEQQ395vphbz5nFdwubs
	 2c+H+eoiyWWDcZ0yxA/AfpAHM9M5gqpKAaB+FPr7WnAvgEzw7AD5uXz7C0Kh0UTxs/
	 8OD8GW44Wz2Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB4BC369D1
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174580919357.23899.15135527249711450294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0543e1f44d90f440491d30011fa185eefa402f158e5861390780c6fc9c4250e3
Date: Mon, 28 Apr 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745809193
