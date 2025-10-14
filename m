Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BFB82FB0BA
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760438994; cv=none; b=gRX0lg8hQuX/DZWjPqlF87QF0VZfFjJFss8djwAmV1rvCWD+lzJ+nA2edEIVh2eeDFYppwgVdgJ8PDyGJe/3CBto7DPd1pJNSKJanjk3T6K3U8oB8YeFpfW/iG18x2agu1V4KuUbfnOAolEe0GhKhkN9+8RLs1z/cY8KBk2biI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760438994; c=relaxed/simple;
	bh=KNxLdqq2gMXBWzqa/GlFyUKH5Z/XcJWg+6wDTRr7BLs=;
	h=To:Subject:From:Message-Id:Date; b=MqbbSB4v3Txgom8ugdvCnpB44lB3PNT2QIDpo8P6/6+QmoHN59cw+rNsct/ABkGUZ+PosoIk4tqHrSCXMhoJyJYLzul9+U0j8NWe6wOkrdOaRg5Jbp69/Zk1VYQ/GJGy/5SOoIhdYmkR+4RYYjqIuFepqQ+v3c7Df7PkpfNWoXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iL+/K/0m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iL+/K/0m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2164C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760438993;
	bh=KNxLdqq2gMXBWzqa/GlFyUKH5Z/XcJWg+6wDTRr7BLs=;
	h=To:Subject:From:Date:From;
	b=iL+/K/0mGs29HXbzr2MKaH6H6e/gJk9hxYl6M0wcsZO1x/jrPCDMBjuou0lNYSZt4
	 eHCQ/5J7PxqjAQdneNk2oDp/Ve9sT2dvvqpbVbXoz9hsoLGYfz5HGo16/V8R1l54Rt
	 AZv4v8FwBHpnUfFfGSSel404oJZBNZUE967NwBb6adwaazgR0Q42mvVqiAPVMck+MA
	 Ylu3ySwlhMKwA72RceqqMOVtBswnpH6RsNGfzFtiaVZVJ6sGeQA0GjYg0s4noCFtMD
	 Rvdn3Ja/o7mY4Xz2S0jdUjhVxAwDsLLckpGJqLnIpTsenDvhb0m2xfB4Unubbr19d7
	 4lVnieknCYb/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBB5CCD187
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176043899358.6386.1947451634577832636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cd037486948e66e133541c7debce1a72ce531cbf4294c26f8528e82d7ea78d8
Date: Tue, 14 Oct 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760438993
