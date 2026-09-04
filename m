Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AA301A683C
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788483634; cv=none; b=S+M+9048qNt0lwwsQUtw8cNatS9SEOx6fgRSicM8gFEMBKNCCBagrBtzOskS9veUXhxOYmK8fo2al1c2qADbiYFAy6ZtKWVesvNkn4rTzkT6q716TLljSXg0fOctsUons6BLSRcpF2CJ5+zUAVtz5VwW0CmUfxtux1zCdbvDdT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788483634; c=relaxed/simple;
	bh=tgqxt8BBuvH5KMZRYKtfNVuxRSKSl2ChJY4E4XNQ+Zs=;
	h=To:Subject:From:Message-Id:Date; b=hg+PJQmgZsQT7fwtQPZYsMHd2ptaxLZjRl1QrLezo2A+bj/6ptNbJUtR540ZdhpQrFTFJBdvHStDDZt5cMBxsYJjO0vKuf133LL8ZaY0um+EH87cmCPPCttOzX315Vnj/Bli+tYs+ZFUJN8k8xnWaoe6t6mpv/3Gp81yDHtvjxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SmASRuGi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SmASRuGi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5EA8C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788483633;
	bh=tgqxt8BBuvH5KMZRYKtfNVuxRSKSl2ChJY4E4XNQ+Zs=;
	h=To:Subject:From:Date:From;
	b=SmASRuGi3X3KUhzzQ3K80cnWEJ/ZdPxRM6kvjRmw5E0HABpKySvnIJZgcJMrrgTQl
	 ABtqhGoJ6xiugcmskFYBh7ITjc0K94X+vO5iFX1ZLZT+Ulmi8p2aP7aQjdqPXr/weh
	 FU4e/ufOgivG4kocoGNpraL4Tledi08tEh506KAxtUOefuW0N3QbnMhsgrFLXsQtB/
	 AZm+mluD2wq6hvC6ca7SVQxLFlXetmmBsuWQAEQZ26Uwwk/ory9b4HnKH7zhqQumAE
	 Zhrr1sYD5OAMrzDN/3VZTQmIdAc/y6lodYYd5SCHLwnBcvssFoS2q7l6pz+/5SPcv2
	 DOGUD9lFsr88A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B10B6C61DD3
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178848363371.22213.5258556466493791745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3938c51ff7aac4cd59899333d58ad2605f70ed0d1f5a4dd820d3b4516b9bbc9e
Date: Fri, 04 Sep 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788483633
