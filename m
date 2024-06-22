Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C94618651
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 17:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719076943; cv=none; b=bqDJaxni9Q2N6VQFxJs1QGqalbHqzyG7CBJhW9F+KETNnvAyqbQXCgtL+j0nhUe51IRstkn3bgorUsKOaPgSUprjMhpeKVuogyJ/A2JRlq8duwnrPGmPxkeBPXSFtLkZVIp8ceyjLWjlDcgxlsg9dkqsKWCKc6IeyRQbPDo0Ud4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719076943; c=relaxed/simple;
	bh=cwjgwSiajgZQ6etJZPP3jZfKbZxUU7YSM0NhdX+z0T0=;
	h=To:Subject:From:Message-Id:Date; b=SyC6h9zp/4SanwQGyUDVz9O0U5WJjkUVsoq3AOlYmxLn0HsTZgdPx5cNTCJMId4Lr+rMtx7sdruVjoTRy5mMAWAVeapZuOHksgPs7K4dox/Q57f0UURs4nesGpkTLjel2fYI31porh2Sqb2SW1azy9vScjR22F5qwyKc8gxvrZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pv+H++6k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pv+H++6k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF4A3C3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 17:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719076942;
	bh=cwjgwSiajgZQ6etJZPP3jZfKbZxUU7YSM0NhdX+z0T0=;
	h=To:Subject:From:Date:From;
	b=pv+H++6kH+bmcsdApXnbLEE2JVgjC36dhmWHTQhdV5pNK5sr/WaO6QQyvjbMS7AMa
	 gqC6qqVJQZ9XgYbvOBY5Yztphp03K42Ywtq+PaKz4QrWJ2vYZVr+RBPILMRSmCP9sE
	 wMxbrCD+NjVALPRaEnAUcrMK8bK249+Gw9lCVOipEuRuh99RZ2TgAuw4JPj4WbFCfX
	 Uf/5YLjixmnqp4+f/15uHhhMvUTF7GNXUC8uHOAwvNjmMBnUlzIaYRKeZMthapkyfV
	 htZDu1Mn5p2Kqk+3UVtRq07PZLhRBhgCC99iLPFgCJTu0DaySJ4sXmIs3RTijhdB1j
	 ZHI0/jyqIU5nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC9B3C27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 17:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171907694276.2930.3485936778951381237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b3d51deb28de77ebe753aab664eeee80ef57dd577cea929f1228a3fdd02ed42
Date: Sat, 22 Jun 2024 17:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719076942
