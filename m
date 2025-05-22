Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A56F1527B1
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747916394; cv=none; b=m9dBugAQZ3xN98TkcVUyrbUPoebitgOnhOCVI44BRYHCWgp/fFV6w3yJWRmHj++xmz9y5dyLGSm8wBZRASWa9NUK4eS3M74hBOqxMD/XhZnyrG9fJ42rdlS+5fnYCmEkAV8krZHnWdux78ory3pkb95DNwaaXGz542jEdWOIS74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747916394; c=relaxed/simple;
	bh=K7xxiiKlULOuxbrGCVcPGjlOia00P1QDOL0XY8VTjgc=;
	h=To:Subject:From:Message-Id:Date; b=urqixUC9aw5cKWuieMW9AK7WzXEPdYIoiDg7U9WpzU4GMv7k1zxoBtgpdpAX55EAIkDcIYA3sfbHWz43HnQDuY+ecLNIwbc3qW4hfzOVEGM2MQneIOvpO9jS6NAcV1XTXp62jkaIRyPUE2alzhWMszd4dPvwlRzlm6QF9oxxekU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ONCORNiY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ONCORNiY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22E5C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747916393;
	bh=K7xxiiKlULOuxbrGCVcPGjlOia00P1QDOL0XY8VTjgc=;
	h=To:Subject:From:Date:From;
	b=ONCORNiYosn0ZVys0y+WwKsH7pvJLhYCfY6YFzjZnoIIRFulK5WaD59fCP94dAsfI
	 15xRMK6BG2s/WhYRbDomB9rHi5A24ttV3LsiR2YbYHB+Q6NZJeh2Cg2GG674+XXSgl
	 NZCoBBR8BpAGx1zj2qStbIi/ypayZJxRAXSH2Np5m7Rx2EmTRZTvw8nLicCdvt61Uv
	 vIM3h777Km0AbH+OSg9W2g7RfLsco7SJsZFz0YnfTSvjey1l9wB+rqpQmhQ47QBA3F
	 gFff6zwLQVvylHHEU3rBHFflLEQNdLeVKaFZAbhdY1NyubsM0HgnW6TzALX7IHRosr
	 ktnYqLlQmFL4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E626C54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174791639357.9652.4253023580510784309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c190667845e68b02095f4e61ff5bce52a28a8b085c7c3228f417f092b74934c
Date: Thu, 22 May 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747916393
