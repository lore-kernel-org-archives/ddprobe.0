Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE2662EBB98
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755850793; cv=none; b=qXDb1ooLCg86/WCTjok6HGC1KUafSb0BKJat9geTPlkvqGgLEP7OG+kWqZakoqth6yiNEhVoiF1egkzSmGYGlOZt7CXh5PyocvcAY3jTBozYbzPtKCGJcsHe6evohz2FQB092RByaUyGOxoIBcnt4oirx/BEHi+3JoqAzlxy+oQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755850793; c=relaxed/simple;
	bh=1oGp8YYGwgMhtjgSLjpJ6EVdkNI5MEE3Lm1QNc1Ypnk=;
	h=To:Subject:From:Message-Id:Date; b=XkFL81c03a6DJmzjNiDwrq3Wa/2QTOd2FFsJy7fPas7Y2bywFwkSiWoTshzEPKZN0zo4ku0xVJ23c33F8UCvAFriGjnA43UqxI7PQNe5yGSmxbBJ4eDgvukXfl059UuSpPvD4foPNrO3ml+1Fvegcs/SAA8FI7umZsPx4+L7TNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rppCXPEn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rppCXPEn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D1A1C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755850793;
	bh=1oGp8YYGwgMhtjgSLjpJ6EVdkNI5MEE3Lm1QNc1Ypnk=;
	h=To:Subject:From:Date:From;
	b=rppCXPEnEaKhVh2B7wi/tRaI7Id8UXIQsyIhhfTyp2xChDk+OeN/SbKQXPQCoAq8p
	 WvYBMcQZ7chNbOgh1A9bWkXI8RdZ48eHbbDhfrXXeuDNaFN4m4Tht4O7DI/0oKOsMP
	 BmOBxlPOm6nyS5orJRb3LQ3B81SVPUniAEOUlr25g26Rg78Bf985TQKVw8c+0kE53i
	 F40Ezzsy+aMWtSL09bN6q2CHI7QEKACD1dEHKoHsoV0x/Gcx4OWqHqMSxNDGVA6qO1
	 5wOvla6Dwfk0Y5EflWOVICi05LEgsSL9+XSS/3kBixro0/C1dC5tavMGwx26xQX3vo
	 kaLCs+2r1WZag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F950CA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175585079358.18903.3577926274721630924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7aa8de392d23af680a010c3834b951b793e37b651311f12463cd63f8f2e0963b
Date: Fri, 22 Aug 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755850793
