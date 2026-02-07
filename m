Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B9F42F6937
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 15:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770477234; cv=none; b=JMS+dy2LgXECYdv4zQif65CayI+6TSseHbjvdIVNUbyLKBpn0LW5b4jpBgXhfEZk/ETLO5/vFcSMwOIk4maCLyvPTD/jlJb+tI6PgxDRrmueIBurDmzIw/QRRMIbOXVV1Tu/srKPwBeyngxxBlBwp5EYjyI51zes9mN/dyT5nKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770477234; c=relaxed/simple;
	bh=yIsdET+D0UL49ykww+7S6MVp9Y7pp/xM6Rh/11LI/vs=;
	h=To:Subject:From:Message-Id:Date; b=cE/j4KENmhfIVlvewfUbBm6Dr6hpjwHyvQOsKITTnfA+EvOf4/qVlGSfQr2QZ28DeI1M/YiRHta+nnRmPypaHKkZDFMshsr0NpDHFv6MDHtQNwnIH/1QfC6r8uA+PFffq1Za1v90FeqTZTGOtiQV2a4aOl+AwVcWumnOUCZzcyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tsQNDxsO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tsQNDxsO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74BFC116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 15:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770477233;
	bh=yIsdET+D0UL49ykww+7S6MVp9Y7pp/xM6Rh/11LI/vs=;
	h=To:Subject:From:Date:From;
	b=tsQNDxsOz0zu2ygNQoUrRbAU2ZVRDh4S5c7/dWoPtpFHcGJr+3nv+xACiqQgt7h3K
	 L8qPRvrM6e42mORmwWSoo5ngFbcSeztXsVXHC8c9wDNHVL1U1GcxojBryV+pw9TY6L
	 4qQduUtNzepGG+9JtfdpNPbXpOT2LdhJa02sIyLKNvDCvw3qWTa6ezqC1qI7baKwJ6
	 eCOJDmzWFOikjYezqyG7XoFXmrapuJtRh6WyI/uzVNuQWZ2SEGH4A1PBJive1LASNJ
	 +FiIxUhBp9eUvUGEcJkGe65peJUC+zYx72TIax3u3poq8QQHWcEV6Z+IlEYpwjYftz
	 XE/okU4aGsfyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940C3EE0AE0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 15:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177047723359.27327.1576328764557633772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ed380de2c4c42b01b54fe4fdf799d78265b507731ba135c49870facf19b34db
Date: Sat, 07 Feb 2026 15:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770477233
