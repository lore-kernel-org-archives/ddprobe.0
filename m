Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 354001E871
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726344354; cv=none; b=d9ny/+Ka1PYWjRTpMEA9lcYF4Bn3cUUMDlI7CoWrCik+XHuHzS2nYh7Dm02XNwrhCdTFoRDvI6tqAxwL4sBFswt6KnsUj9o8i9I2meUvdNDHRdal4swmnaIXTKIA0lNC2W7Jv7tO+uBh/vP0KxWP1cQ7Ts05/cIMlvbviMyt7Y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726344354; c=relaxed/simple;
	bh=vP0pQw0vChIDiGL1YQeJzIA1EHPk9WwergXeM4DLXBs=;
	h=To:Subject:From:Message-Id:Date; b=XYBcmwDvSU7Y11yHfKDZloZjpH1AhtD2F/rpNxPcilST+p4p5u5nHug+ssaAsArsqwBBwc+g3BBj4sq74/glniTlSkPDxDjEQV7UgDO4W925EnMz+eNt30ZcesTcdM0UuB4MKyPfML0oaXaWquEnxggWkB7Ldohyt1KJAzJJQjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U98a79IC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U98a79IC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0A30C4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726344353;
	bh=vP0pQw0vChIDiGL1YQeJzIA1EHPk9WwergXeM4DLXBs=;
	h=To:Subject:From:Date:From;
	b=U98a79ICEIz7R9KBzxsEXzr9AmsGYZzD65bzUuVq/i13f2/GWFFyR50ZKUsI7AXxt
	 rieNXwdY3I6ZJbz/ph6gl0Q3pSxxrfRW4ZgXfoAAIsSQJCrsepjAJfcHEyKWvkHnOa
	 9Sv0Il8hk78I85kc3HEsbcGDGq4I5eHdGz9+S/rMXxyTp2AAiTBvwTb7PeNES7Pejz
	 HmzdkOmsMxCx6DJOxd2moJ/soC1QDjey/fAe2NWflDyakQb5djjoThggfdwnZ/rtdY
	 5Ft0WgPeBosJVthmQXhxONJUCf3HHrv2MH4LQ3sv8WfQFWodbr0t3dz7alO3R6XfEu
	 2jzvKUs2wiThQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98439C021AC
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172634435359.5172.622129913432178142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59753e07f12ee45a8899360a6529a2789e8412cb2ac432879c85b336ec784cbd
Date: Sat, 14 Sep 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726344353
