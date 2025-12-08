Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 399D71E6DC5
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 20:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765225974; cv=none; b=m3kuvQGdemCxVvEyu0AHk+7zsQbuL0oUZSarJ+AEzsncuQmzaij8hyxjk4VmpGplCVbDaM7LjzYqM5OW5KSfkKttbMG4gA5AlCgy5daQ3L6xpEIr/6U+0pYF5SyV22m7G5ahFcFdJgeI8hk40DRvmucF312OUrvxlXmEL7Sgo00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765225974; c=relaxed/simple;
	bh=1rWYOeIEnpDXVS/tXWWH7azyFjC2drnnjAYQ/3/Yckg=;
	h=To:Subject:From:Message-Id:Date; b=fHeyY86wdiJx/9txUyassytQA1BLMY4R1HShKx7QffayPXwCghu6EPHbhUYoci4HcoHm8oSf6j0NFntzLfXtcaY7XD29GXaurM0vqWiu4Me1H/9yz9LMW6dFvJQmPxsGbcGobhfKpxQeGdYQhm0KKOeazp4zIkoxYYrDJRzJ+HA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aHxZLt/i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aHxZLt/i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADAE2C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 20:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765225973;
	bh=1rWYOeIEnpDXVS/tXWWH7azyFjC2drnnjAYQ/3/Yckg=;
	h=To:Subject:From:Date:From;
	b=aHxZLt/iwe9OGLuYLsaigpCYB54mUI80l7WTnBXewBRvV3YFwpvc7PNHS6ZSLiYJH
	 6a4xUmWL8WaB8hRPt03jBCfL8I2qF3KuDwfybjGk+wHDcijxfJjT7HnDfim0bzKXC0
	 2mrTm8B46gFivRuRDJHoBbtW9aCD7Oohq5XaE962ITqM/BcUdxhYTlvFTqDoCdOt7K
	 6HmjMTo2az03UUuKc07CLUGuEtNwj/HVZtU1Rn5e7PtHLAE/ZelO7wfk66Vxgi/goX
	 nEFTZwb5ePR1bXljwFMTj/fpVIjZ62Xdrqaeaf6V9bl8M5PhakG8NejHMfErlRwY9n
	 GISWu0QS7u8zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DD9D3B7EA
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 20:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176522597360.14227.15145866869553001221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77ba54d669fe190113c42989894fd77d3ff9078ee6672a016929be681a78cc0e
Date: Mon, 08 Dec 2025 20:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765225973
