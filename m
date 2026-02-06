Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 062B42D9ECA
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 18:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770404034; cv=none; b=k1xyaLfV/fuER/MJFdpQ7K8VlfdmJhFsXNerRqsIqXIJTVHMMeiZ3bCgLnc271YDXSUGHjd44w3nuO6DBS8z2R8/oZ3lJgzbo3VpfHcdG+TSWy3UTFEEonKCm7bOR1eKDeKnpXH+IWCUrCDnngazZhZI9UoLfJ7XSARy4aHe97g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770404034; c=relaxed/simple;
	bh=rRtaFLxpKDrqTu8iI28i496sEANc6Qqv5M6VMCXytgc=;
	h=To:Subject:From:Message-Id:Date; b=jvCe3gAhzLxnnDvujTCs4ZMkc64ot4qkzFbWApsHc8OKbD1P2TARcXFcSxN0LUy+ZpRw/L1O8Q9H5Ykw6sK6S4Z75yB3DxMSdQ6aHfy7CZpuoi3b7lrC0Z/iz0A9zsPfSXLvbSAVsZP5Evha1+3954+qISptdlFbKkjytcUWw8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tFVfW86f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tFVfW86f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A963DC116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 18:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770404033;
	bh=rRtaFLxpKDrqTu8iI28i496sEANc6Qqv5M6VMCXytgc=;
	h=To:Subject:From:Date:From;
	b=tFVfW86fginV9PLYUX03LnXX636/qjXVppxZFthHKEVesl2AWIGnMUu2BxXYZIFzu
	 lPxcaHYWq50e/XPvYQmoXp6Q6cTT+dVHvsKw4Wk5424YFLmkCj3Ar7AY6vMQdWWNBk
	 Pvbju4zlB8oF0bGVR2a2OOPl4UdXrRzuJdb7kS5zw0JoX54fF51KHLQ26TKkY5pa53
	 lIWhR91bBTrZMbwHx5Wup47NvXfoXjgMStetS4BlQ4jfzRg+3HQZx3WTt4zzTXab4d
	 g8wrqDlQhM99EZWL/j4e3Ldea6LtL3BdD+SZimnNnRY481DsB92IMMzv3i17zNF0RV
	 bUEiRPl9VlvWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AB8EE6B48
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 18:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177040403359.32008.13530252811061901036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77d34daf3d195ec9875aee82244c2e6c2b43f931d9e3ac7193b44dc03e43cc30
Date: Fri, 06 Feb 2026 18:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770404033
