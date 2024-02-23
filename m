Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1812712B6C
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 07:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708672697; cv=none; b=ndGfYhLJJrCJsRb5V+0UlB4p0ZUB8hzFK4DAK02h8qc/meczkZC/iJ4jXiZwqxP1RsD0ESRoQ1VBicRfOaxIJkIkyWevsEIv8rt58fdx9t3+vxrAfWgZYAQEnn6IHHSKRTIiI0nNLM9ERMlP60zQIFmv3E6ny3mnh6O1IvvAOqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708672697; c=relaxed/simple;
	bh=zKtOpqLq7L9cwvrgG4QChX4cy2NPlpEn8nlBAkJsa08=;
	h=To:Subject:From:Message-Id:Date; b=SDzQF8DrGDRb8HqbHwTw56XJuhUWHvNaEKFbWrEDaxKDtpSuOXTaeGZZ+zREAS+rXM6K/EWSNUot9M2sE5OcILYk0HIgNvObTDqK9b8ilbgw9Eet++2O6uxsF7ugNI9kGXP6ZNXaw/RmqOTa8iX8zasy7Nmx25P1rr4BIfbhdds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VER4oimQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VER4oimQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83B8BC433F1
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 07:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708672696;
	bh=zKtOpqLq7L9cwvrgG4QChX4cy2NPlpEn8nlBAkJsa08=;
	h=To:Subject:From:Date:From;
	b=VER4oimQjvFNLJP4rwSNbIL3tjIHcsvM9PDthyQ8SPINDzHSXpD5WpB03ECK07Pgv
	 izwsxs64OtIdyoW44qg6iNqexnFDjYZoBODaYdLJwuJvunP/77FsfG7kCJjnwKuoKd
	 WGwHQWfwLfj4PQzWb9vliLVfBHnKnVPfwSJPpnNQa4ItmOK0QEDFB1N/DLMTqk50Zd
	 HKFvzKwbTvCHZh2gHfW1KrTJJifcUMpq/aylVvlZ4397JdldtcpCpYinEV0zSyIe35
	 YZv9jG/M00dOk2kl2NDb19cd8P9NMWDKvtV5Wk4kgsJcEaDXMc4vURQh9dxd59K5zD
	 b2J7SNmVbN22Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 679EDC48BC4
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 07:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170867269640.27939.11709613541287481167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1db846a952738b3509693950a20ef955a68744534b7cd014ed5496b63d8e5f11
Date: Fri, 23 Feb 2024 07:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708672696
