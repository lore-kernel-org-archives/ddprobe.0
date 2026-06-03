Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1391C36A36A
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 10:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780482274; cv=none; b=EOUcf9j/4ipAGtjb1gCurmCBbWqWn2QJHWLRK0aV3yijEGNlTb5YmZYWUpRL4FFTs4eDJBXO5zoPwLNm+oPx6vlEvz6Gw/oTJImZzdXb20W/bRqhoYf8O5LD1YSpcI4ObJpJ8+eFHFzzCyQykAkolvZKrRP3la80dI/hFz9wY+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780482274; c=relaxed/simple;
	bh=jqhqwMYD629uJk472lZTaWawcehQW0ySQyQrk7+Xjew=;
	h=To:Subject:From:Message-Id:Date; b=iXe71UnpcjvEc2yCYVsynEaQ8/HdyfGLi/yOvOr8rKiejgHolQ1KnX5XkdsrYXwfal1CV8wSI4pjailqkN05kAZQNXAiUmvuPFSRfPyEUeOiYKyCern93xjDslDWcOeKzkX6pEZ5YqWhCR0R/jbNeboiv5zLY9gsiEEsdlZJPe4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LpBw3K0I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LpBw3K0I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1793C2BCC6
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 10:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780482273;
	bh=jqhqwMYD629uJk472lZTaWawcehQW0ySQyQrk7+Xjew=;
	h=To:Subject:From:Date:From;
	b=LpBw3K0I9j24k1me1UKPGOInf3x9AKYVMHB0omj+33kzlYyUKrjdYaMUFCex5n3ca
	 vx9k3oKBC+7GhKjewNRrW8o1Y3x5EUnqFcqaPZyHj1f8gPIgfGOowgFSnCiyWjqJt6
	 4RIBgR72ZUeHg8M6QImfbxqYo7gLpcsVsqpLXitex6VM5ClS1GOw82bzWIGcrExcRb
	 wfYrT2IS/tKVNa7EVneU5HxyIqN+Cw38njvJtv0pVlX6OJQdTUvuM4jWmpQp7UG2PX
	 o44o3stegBiGF345cGOzDykr7OFW4Cbgkb46w1Y4dxee/mpBq459Lrt6mFTpt8rFji
	 enuFVD7hSaJfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3F3DCD6E55
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 10:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178048227368.11022.12470276281923327271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ebdda402e1c6921d77d3932eaff357dc1dd8f42b12c4cad88eba4dc2c1dd3b2
Date: Wed, 03 Jun 2026 10:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780482273
