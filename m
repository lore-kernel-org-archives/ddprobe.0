Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 495351B5A4
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 07:06:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720422383; cv=none; b=oDABXGxPc8rQKZodjTRghV+r131gaJ9aG9uShlik7vOKMNxwgNyirh4rnk7x3WAoIUS0mpAGmeRp3gMOv8mUr7R9/QiN9ovnrU36AHz+tDempkd/oVWk4tnD9lygu85I+ndMTZC7tWK1Hvy3y2KTU1IGK5u8XPn3JLL3Zki8iNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720422383; c=relaxed/simple;
	bh=QNQVbYoOStVEZM4d9W2JzNEx+9MBCrT5yOpOI9Y5aCU=;
	h=To:Subject:From:Message-Id:Date; b=fhWt5N99pidwzEo+7BP/jhf4c0Uvs9xQkzXyenWLky6aGVzKfu5K5UcqHaFXDpSTKrMg6EjcLJf9OP1J2iR+oJ/kcllxWcCAuD3MgILh34+T1oXEuam0i0zvLexoQO8EakH9vwDDF1FtsQN9dWIhm18hUVm4ZzLW5vxXIsySYDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Al1u3XPh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Al1u3XPh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D180DC116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 07:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720422382;
	bh=QNQVbYoOStVEZM4d9W2JzNEx+9MBCrT5yOpOI9Y5aCU=;
	h=To:Subject:From:Date:From;
	b=Al1u3XPhbbfMAj1V1V//6xwgJx4Pt676Ao9A4yUb9yxF3kRSfmYZhC8T1ohrau9v7
	 ZwpSLwWAOf/Pj6dT7nZ6BUGcJe6aFFCdD3d+0lbZroGQLleZVWh3Rq7s5T/9nxeGYR
	 nHtGzOQ7/Ab/C8M269+tOvJm+yzrF006jWr5liZ5Fd8/iQWmrs6/uBSMYBFb3QBLUH
	 nMLeoU28ZsQ9jntxOlER5rTOixJ1yfSSVGZJ4uakf2u932lujuPdZ7XmxDsgZn24WI
	 TmbA68d4qCJMBJ1HC7D/SdHgYFJctB10bAx5h7ChxOQ95liRTyLlpmyUkDaA4W1m9U
	 RmIXD/1+BInnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF69EC3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 07:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172042238277.29635.5845015876591782355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b32cea51e3b77228b17df52fde5f841f77d909a34946e8e404fdb4fd72d69c6
Date: Mon, 08 Jul 2024 07:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720422382
