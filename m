Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E64C2C08B6
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 19:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764357174; cv=none; b=q8/0qQHotB6jC3lRMPMJ9NsQW/4maTVRQ7kRFu0ZS6mwqw+Pp6mK6j53OqCE6QhTmWTLAr8+IT7xAPs9+PoxBAJZpvYV77e/viitO7wcuteOoLWuW3sJhRc4FmoxK5QMqKTePCO4J5VG+UU6cQQWVstdRqOzv6eLcry8PVppkbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764357174; c=relaxed/simple;
	bh=IqBcaTnoi+i3DosP4e0sUjDycPHBSrATq8Vw3x9kJFo=;
	h=To:Subject:From:Message-Id:Date; b=mFrxjmOhIfD0acbIyggsAoPy6e1eyxlPiFkZMbroc6QRfyUXYLDkozwz0ZsSByKjABmtCv/i9ItI4mr6HjE1JtkX+lxLux8fzdMf9OVx+1wcqkp4XzLZmaHSLj8b8r9qsHkF/vfyTw5AQ05MeBHwFjP4dmu7YRJdaTzF1AsnqwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hkkBRKLo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hkkBRKLo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A999AC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 19:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764357173;
	bh=IqBcaTnoi+i3DosP4e0sUjDycPHBSrATq8Vw3x9kJFo=;
	h=To:Subject:From:Date:From;
	b=hkkBRKLoyqPi+S8av3uZ6NsER9FKVQZqiVcbBfitp3+jMmM9cyGWP5Geac7p9HHkJ
	 9vm9Qj+GWt4MlgvZRaHnEdPgvbhHd/DZQ8HRMD7Vb69AncFinuN1VVyJbpIvrZ2wbA
	 SE9Ufz6ncL49C6wUSx4quzk9NSq9954do2YUtaETNChsoM/80mlTcx2dIzcnkKjX04
	 6WEpM47boZ9ms7vhNsCp3daofXQ5vTYQF1TLs0FDZEHrllmXRYRJ0uzcNPlvUJ8k3z
	 2IkTJPoh4SKsXjFxCgYH36/cGB3gAfJ2JtWPUgzkUjJC9DVEIPLG7pt534PDYQTb8W
	 qjsBFZ3Dgkk2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96851D116EA
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 19:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176435717358.10967.10876409227794162026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79e3947bdc8064bcac539d1a7891dd15b07951a4cccb3cd69ceaa0706b61887a
Date: Fri, 28 Nov 2025 19:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764357173
