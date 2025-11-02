Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48EDD15D1
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762066194; cv=none; b=RHV3ZrMYQ19QZd/lpIOrMtygbCvZTanV0wL4wsNQ9Z/pYjyPbu91sMuupDIp20EmtOkekiKCx+UDJJbO3ZAUFTqR0WBvxNjDywPcN9xWTWKHlzaKvya1SRicKrxlRL7ASG87hZqEkF5/RpIlIUG8SvNAN7p3UpVVrTZiA99cJzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762066194; c=relaxed/simple;
	bh=IuTJkcLZa7A/LoCPB/eLVvKuWp5cVJsOf91LuPyxE5s=;
	h=To:Subject:From:Message-Id:Date; b=fk0S3L8hyK7EsZZO95zZ47Ju8IEpdrbeDjIxKleMfHFTJXg437BCMsnbHOwKTZdFTc7C7uIqpBW0H4dNAroEi795MJimWZQWQcYWjhKUuUmkA4OgD+vzpVOkmrZLs4Hmxvmd/t+6mgxEDfgiN9o7TiSfp/V3xxcKmhnPV7ZOgV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AI2ZDhnu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AI2ZDhnu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFCF0C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762066193;
	bh=IuTJkcLZa7A/LoCPB/eLVvKuWp5cVJsOf91LuPyxE5s=;
	h=To:Subject:From:Date:From;
	b=AI2ZDhnuB+qH/N4lpZNnTYdgzSBWuY1Qi4fZf9vH7t4W05S9ovbj9V11xDcMa1RST
	 mWOpYfq9OJK8yb8hNO+Oo5n5l32Zqo+hRVnz/+BW80Ws9sLIoZirk55DAXDGNc1gZM
	 sLKOEnlgdWhndr8OhpJMYyAg9lVG93ucVcCt/bCEPP66PZ7NnB56jhreNit/2Q1gyp
	 62BK4B7Z9xljnDCEesRUAG/kWDnkhCQWjbe5UW9+M3X7CyBmBKlDpD0EZM3oJbvA2o
	 IRs/3HZSUhbmkJKoKY6vYOaylVHHsjk0llnkFue0QuqKibx1VpLFYXDB8bHHHsPe25
	 6dddQKlBqwveg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 985C0CCFA02
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176206619359.7324.12390284223737756721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 999caee19fbba36ddefb2e170f44325a343a411094de634486e399c38ea7319d
Date: Sun, 02 Nov 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762066193
