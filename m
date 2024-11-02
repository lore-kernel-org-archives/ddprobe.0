Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF482E40E
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 10:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730543755; cv=none; b=HR9/vxjOPCXY7c6eVrdIUqzEBtqqSYuOhZIHw+3kevrvduT+fTUELk6ErmaVvGO+qqVlFrqsQdSEFa1r+kB90/J1BmmZ8m4ZmotNuANjCDS/3BiNhxXBtaCd0tYra67K8kMNeKp6Rabr9btdyx+OVABGF+Zig0h4Kqe/EupDR0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730543755; c=relaxed/simple;
	bh=IGKSEEGHcdgdkc3PrRxbFAL/eMQvQPHoJju8nQTljWw=;
	h=To:Subject:From:Message-Id:Date; b=VpjxE29cWMqikQpPFV7Y54bZ2T0SCnEs3eQp3N6iyKEItkAJmUCJigc3myGY+PM+pHcHLKJ14E7n+hyytAC9mGKEP2IVO0WaqT/ez21OB8sCSCcyhv+mfA0KbthD9BObExsVhmtqQa8mBZljQszlRx8/YBYxLK7wdH4HNxZqG54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ADAcWj7v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ADAcWj7v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8CC8C4CEC3
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730543754;
	bh=IGKSEEGHcdgdkc3PrRxbFAL/eMQvQPHoJju8nQTljWw=;
	h=To:Subject:From:Date:From;
	b=ADAcWj7vCbUuX2V9CD2GP8UFGq/ZhJQSgx6TXiESgTKyRebWAQzHxhzDuXqD/fwMn
	 X3IfGsfavAALXprfWvYpXS9JHkV5z4SXYPyKtKCk77KO4uQhOdMw64vtqitwRitdaS
	 SwYnI/QsNSO9+WNCliM1PO3jpDIbpA0JmTYwBNuoC2IRBMcPdkPO7tIO/G/Pa9omeN
	 ioi34OmY9IZ3h3PBwcT14H+BEA/+FIOn9KjRVKyIvi9bOIPU0On6nEMitR4rC/c4e0
	 2soFwsatmn94l1SekUDmldEjrafM49YQjTgVdRSWxhbk0Toz7qMjy9oWrfMvTwzgv8
	 GSs2dqo0v2fxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96530E677F5
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173054375359.6720.13501423321453499336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ab16c93061379c80f5495cbddcfa10e926d191a0dd8c099b061dd8d163f8646
Date: Sat, 02 Nov 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730543753
