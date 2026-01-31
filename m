Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19F1F22126D
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 22:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769898834; cv=none; b=kmSDCKL1PWgk9/Pn7Q218N7OetTiCdamFZkEDJKl/TebXUXIwo+PDP7EbDRiY4at/bXEFvfnH1ToE9sgV+xRPdMsTnXmAJb4dgior5IQN84QDBSpzwkKXwtu/rjDzlt8jxcfASXim42nI8RhJlyFGZCkfVm8jD6x7PqOVuo4qC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769898834; c=relaxed/simple;
	bh=yle1nRAHmMsupLvj8CZZd/otyebMQKbQmq/tUA7RD0Y=;
	h=To:Subject:From:Message-Id:Date; b=irwTb4lh3F+JF0dJyUrKJ4pVr1bMP2Ym069aaW8SmqPDYswzssWkmBY28kVXyHULEk2I6Y4EuyfgCWX7omM0VU7SJ1Y/mk/bKWPW0bUtsbmZLUXtnyhRcJAg8w9g0d16LvnU9vYmeDAMJ53Lucf4MB9BW5FXnTtrws0tvVf/Nss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g9HqMnP2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g9HqMnP2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D34C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 22:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769898833;
	bh=yle1nRAHmMsupLvj8CZZd/otyebMQKbQmq/tUA7RD0Y=;
	h=To:Subject:From:Date:From;
	b=g9HqMnP2aCBunKYy3vZMwIQYBDDz9RHCN9FoNLFzI0swbsuO6hYcJALs0Y9TgA8Yq
	 hcZB3Vt/GdMHrM9uTChV1tSbIxj8Z6isIN5XZ0WumTZrG9z0FdwagIRojbAxrrBtTp
	 feX8RGq0DL57YvqJrqqRuyiyflkr/JflwAcvTihtMR6F9wvboDdQ4eFqoy+sxGcIpm
	 A0m37y/Pz+NDrw0myjxt3EZBHYkmyJreLEcIQrqKOMa9MIbfW36UiMjxs5IC3FyWBl
	 mS904TsTc8JJL26Vkb0HjiZdyLjI+OEfOlpVLvmKCcDXlnDaNsb0TCww2B3sOxr3M9
	 z/v5ZuC9fB2rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9424FE7C6F9
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 22:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176989883357.12145.7780225413197811332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1ba59f50e88cfc3acfd46f37a78e2735ae03dceb49c4cf963797e2ad4e51f5b
Date: Sat, 31 Jan 2026 22:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769898833
