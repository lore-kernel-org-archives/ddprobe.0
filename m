Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1375A45005
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736828154; cv=none; b=X4owIS2ZRVGbVExg+RxTMQL1dTxFtuY+txshh50r2naYJlmcPu6UdBgpLhOofXENQ+YeuR7Q9+0MhMRxI0a4J+8mNnRRm8zDZDcn9FodtcyuCcRlkVI/rlcbbyWpnYewYr0RphM+iYE6BZyGqJoZ2kVbAqRIgmbHjmXMifUqnU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736828154; c=relaxed/simple;
	bh=z4PJtaj67XmOCqXY6HDEkmJHDzZaEwBUFBi5XVPT/g4=;
	h=To:Subject:From:Message-Id:Date; b=sC+ncU8YrPZeagAJ/Ob+2NhW/vdWXXdakxtQWn5zoxeCa+t1f+BSIVZdiK9vdYvFZV77tb7kbzJtCTxbfS2AaXmt6zAlfhpJqkIdfvzlQ/u8lK1amq2W71JTqwI3G1boEhNgJ73duVT+7arw7Yn2zWg3gZ1x4ncdIFvm+Qtej3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NvkILoLN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NvkILoLN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9563C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736828153;
	bh=z4PJtaj67XmOCqXY6HDEkmJHDzZaEwBUFBi5XVPT/g4=;
	h=To:Subject:From:Date:From;
	b=NvkILoLNbI7gz+66yFRwMJWB9kaU4PjuIMZhtJA69boEswU4v5KQdRXQDNNPXG0u0
	 3pEqQmtV57Pgl7VarIViIB5HGp5DxSAf6gYa3M6SHuR0L7E0pw9EMKFW2HmXdA0J4m
	 sdqew4Tox87BfYzDOY6B3QqyvoBK8z0foGvIvarmZ8CjS0qHBQjy2mv9ejK8CSMLyb
	 XPazTQqRIva0vsqyG96j7w4PI3FkAMQQTUyWbcyrrFSEtVC3Ynf2vw0TBI//EJax8h
	 Ja7UQUWS8Mql5fBM9BEzR2L4wSQmfrUvgi6EKhwxNr8POElN6iVha7Q2WY83oEzu7c
	 K376VKTjQyevw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9843DE77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173682815361.21926.7647177225713940313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94fdfe7d915305b038a0ab75ac3c779d94ce6cc02d3dd4ccd96c750af9f7a865
Date: Tue, 14 Jan 2025 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736828153
