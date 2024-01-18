Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E56802E62A
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 19:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705607897; cv=none; b=obfRrYtEsGKXPCUDG1YZvLxFbId1xOelrZw4pid9Nx3b1K9OPcnMPqJf9K69/spbchbr21NfGaDgC1wa/v04t9uet9LBOe4TcKnjqoTwGw5XHlh2ciEVfckQCWDPQmZCnguXuLIdYDU09fjT3gC13FwGF5aP12K7XHeZdoOYP2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705607897; c=relaxed/simple;
	bh=uyqNLmby5OE/a0i/v0zFpEZSN1WrFSURuhIT0Ec5pBQ=;
	h=To:Subject:From:Message-Id:Date; b=UDM1w8jRj6PEjGB3fkP7uuzd5U1z2o7RnHRW8LUeXhrVnKH/+2HpXY4gkl87OMmAOO4E4k6OdZJwdSTDGdH8qYv7+e12lcz3M4KprkBRsv+A0T0r01Ho40jFJit8a1uD8mx+AyLELnKb/a3CUIUztf+BFNa6jkvsjIirTNto2Dk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C5Ka5xUU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C5Ka5xUU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A196C433F1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 19:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705607896;
	bh=uyqNLmby5OE/a0i/v0zFpEZSN1WrFSURuhIT0Ec5pBQ=;
	h=To:Subject:From:Date:From;
	b=C5Ka5xUUQB4QtsFxT89XQ8Xum9b0505TgXOVvYe/l4UGSU2mvOl7wO5Ju3xpazyxw
	 7LQCbNufk3h3Ovbsp0V2kl3O4J8QgSgxTfO6SE9gLeNwf0LavBHgxvDMjIBSf9xu5l
	 GQzoADC+2fJPMrP44BOpi4Lyo0xurg/CQ8014B/x92IU1ZXT0p55xba62HagNeMM4P
	 525wzZ6tZXnUKO/UaPfD7du/irYQedjWoTdbbi85l//0qzAx0p62h6GltZk5Rdhq43
	 JXWh2Yicj6jnDeRZjZW5mGb53Q7miAESk8TxHJmQ7OR+ftIfIkZzaI2QophOX22Lvo
	 t/hd+WdHZIcNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 603B1C47DB7
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 19:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170560789637.14234.501224840560846517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16d578b29a248d3932c0b4122e90559ae0b85783e163a5a3171c03ea6db5dac7
Date: Thu, 18 Jan 2024 19:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705607896
