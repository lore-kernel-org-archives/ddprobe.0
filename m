Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37C393BBF0
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751685594; cv=none; b=gOduV4ZyfKlPBDKGRzkFldrxoZkf6rhsVLXU8BYffAky/LZeUT61RkMMaFUJkz4c+V5c2JLiCZACnVbYSkvy3rOd73XPJ8dTFZdE4Y6cXVnU0EpaUGFyrfc4YKbR8rb4GvofQrVy/aUGDIQCBjo7VeFeaGUiCiCYXH29YD5urDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751685594; c=relaxed/simple;
	bh=xlPh7NG9MgsXVAfQzs9ZZN6jTHoJhx0QTu+DRrXeGpI=;
	h=To:Subject:From:Message-Id:Date; b=nvopqjm4SW2UUrLcIr/I+HJpRfe0ecG86GZtA2RGCoO3cYljWOO49h9d6K0+0y5hEcub01488tEprm1NxRvXe5gqmLlA82SOoE4GIR7exqrztPmBRIYjh2gPhPE6QSPk8bp7zODz6LCaZT+3/Iyuo6AEK+iDZcCzfMHv4u4mrQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X2jA8q1z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X2jA8q1z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52EAC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751685593;
	bh=xlPh7NG9MgsXVAfQzs9ZZN6jTHoJhx0QTu+DRrXeGpI=;
	h=To:Subject:From:Date:From;
	b=X2jA8q1zjMIgJ3kp3oxbocoE6LaDwO+70vhIBa/XmzrPHHzHFzDEwCPh5334gNZGu
	 ePil9sHIoCySthkabqrOYL20ounOpxKy+xnbVSHsizgA1rnpcXDlMdzuoZqbbWXkHh
	 ekZL3ZMBVrB3H3ZHOFMqvbDshL2QhOqRAh1bfXgMuvjGcbljNOow9PKhjQ2p2caxNX
	 A7ApLjijmbPA7+8memKP6lZyneabyoXqJE2ER5lCVzyPz/E/8NNI4AusFVHmLiVzjL
	 CUiD3AYXHaQwkQv9YEYwswFrLf/mmWj2PHcVm6P7ZnTeCh3tKSC5n2hxBC37nGK3nP
	 2q52QWiISEZ9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91863C8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175168559357.23509.16968409983525593534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffa70c0eda3f57837e9f8dca4438cb5973acfd7f68185c8f8102110295687a1b
Date: Sat, 05 Jul 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751685593
