Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FDE21A9FB7
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791006634; cv=none; b=IZtIzb4mSuci9Vlc48bbOOdGxLrpcNp6EUC2jy9iqNLgBNof9e/tWjf4JHC6C5avQSeMCGrFT30q8eFAvGe8Zy1PJwGH3T//t9iCj1k6ZDb7yIKNOqPTarerXVpUeIawyu6vNIpxOTtPhPX4FmVK8i/2ylSJ5QXAjo3+7HHR/z0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791006634; c=relaxed/simple;
	bh=TYClxeEIXEy3UXPCH9ZTtxsDRS2fGZV7SAmJCrSgnTw=;
	h=To:Subject:From:Message-Id:Date; b=G+TGMnrKCnmcpYdOTppZ4YoI3tcqL3A4trD++UsbGImsaO4ZFWoGZX2nQEnG9AQcGjIb1B4k0v1U4TTuCGtslBemCpWtvb2n/GpU1WacSo8yiEw5P63QiayraCxVoUcq1MqJ3UlKnkj1HWOAwr/yzuX7Kie+o7rmbHoXR4BbbZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BYWWe7x+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BYWWe7x+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D57B7C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791006633;
	bh=TYClxeEIXEy3UXPCH9ZTtxsDRS2fGZV7SAmJCrSgnTw=;
	h=To:Subject:From:Date:From;
	b=BYWWe7x+FWiOucK8fUdkhPKLifgzw1R9OZSpiKjynB1sncoJexxk7+EszXHTPSzKv
	 MuUOIw3rRJ60xYZEzN9nDGe1XvYR4ch2ecBJJXNR5WDmnS188HI7GePAE6T13SUtvD
	 FVbr/7XzVIuuw/mPp4tZ0FP/blRt2zYKJS2LWEMq14JUanb0xU5WNafpzKHtcEXeZi
	 pGZTOoKsLl6uDhlIJP3vEhXzqOaA0WL+Py0txsBVbML+0IiStJhEHlXdNcyXX2mt1W
	 miYzt2F0/Mw8DqZRsd9kmfAFCQCYrTCHqE6QUNRqoQJ86ZpyNY8hMRYtijooilclIn
	 5IhZITO1YIC5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC88CA5FC1
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179100663368.9359.5759220438493689974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 509ca04453a269385e692f5846a635699c07c90fb4dc91bcef2bafdb2b0c1abd
Date: Sat, 03 Oct 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791006633
