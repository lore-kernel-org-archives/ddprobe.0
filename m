Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 172972DEA8F
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761994794; cv=none; b=d6IIVJXyqH8T7n+k4P8jIn58V3j3hMl5w29LFPJzlFWw1x7zzge670J/L8e5zulFCraocv57XiGYJR4tI/E+inxIEKyoCSzckTyoKMIt2AdIoRs+dfYgPSsrcEhJEdtxFGeRUdVsp3c90dmC2nRDF/fsxhyzpK6awhDPK4fWmu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761994794; c=relaxed/simple;
	bh=vsGgw6D5gH65/vH+1peWiBcp4zR9p+vtw5eiJIXDfRM=;
	h=To:Subject:From:Message-Id:Date; b=qhIyJ6Vc9Kqd6znQFlLvWQ0NSFHQKUmRglWcHfFzAePzKD1u8klp8BZf3mDGNKxzYX+BY7+ICSALKstHO8aVxvhD4c2QW8bMcChi1JafJrkApIwgtZy193wfwumRPArrX6anCJSw9bB0eJGWTK90DAiLDHvWbY/nlnn1VojOz8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eK0yvBN6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eK0yvBN6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFB77C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761994793;
	bh=vsGgw6D5gH65/vH+1peWiBcp4zR9p+vtw5eiJIXDfRM=;
	h=To:Subject:From:Date:From;
	b=eK0yvBN6pQjLSyedlfnyYlO56RjejUU6C3Rw2Dq2xBo3l2mx9xVXZrWmcZzmi+/ig
	 knayTxiXsQzHPYKbTu6wUk0t3Bm7wo5SY9QvRpFnYxN23FqjriMlK5A9ANJ+rYKUcT
	 ij6UDNqyR+b9TH/FMe3wVxL2ETFKslup2vp24+A7jgkwg2XskspaVQevIEKuxN4X2k
	 xtcvvs2cQ2Uua3u08ye2GjACfa32WBWl9AvXRkwhn3WYS0nVrrO2rRBh67XfRETEGz
	 Zn5GzWbqhNCuTDzS4kZCFxVQ+QBbH1fULIOT/eJGSTYYA5DGk5OZDwFHss20jggPZm
	 EIKaY4tri2Qhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CAAFCCF9F8
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176199479358.20532.9883192604914888424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 731c46f75aced15d693f1688e863d2ef2c1d431522d9b0b4a80f8d253bb17979
Date: Sat, 01 Nov 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761994793
