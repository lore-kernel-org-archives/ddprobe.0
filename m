Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70E6D3BBFAF
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788106234; cv=none; b=M7nHYXsM1Mi2f0Y/aVEYnzFgnVujPelR8gLOgW+9ONLd8HNJJYFLwGTI4j0l7Ov3jttER1Q35iodxoln+9uAErxPlwzCItjsdN3rQqpn+7RFLXN053P9TYiXGg7HsYdAgkB+e2wf9KB3cMxF6cmO97LmBoDGfyxyHZjqfz9CpxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788106234; c=relaxed/simple;
	bh=wgq11AyIVDZA8n9yz+IzoXb6JIoBht+g8oLM3U/zyLM=;
	h=To:Subject:From:Message-Id:Date; b=msWzHF5oNdRKCLyAxd30oe7UuORNkoxdWU1V9cuR8mn4ddi2vBdyExtht90W5eBWPAXoTD01F2GH3JwYwBC4Sv1RLfpfPsEFbO60XY+LkWPCdZof6Qx1VxMfe+0zyp9W9y14iN264wTG275Ax1X3ovGX8EQWQaV4hPCw5S+R7ow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RMLXX7+h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RMLXX7+h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D65A0C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788106233;
	bh=wgq11AyIVDZA8n9yz+IzoXb6JIoBht+g8oLM3U/zyLM=;
	h=To:Subject:From:Date:From;
	b=RMLXX7+hG+vFVgcRFVzWB3JOD/KD0Klcnj76FD4kA1jNsg6w6Sg+jhk3FIGg+FVQr
	 ZsEZE/HyZCb0srEHKJu53tXQYzA9AHqL7Xy6iEEYygW0lrP3Qy6YKfnAJM/NHDVhux
	 M1zDw4XNJc8lr8gM2ZMdMZiWX1IiOuV9b49iAaiWufy/5kafu0hkKu4pJpDvp3PkfP
	 FSQ2UBHpjQb6TnFoDcN/ME6nqAJWi534L7PelFx+5dMNEVzCvHq37ovF+pYRixz+PX
	 MP01A9tlChOq2FPyiU8JHfnQHek5zm2IhlyWi4E8lt69YaJ+/hVUid9VD7isJL2mMi
	 iv3pKLXVCQOZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE12BC61DE1
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178810623368.18115.15197891755284103313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f88e481a6416dea9224a8dfda0346515fc8d7e4f91779704adf026df667e0bb
Date: Sun, 30 Aug 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788106233
