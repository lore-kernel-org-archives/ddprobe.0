Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C51A31715F
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786176634; cv=none; b=siWCeWCOI5He/iM7vfQeNy9+ELkq5kLZUNh8K3fXBK//Jcp89P7Q0t8O+yg9nX0gqYWS1qymeJIQDJhvA9sF7MxTAsNXpGjwohMNhejr8dWsO58CgcswGU0R20/WoOOomDTU8rzjW0/Zzz5OrwXj7tkZsbpiLlkx9/FpmG1NF7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786176634; c=relaxed/simple;
	bh=/6ve4jfV+PZJVBQytC7kWc3zB4YDPmz35br8QDrBpgg=;
	h=To:Subject:From:Message-Id:Date; b=KDhyZ9LUFc7TiG04NkmOzpc5FG4UY3Xt5s5GA4/bvt1GqX43a/iKysun0Y5LX3Zn7xHflxk+rTctmFUoPRjhkjSaObwrwH93KsnwthxQjjSL9O8kGz1tQWVQD6Bg8HiexzOSG/FgZtDs/vkB3bTL7jTYaToBEPyZ4PBP0tclm+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SSYWI6zj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SSYWI6zj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD81DC2BCC7
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786176633;
	bh=/6ve4jfV+PZJVBQytC7kWc3zB4YDPmz35br8QDrBpgg=;
	h=To:Subject:From:Date:From;
	b=SSYWI6zjqOIg41HlElNNN8zU3dDnhkA5N/cQ6YM5Obf3nsHHCTzz+WpsjLClvoCX+
	 qb91+QO8E3Y0UgGB0t+lOlmU6xwPLcqKN94+VXnV1CnxL2uSoA7s2tOeZJYugx6cve
	 ZsOtWR5D7MaBtsYj5XDanU5PA36psSD8zaJEW9EYScFa7cwLikW2wdm8ok8NcRZEXx
	 jPKvORBLlzhEwmlwBItEbceQoE3oc4Mpw9OGbgEgKHDqcuDv5TkxtaGSrQu9W29Xns
	 SVbW/XfKvagTVAUDoF3y0VSRYi8q5AK/nUGZPocWOFfS4F9CLXt3lsAE27Dg92U9s7
	 Z8AV08G10dBzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB108C5AD2C
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178617663369.24885.18116949081315546461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a47dc4cd34d7eefb8824d84ae9718e5657a53cc9fdb46b385cf66fe500b63f0
Date: Sat, 08 Aug 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786176633
