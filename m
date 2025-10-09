Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F6F34A1A
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759969194; cv=none; b=LSfbQ+ZBO8eYYeyTxUQF971MM0WnVYTb4tgegk9J3SxIeKYlJfuKUwLLF1FT5ezwtO+P6UZTQB/WaeLogTWErXvcXFxRYt3bfqRLwoH3OdRZKMP2WmMX+nTQQYrG1tj2Ta3BBn8b8rN9RpW6an/Vf2JslRSBUW9nuaS6Ar0j8to=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759969194; c=relaxed/simple;
	bh=CQH9/FVLboI3HjTUXCb2gdjgdKYRGUUrQck08LayKGg=;
	h=To:Subject:From:Message-Id:Date; b=UL5VP7r2JE/RqhvuM+T4KEvRDRtoLK7eJ+/MIus3yVrUHgQINo5uDyJprHdhW5R7eplZ1kKYiRqzGrfQWjw1ehm1lRTkfW+/xY+dzUny/CZjnGY6xKcO9oRtdabr/MzzSXXN5DLddYcuko8ePteUUEop5rzjXOmcVt0ww9qpyhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VQpTDcyE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VQpTDcyE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43E3C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759969193;
	bh=CQH9/FVLboI3HjTUXCb2gdjgdKYRGUUrQck08LayKGg=;
	h=To:Subject:From:Date:From;
	b=VQpTDcyEbk+lfKpZ84Jr40rb5FnRyz8cdWpj/6TS8xkR7t/qMMmoZzAt+hZ8DnfUb
	 ttta99WED3TwkdskkiuGtZx7TAIflOgrxqt4BlnQqauIZUKXUm4nNix6bEgk8EYPDj
	 8RA3DTuOWS2xsulBXQOWJVkndwyzJg9NtXO7pxVPkwX8jdnNsYpQ+NNkniL5cKCzee
	 NgtOXJFSc+3EjEWTUnJZ0G63SDD9C8K4g9i8ii8mNO52DG8IS/l8lBL22IhUpX0tSS
	 MfEdWA9aKT8aBncBDGbf0/oop1cVdMY1/BKjrrGWpGCkidpdBPJ5lq9sB1bEBD2GxN
	 GxRqqucHdfkqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A18CCA470
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175996919357.10793.14915076862520414095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a4e7ea811d59c69f742b50a577afe34663698c333213bfa04cc1e479ec8cee4
Date: Thu, 09 Oct 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759969193
