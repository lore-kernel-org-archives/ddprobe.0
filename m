Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 479DD8BEF
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 22:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720392983; cv=none; b=CJiV05bfA2k8VCQI9LW3oKNRXG7iI7cBk4/XduYH6MQrfW/LfjlUCm6yabQZIsu5jm/cS3+nDtBEKVG/IRg5Ngj8xGF5FD+7Ux2SCzWpuG235ZLDb4Q7MsdsNfaUNhP1gxzu+0RQXMrMXlQN25ijf5jwioPDZ29SUJ3ABtR5Wf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720392983; c=relaxed/simple;
	bh=kpaOZzM20/HvvH2bLEXALcilMS/vHJN9q1Glld+htNQ=;
	h=To:Subject:From:Message-Id:Date; b=kamSp/mAI6uczm/XH4hA805Zlmjf6NdxKb81EApK3qUtB9H5HHNp+Njj0BiSDCxbLCficMyK6V3J8G46aHhWqjOcmaRspd4YdWTEaxyF1lka/J4nZMnycTmD5xAFHL1CYNfid3SjviPkUnI0YXtgHi0tfRyl3h6XNuFdBrR8Lgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OXcovhJO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OXcovhJO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB7F4C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 22:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720392982;
	bh=kpaOZzM20/HvvH2bLEXALcilMS/vHJN9q1Glld+htNQ=;
	h=To:Subject:From:Date:From;
	b=OXcovhJOe5WjRdbFAM4MIcG1cfRNpiu8rRpwvgfRLQAEbIsmjhfLiF2tTxwoTazPH
	 4mzR3PQFpBNFuEtov1JN4k49rr6Xe6Of4BPE2RRCGfMVqwlrIx3KfdzYfF+6OBdYj6
	 s3TqgPQCE3XGDF5TFrvq9MUiI4xaBXpMoYSQaErdDCKZnfFv4mv8onVq2ShxFNf71B
	 +RGYoxnUS3O7GmhAvaJYRnq7X1tx4vnWQZKJTDR/iCWlQ4fcQ92rTr6rYxHr8+3/lD
	 CGYQu8AEeLkDh88/P86wBA6/nCXrKUEY1z/+KiTXwbOS8K83gz/CxRq0tRnzCtpFFf
	 3dJt7NTaKgmUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4D00C38150
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 22:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172039298278.16469.3456624277253596041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f67a57cbb1fd6b9e22ad58316d77c16ab81a88f221c1eca76cb7857b36229e2d
Date: Sun, 07 Jul 2024 22:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720392982
