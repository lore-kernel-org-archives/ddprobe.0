Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E19841F7EE
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787843434; cv=none; b=jvIIrxzIkxaV+o5V4sDKGMq2OEP4BCK726YaBFBbzGco7vpt0m1D7NcZXQjiShwoCIgXqDtoWVCpqC8PgKqkYp2wJDfWdHVuUGRoO/Dnjega2qtdmmgti4CHpc/qx3q2J1UV9QcZIztjUe8cql4W0XvcIv6vNbqwMSq6eZ9cS/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787843434; c=relaxed/simple;
	bh=bWd0lOAWzLNEGUoj59VVdVDy71Q7WkcW6NfDvnnCrB8=;
	h=To:Subject:From:Message-Id:Date; b=VV1V4GCkPSXHtxcgmcPhwK7cfPRs1Gy0WJuvIkhpxMvn6lAB9fgd66uIKxnjm2xozo2vCAmecZh+k+AYyHdES5mu7zm06oxkUpn2kziSVCVSEfGYjmihFY6SkCzaBpWdfMa8kpIYvZZCyUaXJuRF78jbA5LXkFWWO78UlHJs/cs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t/NYTeQK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t/NYTeQK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB88C19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787843433;
	bh=bWd0lOAWzLNEGUoj59VVdVDy71Q7WkcW6NfDvnnCrB8=;
	h=To:Subject:From:Date:From;
	b=t/NYTeQK7DvkHUn9kNQmwxAWSZHp2fe5tpqETosQQ+awnPH2U7DhD8ZgK9V+M1p2J
	 QloOsyspahDqJjyzcZxGwp5xX/Hspvq4LdkFYT2aDUuWii70ZcEe8mmPK+EU3Cg215
	 fxTzFon82gLaVAm48L8TccpWbGRGrnWGNMUitEsRs56V0j9Js6lejo/g0jRJTEDVgK
	 tG5RLU+zNO/iKCIBV8ZA5m8iCi0tFyOYiaz6h9HTrApg0MYS/WaSjQKbWE+GygXHEr
	 VseBS+Ps33MpJOElzdOPZp8n0MtwHlNrGI3KxyDW9DS8HKxkt6VzcJErdfdSQKgI9Z
	 /RA14OlWv4dLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA83EC61DB9
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178784343368.1342.6532187429996369090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e4eb0dd9840e6d0a964a33994d34d946ddd9adbd4d11fd913aa08b18d281cc6
Date: Thu, 27 Aug 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787843433
