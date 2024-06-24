Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A7971A08DF
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 23:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719271403; cv=none; b=Q9KIgzO2qGi7uiGPIcHHrx7idhAJ8D9zVqjgXjTizHDYzbTBISf3IRhvaeI9/p/dDR2IUdJCAf4yrYFlstteThu4xUr7/X46e6dHl8aqRvG8SY1xYYBCQB4nebryzLocjSvw/bHbsAAhcgnpimdsIS5NCDJNBXu77qwCUumYLv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719271403; c=relaxed/simple;
	bh=SnbImX3JN4QEs0V/xVo2JZqVd+V+0wlQil9Z7XAPWcM=;
	h=To:Subject:From:Message-Id:Date; b=GsVtQwzBf1KpvBGC/MNqGdVgB0ixSfgG3yPNh0TYKUB584wX9z/kzv9gtVHGGPATztjWglUH8M9tE80Gj/exFatL36vrgIeyfp+WUk9lV//BmQuYQdBuk7kWEaU8/9iqX9kYbTBLEG/xcswtKgKizgG4brf8g+K7HWl8yhjoOXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aZOb0nQH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aZOb0nQH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E77DAC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 23:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719271402;
	bh=SnbImX3JN4QEs0V/xVo2JZqVd+V+0wlQil9Z7XAPWcM=;
	h=To:Subject:From:Date:From;
	b=aZOb0nQHoC+PB0dBvxqPu7y+V1ONKTaauOwci4OI3GhoT5WgnaO69um6U0/snBK1H
	 KRRZYdSRFJHi5dIc+HjJiUBzxkXQ2q2tM9h88XiOwOX4Z6pXgTDTZd0hP4cbAkzhJC
	 cXI/n3HkT05qKDsGekYnOB+BJ4m0RFSO1nDoOQBO6mdtYTAOJyf0qqcbPvTHY6/j6H
	 30gfrHCYj6wi2I8787HcR5kinOmTT2k8dllUN5nCAc2R7ni7R9ODBKzj51s//yErD7
	 Rtn5ZSpskrdidB/1oAXZdm8VGxYfMiFVlPUXAnWATWKq1MMxD9wxM8EgSmpXMAbOaS
	 WBOzC2yrLqXDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD07DC30658
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 23:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171927140282.28252.10751983027417668691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3714063e53a724b6ccb91cb8955947215965fb68d16ece5d448997f0750f28c2
Date: Mon, 24 Jun 2024 23:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719271402
