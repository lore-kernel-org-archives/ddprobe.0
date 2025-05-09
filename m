Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AB0225E477
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746822594; cv=none; b=d/XBu9Q2sbhwhQFpUWgmwechuE7OW7LCJeZix3Xr3MIhXX+ejg0TcVqDbzlSe9WRy14asEAC6dtTqZssTRZsJMkuf8vVfvN/cajrttb/jXRia99p8AbbqhZNCcZbqVcIG6jjmANpNctpXH3PDAUZvo8PF3CJTcVRnw/54ZufdGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746822594; c=relaxed/simple;
	bh=HZ5Y0jvelgdDQPPcJsASE42g0k3YRwygpUsbHDU3hP4=;
	h=To:Subject:From:Message-Id:Date; b=VZBEZbojqIzj9kjiDpcCI4ry63vTp02/gFtfeSUmWIGRARu8safUVDfWmWLBlT5c5GHaZmcMv6nyKD9Q52X8r7Zo1rUWimnK/yHOLSfnebUhcSh5dILwHQgcd2ZvAYJS9359fDl3bU/PPsPkXbL+8BHsBAumuZtTE6tBo4GtbvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dy6J2T95; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dy6J2T95"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF3FC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746822593;
	bh=HZ5Y0jvelgdDQPPcJsASE42g0k3YRwygpUsbHDU3hP4=;
	h=To:Subject:From:Date:From;
	b=dy6J2T95MA0y5xgmo7ZydBSNRvcIUqU9iE/4NhmjK3V3RPTjsZNIO1uzBgD26apQg
	 W6cd4rPDpIWSSLQCvxW5qvBpX8MsP7YP3XuR5h8IeRcmqvgHpBk8xCbPcruALOyWQa
	 XU6XQj8etLDGzHA/T+hzIxrKqn+tiMuwEiOlqhXnyfwaWjoiYDfXDQBe4WMQchIHig
	 eFe4I2Qx0udhdNJkricKwBMTX7k98Z1jp+vuxsJ8VTyfWnQLVkxY15gprAyQcX4NPG
	 3P45WBfQi3UPpqco6iwdPAyrIa2QNrfk6oPLfxvzR+1qtBHsVbYkk1CA+hhn94zqcj
	 4a1NlOMk9eE6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F572C3ABBC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174682259357.3297.325925318683651216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c743e1b3e18a2b5eae2c240993abd89edc4081752cfd80d7f0ff7aff6b8b5e3
Date: Fri, 09 May 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746822593
