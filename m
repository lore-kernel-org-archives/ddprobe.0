Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 485BF25A641
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737887754; cv=none; b=IrFsIEThfc3FQ8GILJ8H7lvOWJkIUQgt9putQJ/6DzVhDTq4RetQOrdX2eDCZ10Uw8n5hzMubj6OKiNi+B3FKym9QweOlRo15Eadn9knsluukLBJxW7RwZHs7acIhD/3GZ9mH+EycIGhqbAocpj2EjuwCUEmgNtoTwSMjy6vlqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737887754; c=relaxed/simple;
	bh=xBznoHbYwtar5jX9rWGWhZnesuJwJ3WaGb+ZCpN7IX4=;
	h=To:Subject:From:Message-Id:Date; b=gL3SwSmWzGnwRd5SnyMcDNRm8QU9u0xVu5rkvyBANTS3FAAvgZHi7ELCYltM1DXvf2x5ImkrsBlNpUYSUrnvET9/1vKU+97Oq8OYCJlCC7No8t+uu7R5FAe8AHM5mupYs9rjd6NdXHeEAgCmPG+UhODQdLIWZi5pb7I8kESmIPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KG8uUoAQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KG8uUoAQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACDBBC4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737887753;
	bh=xBznoHbYwtar5jX9rWGWhZnesuJwJ3WaGb+ZCpN7IX4=;
	h=To:Subject:From:Date:From;
	b=KG8uUoAQr42p5NrwxFU8ixyWCniE918JyCB4fy6Mw8Ou3KI1aC0cSWZYM1gHenuG4
	 /eBT20sgfI6DoDZODIvgJa1YBDYi9XOtqm/ZIPC3HnmXRc/RI3vZllrJyVHmOQJ2S1
	 Q+J5tN2IT4PI2i1I6ha8cEhschSlt00ikIlF3dbl9U9peCA2lJuTmZZzd09loaZZ+y
	 go+fUtEUcIal1bRTCqrN09PTyDByuTzqnI4fLZc0ihQJcOHL0NMCdZ1NrtAnyU0vZi
	 /zYcsnikqhReKSwgqMiNtBgKm7mRajTD27nHOOcRG7Z+PGCwsMNDU9DFUQxEdFi1I6
	 TTKByfzw+nYtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FECC02181
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173788775358.4251.6554681964189680850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be8283b140ddd0f990ee5ad1a89c82ced43513ca988eaa4fe6066818025bde15
Date: Sun, 26 Jan 2025 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737887753
