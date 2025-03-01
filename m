Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5670E18DB24
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 09:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740823134; cv=none; b=Xv2hZuAuMBkk4GYUetsuQI8kupfYlczaYmVd8YEFhskHW1iVr9knr75gcd4jPDRz0YjvAYAHTW8LK4d4jy532gaK0wqxwoQxJ4IXgSj03aEIwy2Gi87YfegVm7ZsDyCMBTHhatknYQ7rS3ocy/gRpNEwhWwIhBiFe7RJDVuN4HY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740823134; c=relaxed/simple;
	bh=4slKaxl8M06BehP51zs4bW1wKyDzzyfWGyAl2+a8fe0=;
	h=To:Subject:From:Message-Id:Date; b=Y+0EXxbyWuJajl5hjVRlwOk5LLY4bkzOralorlBU8I3C4j/1+k7vaSPgUAck/A/ZZC7TcaRQlgw23tvna7bY82NBi6tuS7WdbmSzNfIyDjUbX+6ysnDoC3NG24OiaFrv1raGFNB3Ui7xUOwy3wO3cKxJUazr+HsCXz3eOWSIQ4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I2wdH6b0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I2wdH6b0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5635C4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 09:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740823133;
	bh=4slKaxl8M06BehP51zs4bW1wKyDzzyfWGyAl2+a8fe0=;
	h=To:Subject:From:Date:From;
	b=I2wdH6b08ZEWcYs3wLiDiwaSU8JbF0Fs8+1C01iW3vB7uK3SUcwbRAVFV6btYKO3e
	 PV2Jye8MWQVhcgBeI6OvRgoCXfzyFo0XNUFig6qpSHS0ju/I7n3vpgEchq+mstKo5v
	 ENnJkR1us/oLNmnSgu+mcByGmA70LPVmN9wveXSDA8Yq/Uu+oFsIpUJtaMBDj4AcOz
	 0by8Ff2LzxKMxNd5TALhQQUE25srWooD4JVZ0bpBpE79q7C9zyNNI8ExQHlR2iR+Z0
	 IOxIrGm8jb9vMbgDnaB45KhDMfqZYdZeWIvlEUqRaGU0fP+4Tr7cQcp4KbkK2EofA5
	 8tCLW7Nzx54Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E333C021B8
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 09:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174082313363.16049.12144631491144131632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97f21d14c3fb52a66aa27f1c4b2df6767d0eb612da00acfabd005754f6192a64
Date: Sat, 01 Mar 2025 09:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740823133
