Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 504EF273D6D
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 20:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777753654; cv=none; b=R3GivVnBRl8ID20jnxM3n/WT3F3vVDcglxNDR0joj7v7TJWAS4CTPdrbY5ENdDi2GS6jftiqnv6wo349FMYc7gscKHT3e9tdaGjCPWMQaR2blIHT5poGkdJE7phgAxBM0WmQZwCaxw5EBwTjZOFgqdWMQDOSZTEAya2PkaxN5HQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777753654; c=relaxed/simple;
	bh=d0OZGEuJL4ecZOIGfQZLoN96CZIPTBlVPA0tzfmD0Oc=;
	h=To:Subject:From:Message-Id:Date; b=H7+WwoN+EFHnbqhY5zhE3EXyMwp+zHzvOd3RAHS1+1ctu867bKHdwvAOtqZ7O4VdUxN7u0XeztUlixn7APMH0PNg2eWIxcUpGSHtj5ZSQPkYmkT9qyCHgiZYsTMKGOYfiBB/f+Tqbom3wZ6NEUVTb4/QjdzwS7nP2rTAd3HzAY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W1LOdK0p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W1LOdK0p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0ECAC19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 20:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777753653;
	bh=d0OZGEuJL4ecZOIGfQZLoN96CZIPTBlVPA0tzfmD0Oc=;
	h=To:Subject:From:Date:From;
	b=W1LOdK0p0TjZvRFYhCjt/7iQ35vh5dZmgfUF11Ojff9iwVjLpF+QByrJBrjHx+bQh
	 zb037zuQTTtSNtyazIK/8VmOm51RvwcJEyXqiQRRBK3lWyq6pszBM2qxkZaPeYKD/Z
	 bGZGtRDR6Gqs3X3zZ3c7Wg4D4bx5u0oXvz+uYgCxLbwFCQKYoVaZRF5V7gV5Ze44n1
	 FXR/r30WwaU5G3j0fusY1Ryh5/86kUCYos4OXbd1YlkHxvtL/mb25xVaWmFJLfDq05
	 2pcgSXZxoHwISEpnAZ6eEXKwW4Q0ia6/rLwH7JVOlmdDXxSYwqJLxdpVZcThfl3SFO
	 M7mI2PhkfdNVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4EECD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 20:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177775365368.5038.9222098847371248424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 401fc17a547e60a4a34892b04357b9ee85ab2cb8d166f089f06cb425befc34e2
Date: Sat, 02 May 2026 20:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777753653
