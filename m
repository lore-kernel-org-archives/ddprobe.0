Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1863C747F
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761461394; cv=none; b=kUOWsqyb+3wdcYAz6xRKUaIxMLneFPUI5lQuJMbdupDL8gc0Mhse+vkR5LJlR/HEOhwe7ohfxwmBk14aVn1kU2YP4sRqbmND2iiThzYVzLPMekQ7ecI3GM0OIMot9CimOCG83jv682n3laF5ji7w5X1I16KSI7KxY1sTvoZWu8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761461394; c=relaxed/simple;
	bh=gG6T0zWH0It+XTND/9YV1PjSbp/sFKSZCcYdgxW1TRM=;
	h=To:Subject:From:Message-Id:Date; b=ETUORsQyg0Rw40SETNi7eDB74WkcSb6N8U0iWdRcrn9OaZ7co5/sYA7mi48xQk2/1EYZAFi0fvXsoBZIEZI+M1HfsMoBUyskYeO+InPRGzTr01jzj/fKOPe/TQ4wXldLdfhOlk/8Y+OqR1CkVg4VOxZhYTdDuJQ6Zsyp8CbIsqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OpT0Ue0q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OpT0Ue0q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAB2C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761461393;
	bh=gG6T0zWH0It+XTND/9YV1PjSbp/sFKSZCcYdgxW1TRM=;
	h=To:Subject:From:Date:From;
	b=OpT0Ue0qVSOe5qKSpbGly8t4GnGyp35Gf8jpsLGOEN3jMnGMbyBNVI1WLSWXr2EkD
	 jEUgY3yOqdO7ElK9PUo67jNDEhb7qK4pJuY4SaD8A1lO8dsGKgCrHuKB+gfa+OTcM7
	 hOK1gHmxeMboujVLhEDdpXDbMsN9X+hzYdp63dWeFij5nV1Z8lXGbxF5Jz5hpKt20Z
	 eb5SrqHRByeM2QghdqJfLFN2PphL17wYPkCeeIST28nl8gRPSRaZ7DLwJ2oiIFdzoh
	 zlTpVIRiHdxbRLK4YggwGAT28HGdC6S9aDZImucE3TM+MnLXdLySjNnXELXkALIZ7q
	 R1CoTmaDYM95Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904E9CCF9E5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176146139358.4540.9003288687794520198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32942a17c52d9465da025e2fcf56566a6906b897c482e50ad47277b58c2a86c5
Date: Sun, 26 Oct 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761461393
