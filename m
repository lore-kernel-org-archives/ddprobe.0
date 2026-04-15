Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8AD1F2B8D
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 00:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776212254; cv=none; b=FYB5aFDFtEbQU69YfrAGbn3Y2/mjtAoIqi83Ez0m6fXg0IgdgG3/oVOkG0DXy4gOPYMBt6HJraguDHlGOd1WXVmpQg546D189TkOk7FSSGsdqXGeXRP5iJjAE2pU8+qSHdjG4XeBmx9cjEXpP8N4wk7vyO1Ws4jmAqm/4OiPMdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776212254; c=relaxed/simple;
	bh=8LVR8w3MYt37ZWyHFPpAoPYB5aC6bBqg3hTbjmkRXXk=;
	h=To:Subject:From:Message-Id:Date; b=cW2tXIOncjKBZyU/NBteWnG1yDk3v6fma11ssKwtY3zTvoL3Q1CDy3YuZlu91jOddkhQ9fcA94PdrTRpEc/yoXRod6EDKp4m5Oyj9Px+VIH1fdytby+4WLI7LEDcCsXlzhXwpQcQxoXl9uOnV5b1x5J946LHkTimG6T9Se9p+EE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DecEFJoZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DecEFJoZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8B1DC2BCB5
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 00:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776212253;
	bh=8LVR8w3MYt37ZWyHFPpAoPYB5aC6bBqg3hTbjmkRXXk=;
	h=To:Subject:From:Date:From;
	b=DecEFJoZG+CJQjZnf6aM31w3ldE0OI4x59G/j7TKDcQQli3e9hJa7nNT7LqwLOCEN
	 WMrlZXNw9gnd59G7ELCX+xYz3sxqXfFpJkhxnkSdCrWMxo7JZaar/xKP8FdmkGRLJu
	 l1Cgd+pkF8TW41dHQu6y9e1aYUMab4azFImt720BNyBvTqEVtGiYmzIScWjEYjeF7x
	 gQkX33KrfWp18WYBZOomFob3JvxfodaOx6WNYX05/GYjPSE7YvVgAMMABD5zLeH3aH
	 5drItjlIRn5DytS7Xo9BlGBytS01LAyrl71lRwimn9q5J/KqpC2IBdDDxQ28f+gEaX
	 mwHT/Ykv9503g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A957BF9D0FB
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 00:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177621225368.19467.17375002085330674175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee109f4d102f3c304172dc85971155231f81489288479d77dd0193b320551526
Date: Wed, 15 Apr 2026 00:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776212253
