Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BCED3D9044
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 14:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774880694; cv=none; b=h5AW687yC8glMwC9Ikx8lOCDj/haAtYttpUhXEP0wyTpMulk4fXZJ8ALfhOy1vcK123N07+Vg5L8LAJOevnX9c5Z9NaJ2atkJcpTeQ4czAma9UIy0fbieYyRQ2jBqRV9LcKE2UVXY3jUM7wOwqgnYVYSu5uWebmo40mOmnIW9DM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774880694; c=relaxed/simple;
	bh=5Vm+Wy7QE9QaTgaM63GUWMcu5IRP9f7E8awcwYCW7yc=;
	h=To:Subject:From:Message-Id:Date; b=FeIkEvWcn9w1IbBPujnivdYaWXwqxzSEUtkvzP4KTrnqpIBPumWrUFvASHChcLl7aMeXe7F7CAlito5712ZZUW+xp2MYsNM6PMOjvXIVBcvpU0f7jtWwcZiuvsfZ89EXRX4KL5odVz8dKOisgRg1pnBA4jHVRQpDSYAl/4kH5nE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ujBfy0AH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ujBfy0AH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1E54C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 14:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774880693;
	bh=5Vm+Wy7QE9QaTgaM63GUWMcu5IRP9f7E8awcwYCW7yc=;
	h=To:Subject:From:Date:From;
	b=ujBfy0AHtvZRkAcfyIeIhhFIQWZbsoIVHA708zQZHsc/4XdVafOIe/rt3mNb8y+2s
	 riQ0FcpSTLRr1ZOhd1uYELv2e08GCcttaGhBRPY1n8sXwvda7GqNvt3NjkPwmxktqW
	 ZMHGhSvzy1RouwHpV2LD2YAoq0NR5A4X4CDME0T6KLMcRdD66takEx32fmWIDZ85Io
	 Sr7qmEcARKh4AUQt/WQ3qq1uW0VdmiY0PWFfpGWRFZ9ND5hHiQM3RaajWnHEG2MUC9
	 15YzIQXz5GSyqlIVDAbTaD1wHeEKkGzVF+5ovAv1qUiyapkiFQw60DHL6wVsV0KLn7
	 c91b1iWPSwchw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DE3210F3DFA
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 14:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177488069363.20763.8712541166599418463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaa47c7c7e6ff60548dfb8d2357fe5c0a18b5aaf51f7c879d3f4204d65856ad9
Date: Mon, 30 Mar 2026 14:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774880693
