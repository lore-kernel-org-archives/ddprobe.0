Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 246A9193439
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727960154; cv=none; b=ZkIKt5Zo0jQn+L301bkVw43A3xt1FTi5dYcao45YW6f5j2i3RtjJqYPPPy9v3D50orxFOGN6iUWH99bSB+wpGiV9QqDArpF9gXVYFsdR0PF1kY1ZggvOofF7Pph7zBXszCLbPxssVIN7rSLOlSJiEL1lcHh4TP8XEx3BMuZxeuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727960154; c=relaxed/simple;
	bh=7xmP7Q+Xj7u1P0Poz9sLEGGEMQu38P7ayKxq4hyEp48=;
	h=To:Subject:From:Message-Id:Date; b=stjUGtt0PPPr1PDXfFOpREH7Aop+KOmCEyJU+O+4NE1PdoI3aCz9A6/JpHizAYvYQsDOteVy7tp2PzN2f9d2o9uS9wyTv0AKRLcmkMLrIOH4pJtbTSfQyhmPu17LWOZta3XXPAPeTc2T/5y5qqkEfmcmib0xtQXgzPe+VO9eEaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MUDfPcV8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MUDfPcV8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B74EBC4CEC5
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727960153;
	bh=7xmP7Q+Xj7u1P0Poz9sLEGGEMQu38P7ayKxq4hyEp48=;
	h=To:Subject:From:Date:From;
	b=MUDfPcV88TJ4FB29fV/fEEAaYbH8vMR9DUoKw0Gd5nafpZ6H9xHN84UT2A2rTOHYq
	 KUwBLFFcdQAnXnLpsQ2ktyHt6S3IytTzdSSneJkDkm7tpCMwVxiBfkGziNZsNpNE/e
	 aiJXopRTeI/JMUDsvRfVLXsA5dwVZWohry5T3rKVq61oXf2AuZg5IwUaAdxePv/VWw
	 PanI5jwjEDdVrb7DhoMeXNHAWBMqBPxtVAMy5xIZsKkW3pfD7Qqazp/RseZpz2uj24
	 TbBKZ25IXvdhrTn9gpCFr3KCTBJ0lzV+DXIH2R/cfXnJiWR8nxQ/Uk5nUJcDQ0kAlq
	 9cgVvtxMRCihQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BAB9CF34A4
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172796015362.7996.9813686467096466863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1565fea3797cf8f22c06cab316974bdc94e5d91f31fa5c99b090cbf996dc5a5d
Date: Thu, 03 Oct 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727960153
