Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CD2C13B78B
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 19:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707938897; cv=none; b=cZ/2Z3qezzMVAeqFrdBvXPzP1AXKjojcvLUnVISlqO5gumF950QMPbawqKfUJG9T+aagD9LUOyQb+4xebYtRUxqlRnYgUNFQRr+42Su7SoFGzmFaoFNJSh8W+3504lkXN28gyflUHeKBPQYn+uEcZ8gzfdW7yva1v1XhU/pJ+RE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707938897; c=relaxed/simple;
	bh=zn1KGCKPGV+ssTw4wghGp+cGSkoljNT/wFul+PBAc/A=;
	h=To:Subject:From:Message-Id:Date; b=lzBPZNqXnl5MlBZC0JAEjMJ1pM016VQfl8PhevgV73kUii0AWJmz85dqeCweJTzG7ek291QyqmyXv3f94Cgr0+sNhsj2/Tv11LImkg5M3zF5IWf6z9wQmk8uXVxPkv+qWp63DlWxAAjReNil5q7qjZ8Ld4Z10Ky29ENeP07zPPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TzeJnADz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TzeJnADz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79E58C433F1
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 19:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707938896;
	bh=zn1KGCKPGV+ssTw4wghGp+cGSkoljNT/wFul+PBAc/A=;
	h=To:Subject:From:Date:From;
	b=TzeJnADzuh7/ZrSEO68nqn/nPfoDq+vEORk2SsrhNkhjhVjXvNdzRbo6ALmVhUwBV
	 7CkmtMnKNJiNRNIO7iIBQNavFClVQSzsH6l87AQrBf237BBr883R0D8nh2VTVy+IND
	 uKKX23mtLam934dTNw1X4qDQ1wM2U2Vk9UHcFGyKuj1oE5SUvqAJmdNisG9sdkjTEo
	 CpjI5XgfY1ppA26GtH0me5GBOYweUmzNU4dA/r8XY64Dwk8SVzb7iS5PrtI+WIMmH5
	 gjDNuoX2SrpsHW1b746wgJtXnoiV2sb74NVuU3wdnqd9UueFXrtimuOVzZhSS91Gnv
	 510x8LESV+qFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6121FC48BC3
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 19:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170793889638.23833.1167925960348746254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a31233b963e8a37476aeab1caea06a428a51ec8f19e6652f9b3d7e02c183b5d4
Date: Wed, 14 Feb 2024 19:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707938896
