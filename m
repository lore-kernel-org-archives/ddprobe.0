Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D74936B
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728804954; cv=none; b=f4P70VPe003GPUP8zeSqjw6rwBWDE1Riv+iTgt3UUETMi0IRVz68M0ZFR3RfxeNMh/9S3gWMKmdWCxZHUSot/rCkPlsMgSDgRpIj4VTClFX8ktR4woSm+a5UInxS07/fpmizE8GBRPgG1/qS8UcyfExat7uCrtM4AbeAjozGa4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728804954; c=relaxed/simple;
	bh=Jo1iR4Hu8jHrYJqCswPrz3Ih9HuYassZxb4avZt5vQw=;
	h=To:Subject:From:Message-Id:Date; b=udgRiSPkC11PacHBN/DhF9Y2GTAyKJ1NByfLaQIG5n6WTPm/JwteFE9C9tGBgX4ZGI6oIQjHNa17EWBaAgApW32GZEdEXbnmR9+C6Fghx+R2/aZcghYfu3I3KzZPwOf07pP4lDJOJE1pHAAZey9uAfBX92BVT5PTid+WMgwQeE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aroA4dEv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aroA4dEv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A721EC4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728804953;
	bh=Jo1iR4Hu8jHrYJqCswPrz3Ih9HuYassZxb4avZt5vQw=;
	h=To:Subject:From:Date:From;
	b=aroA4dEvWEUgvfjjj0ODWmyceY1/FtKxkYxqfHx47mh63uyCVBKQfSM8gy4qGVxWr
	 HmdCOheBjo7W5iFv7KIKU5IPLkYBi2IpZC4JGGvPD5VY8LEV1Hjvx/h7kAEOkDOgKL
	 GM+bR/5Gg2wLjrsJ0bysJ8z7fIDsl5CB+ScBHniQOgTgZsVnuw2SgwYlpOr9VDXobl
	 eexUevr8xawzIYYXif8pHTuf7yV7xPxT6ZaGxs981I41bbDr5n4jLbMMQpfWTh6pPZ
	 sBqQKHzQX9OBn9wV6rLEUYw2w9WPmdolRc9dxgfbxdhZoe6jRDFl/hYLpgY3OPcKJ/
	 YBOGYAnyWATEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92704CF2576
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172880495359.15681.14681623812602307091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6e9ad70beb94d948c2121c8400286ac2a655ba85a6f66a49e66eab795c44c12
Date: Sun, 13 Oct 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728804953
