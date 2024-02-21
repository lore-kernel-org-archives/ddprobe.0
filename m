Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 119673B185
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 07:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708501697; cv=none; b=hQJlZ4NYWlKj6P54IoS18ouJRz1yhajVoPq5bgNBvhskfVpPXOaPrt1PAQOyEc+h8AWPQCi6vvaPk6ST2mV66Ad+lGZrcGkGEg+aj3NppcS3UMixfc0KfaCo8EnTbrOj/FkLVfCoBbGhJwXDuPxaXUbiLsdKAt0lesIfsZC0IRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708501697; c=relaxed/simple;
	bh=UD3akmpHDfTX3bjKHGxtcsMCI/+JLrp16Ci37//9tsc=;
	h=To:Subject:From:Message-Id:Date; b=o31dpdiaRruf4xGhsDbCdZgfHfo+vReWyWeyugUba0hZk+LCaQif0iei68+WRvoWvRU8ICdf7x3PbhsFDCygoK6SBt6Nu2kWP8/CqqZnF0fFNgpb4Z8MaqKPulO8QBwxyrTpLqq4rNqwzZispQHABbujs9AULjc9CDJ+SpBHUxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Akogsf+d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Akogsf+d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 836D5C43390
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 07:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708501696;
	bh=UD3akmpHDfTX3bjKHGxtcsMCI/+JLrp16Ci37//9tsc=;
	h=To:Subject:From:Date:From;
	b=Akogsf+dhgc+zVGiUi91+JzWVDQ+lzzf+cd2tguaLCELrAigdPzqDgtkJ2PS1k0S8
	 0WM5d/8590bqOxu1Q7JJinFguGDySQhqDEBLZs+30mgBuSWaMozlP6o6mCfBwzX+pw
	 fUaarzwf/gxszNA/kS3ojX6IPw3VCh00QO3WN4TNBTlRedfB+dLNKqTZNBghMlUzG5
	 qfJGSKiTrkjlVx6AfYecffUuOSkeU6gMoGfRvyQHoihFNbsEXqpeyZHub3FGn1dC15
	 MAYkPhZ4t4HlxKQycMxaoyJW5UIj8g9zs+bloA6CI/TTfZ/tdIX1huDsnoOnr8kGQH
	 CF2kU4RUJR2uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6799CC48BC3
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 07:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170850169641.5147.504747729534617948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4913d16d63dc314142b875e74de274c8afb9bfb5952c3882b58e32c2e30c4333
Date: Wed, 21 Feb 2024 07:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708501696
