Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258F6200D5
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 13:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705499897; cv=none; b=rKKk9BGe9rz1286le7PZGRvf5vgPkLQUNMmXsAvBfiB1MCCdW3ERTlAwtOtYYPeqUFuWEgoTlixe2UCzemp/sjNJuAuOA/VpI8ehtF0B4sr+ZgDYO6eoImZSAuyJJMVC8C8X63HimuFvB89wZORm6nNe++/o9d2cP/CpTRd5PXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705499897; c=relaxed/simple;
	bh=p/OV0vHJR9dYmwCKnUwbMNnndWjKGpVh20UzsxJiDcA=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=dpUKYctO1ee6TP66pg6TdC/M0XFofnoFwkSASe3CN3U9JLTyYMUFeI9Q+VISYqt9Tj9JOfrWLa2dxOhcx9ZcOgTFS+r40Puf2vCcsVwbFjzYH/9sjJ6NV8tt+YnbPfSPCsMKsncr3CG8KQPknXBwxR0maDg9X/nlEhPnnvR5+II=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=drxlvGdQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="drxlvGdQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79FEBC433C7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 13:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705499896;
	bh=p/OV0vHJR9dYmwCKnUwbMNnndWjKGpVh20UzsxJiDcA=;
	h=To:Subject:From:Date:From;
	b=drxlvGdQicaPcutdmdCsmVdzmGGJ/ShatNj7y2aSqZddgvTBwKk+0TVpyzxTkrliV
	 ceTfDMAniZmni2H2uep/lBdJRdaYPkRe+Pdk+984FTYxUZsAlJQP4977zvGv17hkV/
	 +0FG9vWiXaahJaLCbDC5ueso0+zucs1snTsXjClveMVapq43fBdwj/eMO4a7NVNy0W
	 uork9aPn02X0aiZxwIFt/X2UXhIxkyXnQEjP/5j+tVf9BvhoPPAGjqM3byRgHVKJi9
	 BFRav8aiUkGN3nHRQ07fo/ka5a4jlnIyLvhINf74atwNb+/8zAt2L4mzkRI4egTjHg
	 +lvvIELuRMfOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EABBC47258
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 13:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170549989638.10596.437961983959271084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8892a4a4a67e442e5c022a8b0e6f976f0b7ce9d9aff858feef3107f40017bc3
Date: Wed, 17 Jan 2024 13:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705499896
