Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34FE01DE2A0
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733938555; cv=none; b=XbR/d6g8hN5yl/L/3Y/0eJl3BLTU5GEyfm+3eMiiuYrpJRUSb2g2WF6i7jeB68wM2sqLUzy7F4hQoQSOJ165GH3FlHOQpWI6AtDFaucGOuYIsmquALpAq+sZQZRO6hCcY5sx2byM2NYP+oKmhpbDaahiUayvmZoPn+cx/lswTDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733938555; c=relaxed/simple;
	bh=f0b3QKhmW1j/3Fh/cceg6kPbEFXzjoCM34WreDJrZfw=;
	h=To:Subject:From:Message-Id:Date; b=cRkMtCS7tus7lxuse7F2+U2kAGJgmiHy6mItiMDRX59UQMkhoQ5vsQ6xYzhtcJyh9dk25QU3sK/t/VK8fgBlAVwhaFmRdve0K2LTgvAGcNQOrzzx3FD7Ac8z39Rb7YNSHlQLnRp6Ariq2q00JnkTDgMZjSKp115jYAY2Oi/iodE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nWBBDzO5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nWBBDzO5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A930CC4CED4
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733938553;
	bh=f0b3QKhmW1j/3Fh/cceg6kPbEFXzjoCM34WreDJrZfw=;
	h=To:Subject:From:Date:From;
	b=nWBBDzO5yMluRwlpn8m9r9mukID08c92a3XvC0dKMQO1cUZNeTPXdpdthtOTN3ma4
	 y4X3dLIPC15IJDkhgEyVDZQ9z8zaHJ5/iZ/E4pQUvJAxoO/aULSOPjXR8XBWO+/q9a
	 Rau3Wyby6eBdcqSHNZuknIuq8H26M4vvhuHUQMXOvkKFQd08qwtmZ9pTRLZCnnuvvA
	 vCzBKtpkasRqi4hfeyKblwP/uI6pbEd0usKGgZWR+jcMGhMgOOpoogaaMWIcs+B0DJ
	 8X/Q8xSLtBnswuD1SjRWsBrw9Ii06+Rb3h7dR0ef1VDgoipo394Pgw6SVypGuvLKgc
	 xif4JI57uCeBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92210E7717D
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173393855358.15099.17003312241812867025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 886a5020ad379ebff7322b124c4a1529cfe75a7ac6388267eedb43baf25736ac
Date: Wed, 11 Dec 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733938553
