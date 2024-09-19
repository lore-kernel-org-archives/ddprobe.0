Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C99C8DF
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726709154; cv=none; b=iz5dYTYBr295ngWIJQwWW+LafdgTzY8AZl0vh1KeqBAMFM7B85eAWWRu5OsWXCfaCKM3I1iKJCzWlal7qoWX3HwbCGV0A3fAZM0VW6FGz+jDdaC+yT49ajY5x/qm4so4UdHVczGQ2ABkwhKiSdw/lN1nDWe/ZEiPuSj0WkeMKLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726709154; c=relaxed/simple;
	bh=FVDObUChdN71j+5zHOGjsLA3j+sObQyCFjea9HDeo1I=;
	h=To:Subject:From:Message-Id:Date; b=b2M3ImzDNYVHWHjapSltS8iV/AQdj7Xb4hcU/2thsVdoalQwa+fLG/Z662y9Trl5TvAioFEWNmXIZIYL7Ih48L9ImvwGO8nUybBTqJu5vw2plvxoua9Lr6ehz3zSyRCxLFF5668NzAyeS0ZHWDlw9EZjghBV0VZeutulYcZn0Uo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cY/8wRdf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cY/8wRdf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA71CC4CEC2
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726709153;
	bh=FVDObUChdN71j+5zHOGjsLA3j+sObQyCFjea9HDeo1I=;
	h=To:Subject:From:Date:From;
	b=cY/8wRdfhdC9I3VhAf412o9RaCBhvVRtoumtX7Y3HL4w1+ojrm+lKtWGwXqJ6UwYa
	 SerifLeuqWNVW2QYlp9Teq+ywi2NqEoTScaTpdtp+XEz+MTDHw9gUuwoba0hzWbs8u
	 fmI2/y7UeMu/eQBWbrG87v8nZqjdDXX6XEuCygFS3B+yfSt6gLQswrteVIJdcFgJGA
	 wbe4eMuskyUTf6KP3Iz68QoSs/zuwdbRxb6i4ZAR/r0CGTWqLho2Y9wfhhhs0osheS
	 2CJc4Igww0TX7PrwUiXhFvbTpjCDKCTYXVsTF0o1q74yeaeh8cRUSFl+Pzue6BAa2F
	 M+oIJge0Gd0QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 989C4CDD569
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172670915361.5024.17339663047540149944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10f527bb3ca6e63a13a8b7b55e4acffd0607e740a22cbeb8dc854133fa0e1eda
Date: Thu, 19 Sep 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726709153
