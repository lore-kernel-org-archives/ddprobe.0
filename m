Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57740214805
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743155994; cv=none; b=JAI13I4wVzkEq0FroNFl7dUNdWh9vLgIBWQ47mNKg7kqJUQUVhLll9tNLA6nfhidWg8pcZKGSdE+FgG4UxUrOfGm2Mqe2chiaoI5KAdebRx4o80A+kKz8dc8g9BBRSG+6p7KIs/YjutHGwhpe1OfnyxqpX3YZkJxCiW+a+YwdnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743155994; c=relaxed/simple;
	bh=rDhLvIs7UAWzlNXoPWcxlnD0lSaS+Lj7psThFLBk7D4=;
	h=To:Subject:From:Message-Id:Date; b=gZmjXlo/44VsMYm7tukIAYmnLYyBKy8ax3M6HQm5PMKI3Qnvsozb6LdOTOYfcfeBBhIZN/PWSwJ+RPk0XU1P1qaWs26dpAenjCCjY3xjXx+66Br3eBh0+U2DhbMs4VzbtBXn0jTCZMLgYKC+vLTQGixCMBjPUFx9HLUXYg86u58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JhbVSWY4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JhbVSWY4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC486C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743155993;
	bh=rDhLvIs7UAWzlNXoPWcxlnD0lSaS+Lj7psThFLBk7D4=;
	h=To:Subject:From:Date:From;
	b=JhbVSWY4cUuJbTosaM+gRYtRS38ggeLS9rEHBgX1IaY1R23Vak3A5GkQqLD9d1JJm
	 Dhd2hyvcUunj9DPsUK77qe6Q2AxINmFJAR2lurhZQ+NXaIqUhz6U/GMZvDNGpex79/
	 qTwh81JSC0fuJweDyvWZ3bqIUpIpRg9V+0UpB+K5kI7ewKTt0o054rmi8gMebVnHjE
	 0q56LYD7xEWuQSfaNktVgf3rAfzvtpU10hb4MLSSeG7r7pzsg82by9rJ8cQfOFXlyQ
	 syDrIhRqIYL8guPfk92N17/bV65hTa1Tqa9GnZ4XuVOPoTNWJ0sduUw2rwuMAbPAK3
	 nxG/5h7vsGfcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B07C28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174315599359.21114.6770357763101867438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14f84299467829862d1028f24ffb5893360078c728930c11f9c491abb75021ce
Date: Fri, 28 Mar 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743155993
