Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3709A23A6
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754015394; cv=none; b=qbF+TNonp2jmPCNsiBfuzwjsjLzxt+64JBzXgoT4QfwHFaExKdIWlT6huzdwCz78zTvYiTQFvRosHtIR1i29vsIm0uoNl0H0WmRYYyEbjPlez0ehpe43auPZ0P6L4206B/dt7XJcM4cFs/akGonT4VnL1f26IrCvVFURrtaLnnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754015394; c=relaxed/simple;
	bh=IrmeHmzQbvIpEn38zXiUx/zmQS0MCDnjT34XFNIvOzY=;
	h=To:Subject:From:Message-Id:Date; b=rUcP2Djl5159Q6mp1OTuskujnXTDfXMrMZo2VlUQato6Zj2F7++Ng9RyOu+YcAgUw8P1qWk2JfW5pEpEBFhAiXMiy/5nEGqKguwtd7yDpu2vpy9yv8P6iRtDU07bibOuxvHwPOODpNizDIM+tTcUakkIogtLhNowj962KMJCZAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fj/8DBB6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fj/8DBB6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1585C4CEF6
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754015393;
	bh=IrmeHmzQbvIpEn38zXiUx/zmQS0MCDnjT34XFNIvOzY=;
	h=To:Subject:From:Date:From;
	b=Fj/8DBB64y5Wm2waB1qSxsNBQop1+YKn1bi4EEOO8f8FIZ7cOiVhmHuUgV7cjXCqM
	 dROxKJHQR5Ur+F6gtcykW/STg/0j2cGNKd83n2P1v4Ff1ol2AuIJGDvpnvqKePu2u+
	 3QZQLuhYDjm34nO+A6NpQObDzjqUkaQXN1nwCb2IyPkiYbvJHlaEXNshsRklZMVBqR
	 we8wfOKi+tsvh2fjqimr2vEzYI5iwuQWFMzt3JJhyIsqNGhV0Qt2LwIORylyS8+AlZ
	 GzP/ezeIGssu5bdO0BLChfs75dZHLvxdNTX04pv97a9L/yGsEwdBWyafOhyS3GFqFe
	 1IRg06yXzNIBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA6FC87FD3
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175401539357.15222.5005802722026749123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86ab1144c31955f0082a185dc85dd90e79c2e0066f4094cc4a573b75d773e2a5
Date: Fri, 01 Aug 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754015393
