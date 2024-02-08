Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B10C4C7C
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 18:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707418097; cv=none; b=Oo8JdLLBsY/L5eThKEIFDY/40vi64UNOxe03ecPNh1GY3InzVo+gh5CN0CChkNNCZ+CO0TuWNrK4pDFjXBIhmuwTycuaecFl1CcuKzdoX7qbTXYXs9DfBNgtn/u8K5SkFEKZHWKCIRUe/ApeTXanSlPu7CTvrgw3bkIfLK5g4O0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707418097; c=relaxed/simple;
	bh=rNKcMWrKGE1CGKOxQSaIZpCXaQT/IuY1MH9bkIESHdg=;
	h=To:Subject:From:Message-Id:Date; b=oez+Q50bcaWKDGIXxqe1ZWZdZTVmNhafcbLT12IIULkSYk378C21MzDpHWH78dtsDXHqobQ1BjuKnK98cYBxXoDc/nVZgY8QuLxThpdZ/NTQy0otDakOilhIDLXaTywck57YfvKRnosC+Oi3HybPgrwlrFJy4n+QXxEvygdjR7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IdSdiJA0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IdSdiJA0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F3D8C433C7
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 18:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707418096;
	bh=rNKcMWrKGE1CGKOxQSaIZpCXaQT/IuY1MH9bkIESHdg=;
	h=To:Subject:From:Date:From;
	b=IdSdiJA0AuCgSxbJQmKMDfFpI0RizC3CI8nroRPdvMawNmlViCLc+x42Z0IEM/pW4
	 8gOpK+AfFKh6p0WEgyBgJCxU0fYG7IoOTb/sD3nxOfZMVfS2S7tEzUBtZIB6mZYnsA
	 Vf9dkeCPNGx1fsDAXgglBcy1GiPir2Xy4WSe1RVFQEs4+hS9dd6hH22CN/io4lp9ch
	 oWAVLX6RaIDMlWzAp1K7yFzR/dbqyqPgfwAc8HFcwpB93DHOoUDzb1r8RuR+emR/fL
	 b5sqVuxZd2RYdMRixP/n8rnQjbqOdyhIJGTXOLgPwIDie4TfcdWXIrspMg1hNTw6+e
	 A7RpH5TWDMKCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 602D7C48260
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 18:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170741809638.20029.88683022144139254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a7680047ace977eae983b264a61c1f1f54cf028f9f9335445c8df5030c32b1a
Date: Thu, 08 Feb 2024 18:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707418096
